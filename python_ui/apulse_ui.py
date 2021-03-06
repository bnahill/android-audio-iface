# -*- coding: utf-8 -*-

from apulse_iface import APulseIface, FixedTone, InputConfig
import numpy as np
import sys
import time
from scipy.io import savemat

import matplotlib
matplotlib.use('Qt5Agg')
#matplotlib.rcParams['backend.qt5'] = 'PySide'

from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.backends.backend_qt5agg import NavigationToolbar2QT as NavigationToolbar
from matplotlib.figure import Figure

#from PySide import QtWidgets, QtCore
from PyQt5 import QtGui, QtCore, QtWidgets

import threading


class DataSeries(object):
    def __init__(self, label, data, xunits, yunits, xvalues):
        self.data = data
        self.label = label
        self.xunits = xunits
        self.yunits = yunits
        self.xvalues = xvalues

    def save(self, filename=None):
        if not filename:
            filename = self.label
        savemat(filename, {'x': self.xvalues, 'y': self.data,
                           'xunits': self.xunits, 'yunits': self.yunits})


class PSDSeries(DataSeries):
    def __init__(self, label, data, f1=None, f2=None):
        xvals = np.linspace(0, 8000, 512)
        super(PSDSeries, self).__init__(label, data[:512], "Frequency (Hz)",
                                        "Power (SPL)", xvals)
        self.f1 = f1
        self.f2 = f2

        assert len(data) == 513, "Wrong PSD length"

    def plotExtras(self):
        # Draw 2*f2-f1 region
        pass


class LogPSDSeries(DataSeries):
    def __init__(self, label, data, f1=None, f2=None):
        xvals = np.linspace(0, 8000, 512)
        data = 10.0 * np.log10(0.7071 * data)
        super(LogPSDSeries, self).__init__(label, data[:512], "Frequency (Hz)",
                                           "Power (dB SPL)", xvals)

        self.f1 = f1
        self.f2 = f2

        assert len(data) == 513, "Wrong PSD length"

    def plotExtras(self):
        # Draw 2*f2-f1 region
        print("APPLES")
        pass


class TimeSeries(DataSeries):
    def __init__(self, label, data):
        xvals = np.linspace(0, 512.0 / 16000.0, 1024)
        super(TimeSeries, self).__init__(label, data, "t (ms)",
                                         "Amplitude", xvals)
        assert len(data) == 1024, "Wrong Average length"


class PlotFigure(object):
    signals = []
    canvas = None

    def __init__(self, parent=None):
        self.fig = Figure(figsize=(600, 600),
                          dpi=72,
                          facecolor=(1, 1, 1),
                          edgecolor=(0, 0, 0))
        self.canvas = FigureCanvas(self.fig)

    def addSeries(self, series):
        self.rmSeries(series)
        # Add a new series
        if self.signals:
            if((self.signals[0].xunits == series.xunits) and
               (self.signals[0].yunits == series.yunits)):
                self.signals.append(series)
            else:
                self.signals = [series]
        else:
            self.signals = [series]

    def rmSeries(self, series):
        if self.signals:
            try:
                self.signals.remove(series)
            except:
                pass

    def clearSeries(self):
        self.signals = []

    def draw(self):
        self.ax = self.fig.add_subplot(1, 1, 1)
        self.ax.cla()
        for s in self.signals:
            self.ax.plot(s.xvalues, s.data, label=s.label)
        if len(self.signals):
            self.ax.set_xlabel(self.signals[0].xunits)
            self.ax.set_ylabel(self.signals[0].yunits)

        handles, labels = self.ax.get_legend_handles_labels()
        self.ax.legend(handles[::-1], labels[::-1])
        self.ax.legend(handles, labels)

        try:
            self.plotExtras()
        except:
            pass

        self.canvas.draw()

    def getWidget(self):
        return self.canvas


class SignalListItem(QtWidgets.QListWidgetItem):
    def __init__(self, signal):
        super(SignalListItem, self).__init__(str(signal.label))
        self.signal = signal


