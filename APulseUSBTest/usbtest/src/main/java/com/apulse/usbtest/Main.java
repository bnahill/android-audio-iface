package com.apulse.usbtest;

import android.app.Activity;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.TextView;


public class Main extends Activity {
    private final BroadcastReceiver mUsbReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.d("musbreceiver", "activity received broadcast");
            if (USBIface.ACTION_USB_PERMISSION.equals(action)) {

            }
        }

    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        if (savedInstanceState == null) {
            getFragmentManager().beginTransaction()
                    .add(R.id.container, new PlaceholderFragment())
                    .commit();
        }


        textview = (TextView) findViewById(R.id.textView);
        toggle_button = (Switch) findViewById(R.id.switch1);

        app_out = (EditText) findViewById(R.id.editText3);

        reset_button = (Button)findViewById(R.id.button5);
        status_button = (Button)findViewById(R.id.button6);
        start_button = (Button)findViewById(R.id.button7);
        getdata_button = (Button)findViewById(R.id.button8);


        status_button.setEnabled(false);
        getdata_button.setEnabled(false);
        reset_button.setEnabled(false);
        start_button.setEnabled(false);

        apulse = new APulseIface(this);


        app_out.setKeyListener(null);

        //IntentFilter filter = new IntentFilter(ACTION_USB_PERMISSION);
        //registerReceiver(mUsbReceiver, filter);
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    /**
     * A placeholder fragment containing a simple view.
     */
    public static class PlaceholderFragment extends Fragment {

        public PlaceholderFragment() {
        }

        @Override
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                Bundle savedInstanceState) {
            View rootView = inflater.inflate(R.layout.fragment_main, container, false);
            return rootView;
        }
    }

    public void connectToggleButton(View view){
        final Switch sw = (Switch)view;
        int ret;
        app_out.setText("");
        if(sw.isChecked()){
            textview.setText("Attempting to connect...");
            ret = apulse.usb.connect(new USBIface.USBConnHandler() {
                public void handleConnected(){
                    textview.setText("Connected successfully!");
                    status_button.setEnabled(true);
                    getdata_button.setEnabled(true);
                    reset_button.setEnabled(true);
                    start_button.setEnabled(true);
                }
                public void handleError(){
                    textview.setText("Error with permissions");
                    sw.setChecked(false);

                    status_button.setEnabled(false);
                    getdata_button.setEnabled(false);
                    reset_button.setEnabled(false);
                    start_button.setEnabled(false);
                }
            });

            if(ret != 0){
                textview.setText(String.format("Error connecting: %d ",ret) + apulse.usb.error);
                sw.setChecked(false);
            }
        } else {
            // Ignore for now
            textview.setText("Disconnected!");
        }
    }

    public void resetButton(View view){
        apulse.reset();
    }

    public void statusButton(View view){
        APulseIface.APulseStatus status = apulse.getStatus();

        String out = String.format(
                "Version:       %d\n" +
                "Test state:    %s\n" +
                "WaveGen state: %s\n" +
                "Input state:   %s\n" +
                "Error:         %d",
                status.version,
                status.testStateString(),
                status.wgStateString(),
                status.inStateString(),
                status.err_code);
        app_out.setText(out);
    }

    public void startButton(View view){
        APulseIface.ToneConfig[] tones = new APulseIface.ToneConfig[2];

        try {
            short f = Short.decode(((TextView) findViewById(R.id.f_1)).getText().toString());
            short t1 = Short.decode(((TextView) findViewById(R.id.t1_1)).getText().toString());
            short t2 = Short.decode(((TextView) findViewById(R.id.t2_1)).getText().toString());
            short db = Short.decode(((TextView) findViewById(R.id.db_1)).getText().toString());

            tones[0] = new APulseIface.FixedTone(f, t1, t2, (double)db, 0);

            f = Short.decode(((TextView) findViewById(R.id.f_2)).getText().toString());
            t1 = Short.decode(((TextView) findViewById(R.id.t1_2)).getText().toString());
            t2 = Short.decode(((TextView) findViewById(R.id.t2_2)).getText().toString());
            db = Short.decode(((TextView) findViewById(R.id.db_2)).getText().toString());

            tones[1] = new APulseIface.FixedTone(f, t1, t2, (double)db, 1);
        } catch (NullPointerException e) {
            app_out.setText("Error with arguments");
            return;
        }

        apulse.configCapture(2000, 256, 200);

        apulse.configTones(tones);

        apulse.start();
    }

    public void getdataButton(View view){
        if(apulse.getStatus().test_state == APulseIface.APulseStatus.TEST_DONE){
            APulseIface.APulseData data = apulse.getData();
            double[] psd = data.getPSD();
            double[] average = data.getAverage();
            String out = "";
            for(int i = 0; i < psd.length; i++){
                double logd = (psd[i] == 0) ? -Double.NEGATIVE_INFINITY : Math.log10(psd[i]);

                out += String.format("%d:\t%.10f\n",(int)(((double)i)*31.25), logd);
            }
            out = "";
            for(int i = 0; i < average.length; i++){
                out += String.format("%.10f\n", average[i]);
            }
            app_out.setText(out);
        } else {
            app_out.setText("Data not ready...");
        }
    }

    protected Button reset_button;
    protected Button status_button;
    protected Button start_button;
    protected Button getdata_button;


    protected TextView textview;

    protected EditText app_out;

    protected Switch toggle_button;

    protected APulseIface apulse;
}