class GainSlider(QtWidgets.QWidget):
    def __init__(self, parent=None, label=None):
        super(GainSlider, self).__init__(parent)
        self.layout = QtWidgets.QHBoxLayout(self)
        self.slider = QtWidgets.QSlider(QtCore.Qt.Horizontal, self)
        self.label = QtWidgets.QLineEdit(" 0.0 ", self)
        self.label.setFixedWidth(42)
        self.setLayout(self.layout)

        if label:
            self.title = QtWidgets.QLabel(str(label))
            self.layout.addWidget(self.title)

        self.layout.addWidget(self.slider)
        self.layout.addWidget(self.label)

        self.slider.setMinimum(-100)
        self.slider.setMaximum(100)
        self.slider.setTickInterval(10)
        self.slider.setValue(0)

        def setLabel(val):
            self.label.setText("{:5.2f}".format(float(val) / 100.0))

        def setSlider(val):
            try:
                self.slider.setValue(int(float(val) * 100))
            except:
                pass

        self.slider.sliderMoved.connect(setLabel)
        self.label.textChanged.connect(setSlider)

    def getValue(self):
        return float(self.slider.value()) / 100.0


class ButtonPanel(QtWidgets.QFrame):

    def __init__(self, parent=None):
        super(ButtonPanel, self).__init__(parent)
        buttongrid = QtWidgets.QGridLayout(self)

        connbutton = QtWidgets.QPushButton("&Connect", self)
        rstbutton = QtWidgets.QPushButton("&Reset", self)
        statbutton = QtWidgets.QPushButton("&Get Status", self)
        startbutton = QtWidgets.QPushButton("&Start", self)
        calbutton = QtWidgets.QPushButton("&Calibrate", self)
        decalbutton = QtWidgets.QPushButton("&Decalibrate", self)
        label_text = QtWidgets.QLineEdit("auto", self)
        label_label = QtWidgets.QLabel("Label:")
        label_text.editingFinished.connect(self.correct_label_text)
        databutton = QtWidgets.QPushButton("&Get Data", self)

        buttongrid.addWidget(connbutton, 0, 0, 1, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(rstbutton, 0, 2, 1, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(statbutton, 1, 0, 1, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(startbutton, 1, 2, 1, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(calbutton, 2, 0, 1, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(decalbutton, 2, 2, 1, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(label_label, 3, 0, 1, 1, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(label_text, 3, 1, 1, 3, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(databutton, 4, 0, 1, 4, QtCore.Qt.AlignHCenter)

        f_label = QtWidgets.QLabel("f (Hz)")
        t1_label = QtWidgets.QLabel("t1 (ms)")
        t2_label = QtWidgets.QLabel("t2 (ms)")
        db_label = QtWidgets.QLabel("A (dB SPL)")

        f_1 = QtWidgets.QLineEdit("2000", self)
        t1_1 = QtWidgets.QLineEdit("200", self)
        t2_1 = QtWidgets.QLineEdit("8000", self)
        db_1 = QtWidgets.QLineEdit("65.0", self)

        f_2 = QtWidgets.QLineEdit("2440", self)
        t1_2 = QtWidgets.QLineEdit("200", self)
        t2_2 = QtWidgets.QLineEdit("8000", self)
        db_2 = QtWidgets.QLineEdit("55.0", self)

        t1_capture_label = QtWidgets.QLabel("t1 (ms)")
        t2_capture_label = QtWidgets.QLabel("t2 (ms")
        overlap_label = QtWidgets.QLabel("Overlap")
        capture_label = QtWidgets.QLabel("Capture")
        t1_capture = QtWidgets.QLineEdit("300", self)
        t2_capture = QtWidgets.QLineEdit("7500", self)
        overlap = QtWidgets.QLineEdit("256", self)
        src = QtWidgets.QComboBox(self)
        src.addItem("Mic", userData=InputConfig.SRC_MIC)
        src.addItem("Ext", userData=InputConfig.SRC_EXT)
        src.addItem("Mix", userData=InputConfig.SRC_MIX)
        mix_mic = GainSlider(self, "Mic")
        mix_ext = GainSlider(self, "Ext")

        buttongrid.addWidget(f_label, 6, 0, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(t1_label, 6, 1, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(t2_label, 6, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(db_label, 6, 3, QtCore.Qt.AlignHCenter)

        buttongrid.addWidget(f_1, 7, 0)
        buttongrid.addWidget(t1_1, 7, 1)
        buttongrid.addWidget(t2_1, 7, 2)
        buttongrid.addWidget(db_1, 7, 3)

        buttongrid.addWidget(f_2, 8, 0)
        buttongrid.addWidget(t1_2, 8, 1)
        buttongrid.addWidget(t2_2, 8, 2)
        buttongrid.addWidget(db_2, 8, 3)

        buttongrid.addWidget(t1_capture_label, 9, 1, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(t2_capture_label, 9, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(overlap_label, 9, 3, QtCore.Qt.AlignHCenter)

        buttongrid.addWidget(capture_label, 10, 0, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(t1_capture, 10, 1, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(t2_capture, 10, 2, QtCore.Qt.AlignHCenter)
        buttongrid.addWidget(overlap, 10, 3, QtCore.Qt.AlignHCenter)

        buttongrid.addWidget(src, 11, 0)
        buttongrid.addWidget(mix_mic, 11, 1, 1, 3)
        buttongrid.addWidget(mix_ext, 12, 1, 1, 3)

        for i in [f_1, t1_1, t2_1, db_1, f_2, t1_2, t2_2, db_2,
                  t1_capture, t2_capture, db_2]:
            i.setInputMethodHints(QtCore.Qt.ImhFormattedNumbersOnly)

        self.connbutton = connbutton
        self.statbutton = statbutton
        self.rstbutton = rstbutton
        self.startbutton = startbutton
        self.calbutton = calbutton
        self.decalbutton = decalbutton
        self.databutton = databutton
        self.label_text = label_text

        self.t1_capture = t1_capture
        self.t2_capture = t2_capture
        self.overlap = overlap

        self.src = src
        self.mix_mic = mix_mic
        self.mix_ext = mix_ext

        self.tonetext = [
            [f_1, t1_1, t2_1, db_1],
            [f_2, t1_2, t2_2, db_2],
        ]

    def correct_label_text(self):
        if self.label_text.text() == "":
            self.label_text.setText("auto")


class SigCollection(object):

    ST_RESET = 0
    ST_RUNNING = 1
    ST_DONE = 2

    def __init__(self, iface):
        self.sigs = []
        self.iface = iface
        self.failures = 0
        self.state = self.ST_RESET
        self.thread = None

    def __del__(self):
        if self.thread:
            self.thread.join()

    def get_waveforms(self, cb):
        """ Attempt to get a waveform"""

        failures = 0
        while failures < 20:
            time.sleep(0.05)
            try:
                sig = self.iface.receive_waveform()
                if sig is not None:
                    self.sigs.append(sig)
                else:
                    time.sleep(0.1)
                    sig = self.iface.receive_waveform()
                    if sig is None:
                        failures += 1
                    else:
                        self.sigs.append(sig)
            except:
                time.sleep(0.1)

        print((len(self.sigs)))
        cb(self.sigs)

    def start_collection(self, cb):
        """ Start collecting data
        This will return once either a frame is received or timeout occurs

        Returns the boolean success of the operation
        """
        self.thread = threading.Thread(target=self.get_waveforms, args=(cb,))
        self.thread.start()

    def __len__(self):
        return len(self.sigs)


class UIWindow(QtWidgets.QMainWindow):
    iface = None
    sigcol = None

    def __init__(self):
        super(UIWindow, self).__init__()
        self.iface = APulseIface()
        self.setupUI()

    def setupUI(self):
        self.statusBar().showMessage("Started!")
        self.setGeometry(0, 0, 800, 600)
        self.setWindowTitle("APulse UI")

        mainwidget = QtWidgets.QWidget(self)
        self.setCentralWidget(mainwidget)
        hlayout = QtWidgets.QHBoxLayout(mainwidget)
        mainwidget.setLayout(hlayout)
        lframe = QtWidgets.QFrame(self)
        rframe = QtWidgets.QFrame(self)
        hlayout.addWidget(lframe)
        hlayout.addWidget(rframe)
        lframe.setFixedWidth(325)
        rframe.setSizePolicy(QtWidgets.QSizePolicy.Expanding,
                             QtWidgets.QSizePolicy.Expanding)

        leftlayout = QtWidgets.QVBoxLayout(lframe)
        rightlayout = QtWidgets.QVBoxLayout(rframe)
        lframe.setLayout(leftlayout)
        rframe.setLayout(rightlayout)

        # buttonpanel = QtWidgets.QFrame(lframe)
        buttonpanel = ButtonPanel(lframe)

        listpanel = QtWidgets.QFrame(lframe)
        listlist = QtWidgets.QListWidget(listpanel)
        listlist.itemSelectionChanged.connect(self.listchanged)
        listlayout = QtWidgets.QVBoxLayout(listpanel)
        listlayout.addWidget(listlist)

        leftlayout.addWidget(buttonpanel)
        leftlayout.addWidget(listpanel)

        # Frame that will contain figures


        mplpanel = QtWidgets.QFrame(rframe)
        mpllayout = QtWidgets.QVBoxLayout(mplpanel)
        

        plotpanel = QtWidgets.QFrame(rframe)
        plotpanel.setFrameStyle(QtCore.Qt.SolidLine)
        plotpanel.setSizePolicy(QtWidgets.QSizePolicy.Expanding,
                                QtWidgets.QSizePolicy.Expanding)

        self.fig = PlotFigure()
        figlayout = QtWidgets.QHBoxLayout(plotpanel)
        plotpanel.setLayout(figlayout)
        figlayout.addWidget(self.fig.getWidget())

        self.datalist = listlist

        mplnavbar = NavigationToolbar(self.fig.canvas, mplpanel)
        mpllayout.addWidget(plotpanel)
        mpllayout.addWidget(mplnavbar)

        mbfont = QtGui.QFont("Monospace", 10)
        mbfont.setStyleHint(mbfont.TypeWriter)
        messagebox = QtWidgets.QTextEdit(rframe)
        messagebox.setFixedHeight(200)
        messagebox.setCurrentFont(mbfont)

        rightlayout.addWidget(mplpanel)
        rightlayout.addWidget(messagebox)

        itemframe = QtWidgets.QFrame(lframe)
        itemlayout = QtWidgets.QGridLayout(itemframe)
        itemframe.setLayout(itemlayout)
        clearbutton = QtWidgets.QPushButton("&Clear", itemframe)
        clearallbutton = QtWidgets.QPushButton("&Clear All", itemframe)
        deletebutton = QtWidgets.QPushButton("&Delete", itemframe)
        deleteallbutton = QtWidgets.QPushButton("&Delete All", itemframe)
        savebutton = QtWidgets.QPushButton("&Save", itemframe)
        filename = QtWidgets.QLineEdit(itemframe)
        itemlayout.addWidget(clearbutton, 0, 0)
        itemlayout.addWidget(clearallbutton, 0, 1)
        itemlayout.addWidget(deletebutton, 1, 0)
        itemlayout.addWidget(deleteallbutton, 1, 1)
        itemlayout.addWidget(savebutton, 2, 0)
        itemlayout.addWidget(filename, 2, 1)
        leftlayout.addWidget(itemframe)

        clearbutton.clicked.connect(self.clearhandler)
        clearallbutton.clicked.connect(self.clearallhandler)
        deletebutton.clicked.connect(self.deletehandler)
        deleteallbutton.clicked.connect(self.deleteallhandler)
        listlist.itemDoubleClicked.connect(self.addsignalhandler)
        buttonpanel.calbutton.clicked.connect(self.calibrate)
        buttonpanel.decalbutton.clicked.connect(self.decalibrate)
        savebutton.clicked.connect(self.savehandler)

        self.filename = filename

        self.plotpanel = plotpanel
        self.messagebox = messagebox



        buttonpanel.rstbutton.clicked.connect(self.reset)
        buttonpanel.statbutton.clicked.connect(self.getstat)
        buttonpanel.startbutton.clicked.connect(self.start)
        buttonpanel.databutton.clicked.connect(self.get_data)

        self.buttonpanel = buttonpanel

        self.disconnect()

        self.show()

    def reset(self):
        self.sigcol = None
        self.iface.reset()
        self.messagebox.setText(str(self.iface.get_status()))

    def getstat(self):
        self.messagebox.setText(str(self.iface.get_status()))

    def add_waveform_set(self, sigs):
        savemat("waves", {'waves': sigs})
        fft = np.zeros(257, dtype=np.float128)
        for s in sigs:
            fft += np.abs(np.fft.rfft(s) ** 2)
        fft /= len(sigs)
        fft /= 2 ** 6  # Compensate for scaling applied in fixed FFT

        print(fft)
        #pylab.plot(fft)
        #pylab.show()

        t = time.localtime()
        d = "{}.{}.{}.{}.{}".format(t.tm_mon, t.tm_mday, t.tm_hour,
                                    t.tm_min, t.tm_sec)
        
        self.datalist.addItem(SignalListItem(LogPSDSeries("RAW " + d, fft)))
        print(("Got {} signals!".format(len(sigs))))

    def start(self):
        self.sigcol = SigCollection(self.iface)

        tones = list()

        try:
            for i in range(2):
                tones.append(
                    FixedTone(
                        int(self.buttonpanel.tonetext[i][0].displayText()),
                        int(self.buttonpanel.tonetext[i][1].displayText()),
                        int(self.buttonpanel.tonetext[i][2].displayText()),
                        float(self.buttonpanel.tonetext[i][3].displayText()),
                        i))
            self.iface.config_tones(tones)
        except Exception as e:
            self.statusBar().showMessage("Please provide numeric tone values: "
                                         "%s" % e)
            print(e)
            return

        mix_mic = self.buttonpanel.mix_mic.getValue()
        mix_ext = self.buttonpanel.mix_ext.getValue()
        src = self.buttonpanel.src.itemData(
            self.buttonpanel.src.currentIndex())

        try:
            print((mix_mic, mix_ext, src,))
            self.iface.config_capture(
                int(self.buttonpanel.t1_capture.displayText()),
                int(self.buttonpanel.t2_capture.displayText()),
                int(self.buttonpanel.overlap.displayText()),
                src, mix_mic, mix_ext)
        except Exception as e:
            self.statusBar().showMessage(
                "Please provide numeric capture values")
            print((e.message))
            return
        self.iface.start()
        time.sleep(0.1)
        self.getstat()

        # ENABLE TO COLLECT RAW WAVEFORMS
        # self.sigcol.start_collection(self.add_waveform_set)

    def get_data(self):
        if not self.iface.get_status().is_done():
            self.statusBar().showMessage("No completed test available")
            return

        (psd, avg) = self.iface.get_data()

        t = time.localtime()
        d = "{}.{}.{}.{}.{}".format(t.tm_mon, t.tm_mday, t.tm_hour,
                                    t.tm_min, t.tm_sec)

        text = self.buttonpanel.label_text.text()
        if text == "auto":
            text = d

        self.datalist.addItem(SignalListItem(LogPSDSeries("LogPSD " + text, psd)))
        #print("Deliberately only presenting LogPSD option")
        self.datalist.addItem(SignalListItem(PSDSeries("PSD " + text, psd)))
        #self.datalist.addItem(SignalListItem(TimeSeries("Avg " + d, avg)))

    def disconnect(self):
        self.iface.disconnect()
        self.buttonpanel.connbutton.setText("Connect")
        self.buttonpanel.connbutton.clicked.connect(self.connect)
        for b in [self.buttonpanel.statbutton, self.buttonpanel.rstbutton,
            self.buttonpanel.startbutton, self.buttonpanel.calbutton,
            self.buttonpanel.decalbutton, self.buttonpanel.databutton]:
            b.setEnabled(False)

    def connect(self):
        try:
            self.iface.connect()
            self.iface.reset()
            self.buttonpanel.connbutton.setText("Disconnect")
            self.buttonpanel.connbutton.clicked.connect(self.disconnect)
            for b in [self.buttonpanel.statbutton, self.buttonpanel.rstbutton,
                self.buttonpanel.startbutton, self.buttonpanel.calbutton,
                self.buttonpanel.decalbutton, self.buttonpanel.databutton]:
                b.setEnabled(True)
        except Exception as e:
            self.statusBar().showMessage("Couldn't connect...")
            print(e)

    def calibrate(self):
        self.iface.calibrate()
        self.statusBar().showMessage("Device calibrating...")

    def decalibrate(self):
        self.iface.decalibrate()
        self.statusBar().showMessage("Device calibration cleared")

    def clearhandler(self):
        for i in self.datalist.selectedItems():
            self.fig.rmSeries(i.signal)
        self.fig.draw()

    def clearallhandler(self):
        for i in range(self.datalist.count()):
            self.fig.rmSeries(self.datalist.item(i).signal)
        self.fig.draw()

    def deletehandler(self):
        self.clearhandler()
        for i in self.datalist.selectedItems():
            row = self.datalist.row(i)
            self.datalist.takeItem(row)

    def deleteallhandler(self):
        self.clearallhandler()
        for i in range(self.datalist.count()):
            self.datalist.takeItem(0)

    def addsignalhandler(self, item):
        self.fig.addSeries(item.signal)
        self.fig.draw()

    def savehandler(self):
        items = self.datalist.selectedItems()
        if len(items) != 1:
            return
        i = items[0]
        sig = self.datalist.item(self.datalist.row(i)).signal
        sig.save(self.filename.text())
        self.statusBar().showMessage("File {} saved.".format(
            self.filename.text()))

    def listchanged(self):
        items = self.datalist.selectedItems()
        if len(items) != 1:
            self.filename.setText("")
            return
        item = items[0]
        self.filename.setText(str(item.signal.label))


if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    a = UIWindow()
    sys.exit(app.exec_())
