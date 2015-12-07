#include <input_dsp.h>

InputDSP::coeffFractional InputDSP::Decimator::biquad_coeffs[] = {
    0.367872027680277824, -0.713896634057164192, 0.353304294869303703,
    -1.898041920736432076, 0.936312768608331680,

    0.367872027680277824, -0.359298091381788254, 0.353304294869303703,
    -1.327612036839127541, 0.876229001209139824,

    0.367872027680277824, -0.719211803749203682, 0.353304294869303703,
    -1.759688029065728188, 0.831335147842764854,

    0.367872027680277824, 0.099177891388535500, 0.353304294869303703,
    -1.438843607902526855, 0.718513110652565956
};


/**
 * Generated coefficients from http://t-filter.appspot.com/fir/index.html
 * Passband 0-6kHz -0.5dB with 1dB ripple (max 0dB)
 * Stopband 8kHz-24kHz 15dB attenuation
 */
// InputDSP::sample_t const InputDSP::decimate_coeffs[decimate_fir_order] = {
// 	-206371169, 232918033, 166081815, 48163641, -121174027, -240290533,
// 	-172723375, 139749183, 612254038, 1040027243, 1212012007, 1040027243,
// 	612254038, 139749183, -172723375, -240290533, -121174027, 48163641,
// 	166081815, 232918033, -206371169
// };

//InputDSP::sample_t const InputDSP::decimate_coeffs[decimate_fir_order] = {1.0};


InputDSP::sampleFractional const InputDSP::Decimator::decimate_coeffs[decimate_fir_order] = {
	0.04300687444857404,
	-0.018316535246320275,
	-0.04279097712851117,
	-0.05419721797427074,
	-0.026381046923385217,
	0.048819476840206086,
	0.15138707419084213,
	0.24052665493662193,
	0.2758268944131498,
	0.24052665493662193,
	0.15138707419084213,
	0.048819476840206086,
	-0.026381046923385217,
	-0.05419721797427074,
	-0.04279097712851117,
	-0.018316535246320275,
	0.04300687444857404
};

// Bandpass ws0 = [0,200Hz]*-20dB, wp0 = [
// InputDSP::sample_t const InputDSP::decimate_coeffs[decimate_fir_order] = {
// 	-0.02435313838961002, -0.0220241968035626, -0.028160178296642625,
// 	-0.033992432830340244, -0.03934061821690012, -0.04166000024215076,
// 	-0.03654262539112184, -0.02191921866926793, -0.0025725540727438248,
// 	0.009584734164944177, 0.002000557692349713, -0.027870634434669937,
// 	-0.06561824539362501, -0.08373659608090302, -0.05655917114251735,
// 	0.02181442068737953, 0.12876507320258662, 0.2212737435328349,
// 	0.2578064564607543, 0.2212737435328349, 0.12876507320258662,
// 	0.02181442068737953, -0.05655917114251735, -0.08373659608090302,
// 	-0.06561824539362501, -0.027870634434669937, 0.002000557692349713,
// 	0.009584734164944177, -0.0025725540727438248, -0.02191921866926793,
// 	-0.03654262539112184, -0.04166000024215076, -0.03934061821690012,
// 	-0.033992432830340244, -0.028160178296642625, -0.0220241968035626,
// 	-0.02435313838961002
// };

// 41
//InputDSP::sample_t const InputDSP::decimate_coeffs[decimate_fir_order] = {
//	-29719891, -22214914, -4305276, 28510937, 55098416, 51210097, 10347956,
//	-44183282, -69791987, -35719183, 46385596, 119099633, 113845418, 5597554,
//	-150985522, -237046029, -136950297, 180834943, 623954165, 1010548673,
//	1163721112, 1010548673, 623954165, 180834943, -136950297, -237046029,
//	-150985522, 5597554, 113845418, 119099633, 46385596, -35719183, -69791987,
//	-44183282, 10347956, 51210097, 55098416, 28510937, -4305276, -22214914,
//	-29719891
//};

// Nuttall
InputDSP::sampleFractional const InputDSP::hamming_window[InputDSP::transform_len] = {
        0.0003628         ,  0.0003635271527473,  0.0003657092047395,
        0.0003693479372153,  0.000374446318861 ,  0.000381008505744 ,
        0.0003890398412195,  0.0003985468558087,  0.0004095372670511,
        0.0004220199793278,  0.0004360050836568,  0.0004515038574592,
        0.0004685287642962,  0.0004870934535756,  0.0005072127602274,
        0.0005289027043479,  0.0005521804908107,  0.0005770645088446,
        0.0006035743315766,  0.0006317307155393,  0.0006615556001414,
        0.0006930721071003,  0.0007263045398351,  0.000761278382819 ,
        0.0007980203008899,  0.0008365581385167,  0.0008769209190216,
        0.0009191388437541,  0.0009632432912181,  0.0010092668161482,
        0.0010572431485341,  0.0011072071925914,  0.0011591950256766,
        0.0012132438971449,  0.0012693922271476,  0.0013276796053691,
        0.0013881467896991,  0.0014508357048388,  0.00151578944084  ,
        0.0015830522515726,  0.0016526695531198,  0.0017246879220986,
        0.0017991550939023,  0.0018761199608627,  0.0019556325703311,
        0.0020377441226725,  0.0021225069691741,  0.0022099746098619,
        0.0023002016912258,  0.0023932440038482,  0.0024891584799348,
        0.0025880031907442,  0.0026898373439136,  0.0027947212806784,
        0.0029027164729809,  0.0030138855204687,  0.0031282921473757,
        0.0032460011992863,  0.003367078639778 ,  0.0034915915469397,
        0.0036196081097631,  0.0037511976244038,  0.0038864304903093,
        0.0040253782062114,  0.0041681133659781,  0.0043147096543243,
        0.0044652418423769,  0.0046197857830912,  0.0047784184065162,
        0.0049412177149047,  0.0051082627776669,  0.0052796337261614,
        0.0054554117483249,  0.0056356790831323,  0.0058205190148888,
        0.0060100158673487,  0.0062042549976571,  0.0064033227901134,
        0.0066073066497525,  0.0068162949957411,  0.0070303772545851,
        0.0072496438531468,  0.0074741862114675,  0.0077040967353931,
        0.0079394688090006,  0.0081803967868204,  0.0084269759858546,
        0.0086793026773856,  0.0089374740785742,  0.0092015883438436,
        0.0094717445560464,  0.0097480427174129,  0.0100305837402767,
        0.010319469437576 ,  0.0106148025131278,  0.0109166865516729,
        0.0112252260086874,  0.0115405261999613,  0.0118626932909391,
        0.0121918342858219,  0.0125280570164273,  0.0128714701308062,
        0.013222183081614 ,  0.013580306114233 ,  0.013945950254646 ,
        0.014319227297057 ,  0.014700249791259 ,  0.0150891310297454,
        0.0154859850345651,  0.0158909265439174,  0.0163040709984868,
        0.0167255345275158,  0.0171554339346132,  0.0175938866832984,
        0.0180410108822785,  0.0184969252704574,  0.0189617492016775,
        0.0194356026291897,  0.0199186060898537,  0.0204108806880662,
        0.020912548079416 ,  0.0214237304540663,  0.0219445505198623,
        0.0224751314851646,  0.0230155970414075,  0.0235660713453813,
        0.0241266790012391,  0.0246975450422281,  0.0252787949121439,
        0.025870554446509 ,  0.0264729498534757,  0.0270861076944526,
        0.0277101548644559,  0.0283452185721852,  0.0289914263198251,
        0.0296489058825726,  0.0303177852878903,  0.0309981927944886,
        0.0316902568710346,  0.0323941061745913,  0.0331098695287872,
        0.0338376759017168,  0.0345776543835751,  0.0353299341640257,
        0.0360946445093056,  0.0368719147390668,  0.037661874202958 ,
        0.0384646522569471,  0.0392803782393871,  0.0401091814468278,
        0.0409511911095738,  0.0418065363669935,  0.0426753462425806,
        0.0435577496187689,  0.0444538752115059,  0.0453638515445863,
        0.0462878069237488,  0.0472258694105382,  0.0481781667959376,
        0.0491448265737727,  0.0501259759138915,  0.0511217416351238,
        0.0521322501780227,  0.0531576275773931,  0.05419799943461  ,
        0.0552534908897307,  0.0563242265934055,  0.0574103306785895,
        0.0585119267320621,  0.0596291377657562,  0.0607620861879022,
        0.0619108937739926,  0.0630756816375697,  0.0642565702008433,
        0.0654536791651416,  0.0666671274812004,  0.0678970333192978,
        0.0691435140392359,  0.0704066861601784,  0.0716866653303467,
        0.0729835662965818,  0.0742975028737765,  0.0756285879141846,
        0.0769769332766108,  0.0783426497954906,  0.0797258472498623,
        0.0811266343322399,  0.0825451186173924,  0.0839814065310343,
        0.0854356033184363,  0.0869078130129599,  0.0883981384045243,
        0.0899066810080115,  0.0914335410316152,  0.0929788173451438,
        0.0945426074482784,  0.0961250074387997,  0.097726111980785 ,
        0.0993460142727852,  0.1009848060159887,  0.1026425773823794,
        0.1043194169828947,  0.1060154118355935,  0.1077306473338383,
        0.109465207214503 ,  0.1112191735262093,  0.1129926265976031,
        0.1147856450056775,  0.1165983055441481,  0.1184306831918918,
        0.1202828510814547,  0.1221548804676371,  0.124046840696165 ,
        0.1259587991724533,  0.1278908213304732,  0.1298429706017266,
        0.1318153083843402,  0.1338078940122841,  0.1358207847247256,
        0.1378540356355251,  0.1399076997028814,  0.1419818276991384,
        0.1440764681807568,  0.1461916674584622,  0.148327469567578 ,
        0.1504839162385487,  0.152661046867666 ,  0.1548588984880032,
        0.1570775057405668,  0.1593169008456751,  0.1615771135745709,
        0.1638581712212764,  0.1661600985747017,  0.1684829178910105,
        0.1708266488662563,  0.1731913086092944,  0.1755769116149791,
        0.1779834697376554,  0.1804109921649515,  0.1828594853918837,
        0.1853289531952778,  0.18781939660852  ,  0.1903308138966422,
        0.192863200531751 ,  0.1954165491688103,  0.1979908496217825,
        0.20058608884014  ,  0.2032022508857524,  0.205839316910159 ,
        0.2084972651322354,  0.2111760708162597,  0.2138757062503881,
        0.2165961407255491,  0.2193373405147609,  0.2220992688528827,
        0.2248818859168067,  0.227685148806097 ,  0.2305090115240871,
        0.2333534249594382,  0.2362183368681713,  0.2391036918561761,
        0.2420094313622062,  0.2449354936413682,  0.2478818137491115,
        0.2508483235257242,  0.253834951581346 ,  0.2568416232815007,
        0.2598682607331591,  0.2629147827713359,  0.2659811049462294,
        0.2690671395109099,  0.2721727954095628,  0.2752979782662943,
        0.2784425903745036,  0.2816065306868306,  0.2847896948056823,
        0.2879919749743473,  0.2912132600687002,  0.2944534355895051,
        0.297712383655322 ,  0.3009899829960223,  0.3042861089469182,
        0.3076006334435119,  0.3109334250168697,  0.3142843487896245,
        0.3176532664726149,  0.3210400363621617,  0.3244445133379891,
        0.3278665488617946,  0.3313059909764697,  0.3347626843059809,
        0.3382364700559075,  0.3417271860146477,  0.345234666555291 ,
        0.3487587426381637,  0.3522992418140502,  0.3558559882280924,
        0.359428802624372 ,  0.3630175023511782,  0.3666219013669611,
        0.3702418102469791,  0.3738770361906363,  0.377527383029518 ,
        0.3811926512361217,  0.3848726379332893,  0.3885671369043409,
        0.3922759386039104,  0.3959988301694884,  0.3997355954336697,
        0.4034860149371078,  0.4072498659421807,  0.4110269224473621,
        0.4148169552023061,  0.4186197317236406,  0.4224350163114721,
        0.4262625700666022,  0.4301021509084541,  0.4339535135937099,
        0.4378164097356617,  0.4416905878242666,  0.4455757932469174,
        0.4494717683099176,  0.4533782522606645,  0.4572949813105401,
        0.4612216886585042,  0.4651581045153927,  0.4691039561289149,
        0.473058967809353 ,  0.4770228609559542,  0.4809953540840234,
        0.484976162852703 ,  0.4889650000934449,  0.4929615758391679,
        0.4969655973540988,  0.5009767691642972,  0.5049947930888495,
        0.5090193682717444,  0.513050191214413 ,  0.5170869558089357,
        0.5211293533719099,  0.5251770726789776,  0.5292297999999999,
        0.5332872191348851,  0.5373490114500554,  0.5414148559155555,
        0.5454844291427899,  0.5495574054228894,  0.5536334567657013,
        0.5577122529393903,  0.5617934615106555,  0.5658767478855466,
        0.5699617753508817,  0.5740482051162517,  0.5781356963566154,
        0.5822239062554667,  0.5863124900485761,  0.5904011010682958,
        0.5944893907884208,  0.598577008869599 ,  0.6026636032052826,
        0.6067488199682171,  0.610832303657449 ,  0.6149136971458595,
        0.6189926417282022,  0.6230687771696437,  0.6271417417547995,
        0.6312111723372501,  0.6352767043895365,  0.6393379720536176,
        0.6433946081917896,  0.6474462444380511,  0.6514925112499061,
        0.6555330379605978,  0.6595674528317634,  0.6635953831064935,
        0.6676164550627965,  0.6716302940674521,  0.6756365246302415,
        0.6796347704585501,  0.6836246545123261,  0.6876057990593937,
        0.6915778257310939,  0.6955403555782635,  0.6994930091275221,
        0.7034354064378682,  0.7073671671575682,  0.7112879105813277,
        0.7151972557077383,  0.7190948212969773,  0.7229802259287635,
        0.7268530880605463,  0.7307130260859208,  0.734559658393256 ,
        0.7383926034245293,  0.7422114797343428,  0.746015906049126 ,
        0.7498055013264988,  0.7535798848147914,  0.757338676112704 ,
        0.7610814952290949,  0.7648079626428903,  0.768517699363092 ,
        0.7722103269888823,  0.7758854677698054,  0.7795427446660184,
        0.7831817814085927,  0.7868022025598634,  0.7904036335737998,
        0.7939857008563982,  0.7975480318260766,  0.8010902549740591,
        0.8046119999247386,  0.8081128974960041,  0.8115925797595229,
        0.8150506801009565,  0.8184868332801084,  0.8219006754909823,
        0.8252918444217401,  0.8286599793145508,  0.8320047210253092,
        0.8353257120832221,  0.8386225967502364,  0.8418950210803087,
        0.8451426329784939,  0.8483650822598475,  0.8515620207081198,
        0.8547331021342406,  0.857877982434569 ,  0.8609963196489065,
        0.8640877740182538,  0.8671520080423007,  0.8701886865366371,
        0.8731974766896702,  0.8761780481192406,  0.8791300729289144,
        0.8820532257639526,  0.8849471838669325,  0.8878116271330178,
        0.8906462381648591,  0.8934507023271162,  0.8962247078005908,
        0.8989679456359499,  0.9016801098070395,  0.9043608972637665,
        0.9070100079845438,  0.9096271450282801,  0.9122120145859118,
        0.9147643260314551,  0.9172837919725743,  0.9197701283006529,
        0.9222230542403527,  0.9246422923986567,  0.9270275688133763,
        0.9293786130011197,  0.9316951580047034,  0.9339769404400026,
        0.9362237005422248,  0.9384351822115996,  0.9406111330584699,
        0.9427513044477813,  0.94485545154295  ,  0.9469233333491093,
        0.9489547127557162,  0.9509493565785145,  0.9529070356008403,
        0.9548275246142638,  0.9567106024585562,  0.9585560520609722,
        0.960363660474842 ,  0.9621332189174587,  0.9638645228072588,
        0.9655573718002799,  0.9672115698258955,  0.9688269251218112,
        0.9704032502683178,  0.9719403622217941,  0.9734380823474501,
        0.9748962364513014,  0.9763146548113727,  0.9776931722081169,
        0.9790316279540475,  0.9803298659225753,  0.9815877345760422,
        0.9828050869929472,  0.9839817808943575,  0.9851176786694983,
        0.9862126474005161,  0.9872665588864084,  0.9882792896661158,
        0.9892507210407706,  0.9901807390950966,  0.9910692347179533,
        0.9919161036220242,  0.9927212463626406,  0.9934845683557374,
        0.9942059798949375,  0.9948853961677615,  0.9955227372709556,
        0.9961179282249392,  0.9966708989873632,  0.997181584465781 ,
        0.9976499245294255,  0.998075864020091 ,  0.9984593527621181,
        0.9988003455714773,  0.9990988022639503,  0.9993546876624079,
        0.9995679716031816,  0.9997386289415267,  0.9998666395561786,
        0.999951988352998 ,  0.9999946652677056,  0.9999946652677056,
        0.999951988352998 ,  0.9998666395561786,  0.9997386289415268,
        0.9995679716031816,  0.9993546876624079,  0.9990988022639503,
        0.9988003455714773,  0.9984593527621181,  0.998075864020091 ,
        0.9976499245294256,  0.997181584465781 ,  0.9966708989873633,
        0.9961179282249392,  0.9955227372709556,  0.9948853961677615,
        0.9942059798949376,  0.9934845683557374,  0.9927212463626406,
        0.9919161036220242,  0.9910692347179533,  0.9901807390950966,
        0.9892507210407708,  0.9882792896661158,  0.9872665588864084,
        0.9862126474005161,  0.9851176786694983,  0.9839817808943575,
        0.9828050869929472,  0.9815877345760424,  0.9803298659225754,
        0.9790316279540475,  0.9776931722081169,  0.9763146548113727,
        0.9748962364513014,  0.9734380823474501,  0.9719403622217944,
        0.9704032502683178,  0.9688269251218112,  0.9672115698258957,
        0.9655573718002798,  0.9638645228072589,  0.962133218917459 ,
        0.960363660474842 ,  0.9585560520609724,  0.9567106024585561,
        0.9548275246142641,  0.9529070356008403,  0.9509493565785145,
        0.9489547127557163,  0.9469233333491093,  0.9448554515429498,
        0.9427513044477814,  0.9406111330584701,  0.9384351822115995,
        0.936223700542225 ,  0.9339769404400027,  0.9316951580047035,
        0.9293786130011197,  0.9270275688133766,  0.9246422923986567,
        0.9222230542403528,  0.9197701283006529,  0.9172837919725745,
        0.9147643260314551,  0.9122120145859121,  0.9096271450282803,
        0.9070100079845437,  0.9043608972637666,  0.9016801098070395,
        0.8989679456359499,  0.8962247078005908,  0.8934507023271165,
        0.890646238164859 ,  0.8878116271330179,  0.8849471838669329,
        0.8820532257639527,  0.8791300729289145,  0.8761780481192405,
        0.8731974766896706,  0.8701886865366371,  0.8671520080423007,
        0.864087774018254 ,  0.8609963196489069,  0.857877982434569 ,
        0.8547331021342409,  0.8515620207081203,  0.8483650822598474,
        0.845142632978494 ,  0.8418950210803088,  0.8386225967502365,
        0.8353257120832221,  0.8320047210253095,  0.8286599793145506,
        0.8252918444217402,  0.8219006754909824,  0.8184868332801088,
        0.8150506801009567,  0.8115925797595231,  0.8081128974960046,
        0.8046119999247384,  0.8010902549740592,  0.7975480318260767,
        0.7939857008563984,  0.7904036335737998,  0.7868022025598639,
        0.7831817814085932,  0.7795427446660183,  0.7758854677698058,
        0.7722103269888824,  0.7685176993630921,  0.7648079626428902,
        0.7610814952290952,  0.7573386761127039,  0.7535798848147915,
        0.7498055013264991,  0.7460159060491262,  0.7422114797343429,
        0.7383926034245295,  0.7345596583932565,  0.7307130260859206,
        0.7268530880605466,  0.7229802259287637,  0.7190948212969774,
        0.7151972557077383,  0.7112879105813281,  0.707367167157568 ,
        0.7034354064378684,  0.6994930091275225,  0.6955403555782637,
        0.6915778257310941,  0.6876057990593938,  0.6836246545123266,
        0.6796347704585499,  0.6756365246302417,  0.6716302940674524,
        0.6676164550627968,  0.6635953831064932,  0.6595674528317638,
        0.6555330379605983,  0.6514925112499067,  0.6474462444380512,
        0.64339460819179  ,  0.6393379720536178,  0.6352767043895368,
        0.6312111723372501,  0.6271417417547999,  0.6230687771696442,
        0.6189926417282027,  0.6149136971458598,  0.6108323036574492,
        0.6067488199682172,  0.6026636032052822,  0.5985770088695991,
        0.5944893907884211,  0.5904011010682964,  0.586312490048576 ,
        0.5822239062554665,  0.5781356963566155,  0.574048205116252 ,
        0.5699617753508818,  0.5658767478855471,  0.5617934615106559,
        0.5577122529393902,  0.5536334567657013,  0.5495574054228894,
        0.5454844291427905,  0.5414148559155557,  0.5373490114500558,
        0.5332872191348851,  0.5292298000000004,  0.5251770726789775,
        0.5211293533719101,  0.5170869558089362,  0.5130501912144132,
        0.5090193682717445,  0.5049947930888496,  0.5009767691642973,
        0.4969655973540987,  0.492961575839168 ,  0.4889650000934454,
        0.4849761628527037,  0.4809953540840237,  0.4770228609559544,
        0.4730589678093531,  0.4691039561289148,  0.4651581045153931,
        0.4612216886585047,  0.4572949813105405,  0.4533782522606645,
        0.4494717683099176,  0.4455757932469176,  0.4416905878242668,
        0.4378164097356617,  0.4339535135937103,  0.4301021509084542,
        0.4262625700666021,  0.4224350163114721,  0.4186197317236406,
        0.4148169552023067,  0.4110269224473623,  0.407249865942181 ,
        0.4034860149371081,  0.3997355954336693,  0.3959988301694882,
        0.3922759386039103,  0.3885671369043415,  0.3848726379332895,
        0.3811926512361219,  0.3775273830295183,  0.3738770361906366,
        0.3702418102469789,  0.3666219013669615,  0.3630175023511787,
        0.3594288026243721,  0.3558559882280924,  0.3522992418140502,
        0.3487587426381639,  0.3452346665552907,  0.341727186014648 ,
        0.338236470055908 ,  0.3347626843059813,  0.3313059909764697,
        0.3278665488617946,  0.3244445133379893,  0.3210400363621613,
        0.317653266472615 ,  0.3142843487896247,  0.3109334250168699,
        0.3076006334435119,  0.3042861089469182,  0.3009899829960223,
        0.2977123836553226,  0.2944534355895052,  0.2912132600687004,
        0.2879919749743475,  0.2847896948056821,  0.2816065306868304,
        0.2784425903745036,  0.2752979782662948,  0.2721727954095629,
        0.26906713951091  ,  0.2659811049462296,  0.2629147827713361,
        0.259868260733159 ,  0.2568416232815007,  0.2538349515813463,
        0.2508483235257242,  0.2478818137491116,  0.2449354936413684,
        0.2420094313622064,  0.239103691856176 ,  0.2362183368681716,
        0.2333534249594386,  0.2305090115240874,  0.2276851488060971,
        0.2248818859168067,  0.2220992688528828,  0.2193373405147606,
        0.2165961407255492,  0.2138757062503883,  0.21117607081626  ,
        0.2084972651322354,  0.2058393169101591,  0.2032022508857524,
        0.2005860888401405,  0.1979908496217827,  0.1954165491688105,
        0.1928632005317512,  0.190330813896642 ,  0.18781939660852  ,
        0.1853289531952778,  0.1828594853918841,  0.1804109921649517,
        0.1779834697376555,  0.1755769116149793,  0.1731913086092946,
        0.1708266488662562,  0.1684829178910104,  0.1661600985747019,
        0.1638581712212765,  0.1615771135745709,  0.1593169008456753,
        0.157077505740567 ,  0.1548588984880031,  0.1526610468676663,
        0.1504839162385489,  0.1483274695675783,  0.1461916674584623,
        0.1440764681807568,  0.1419818276991384,  0.1399076997028812,
        0.1378540356355251,  0.1358207847247259,  0.1338078940122843,
        0.1318153083843401,  0.1298429706017266,  0.1278908213304731,
        0.1259587991724536,  0.124046840696165 ,  0.1221548804676373,
        0.1202828510814549,  0.1184306831918917,  0.116598305544148 ,
        0.1147856450056775,  0.1129926265976035,  0.1112191735262094,
        0.1094652072145031,  0.1077306473338385,  0.1060154118355936,
        0.1043194169828947,  0.1026425773823793,  0.1009848060159889,
        0.0993460142727852,  0.0977261119807851,  0.0961250074387998,
        0.0945426074482785,  0.0929788173451437,  0.0914335410316154,
        0.0899066810080116,  0.0883981384045244,  0.0869078130129599,
        0.0854356033184364,  0.0839814065310344,  0.0825451186173923,
        0.08112663433224  ,  0.0797258472498624,  0.0783426497954907,
        0.0769769332766108,  0.0756285879141845,  0.0742975028737766,
        0.0729835662965818,  0.0716866653303468,  0.0704066861601785,
        0.069143514039236 ,  0.0678970333192978,  0.0666671274812004,
        0.0654536791651416,  0.0642565702008436,  0.0630756816375698,
        0.0619108937739926,  0.0607620861879023,  0.0596291377657562,
        0.0585119267320621,  0.0574103306785895,  0.0563242265934056,
        0.0552534908897308,  0.0541979994346101,  0.0531576275773932,
        0.0521322501780227,  0.0511217416351237,  0.0501259759138916,
        0.0491448265737728,  0.0481781667959377,  0.0472258694105382,
        0.0462878069237488,  0.0453638515445863,  0.0444538752115058,
        0.0435577496187689,  0.0426753462425807,  0.0418065363669936,
        0.0409511911095737,  0.0401091814468278,  0.0392803782393872,
        0.038464652256947 ,  0.0376618742029581,  0.0368719147390669,
        0.0360946445093057,  0.0353299341640257,  0.0345776543835751,
        0.0338376759017168,  0.0331098695287873,  0.0323941061745914,
        0.0316902568710346,  0.0309981927944886,  0.0303177852878903,
        0.0296489058825725,  0.0289914263198251,  0.0283452185721853,
        0.0277101548644559,  0.0270861076944527,  0.0264729498534758,
        0.0258705544465091,  0.0252787949121439,  0.0246975450422282,
        0.0241266790012392,  0.0235660713453812,  0.0230155970414075,
        0.0224751314851646,  0.0219445505198623,  0.0214237304540663,
        0.0209125480794161,  0.0204108806880662,  0.0199186060898537,
        0.0194356026291897,  0.0189617492016775,  0.0184969252704575,
        0.0180410108822784,  0.0175938866832984,  0.0171554339346132,
        0.0167255345275159,  0.0163040709984868,  0.0158909265439174,
        0.0154859850345652,  0.0150891310297455,  0.014700249791259 ,
        0.014319227297057 ,  0.0139459502546461,  0.0135803061142331,
        0.013222183081614 ,  0.0128714701308062,  0.0125280570164273,
        0.0121918342858219,  0.0118626932909392,  0.0115405261999613,
        0.0112252260086874,  0.0109166865516729,  0.0106148025131278,
        0.010319469437576 ,  0.0100305837402767,  0.0097480427174129,
        0.0094717445560465,  0.0092015883438436,  0.0089374740785742,
        0.0086793026773856,  0.0084269759858547,  0.0081803967868204,
        0.0079394688090005,  0.0077040967353931,  0.0074741862114675,
        0.0072496438531468,  0.0070303772545851,  0.0068162949957411,
        0.0066073066497526,  0.0064033227901135,  0.0062042549976571,
        0.0060100158673488,  0.0058205190148889,  0.0056356790831322,
        0.0054554117483249,  0.0052796337261614,  0.0051082627776669,
        0.0049412177149047,  0.0047784184065162,  0.0046197857830913,
        0.0044652418423769,  0.0043147096543243,  0.0041681133659781,
        0.0040253782062114,  0.0038864304903093,  0.0037511976244038,
        0.0036196081097631,  0.0034915915469397,  0.003367078639778 ,
        0.0032460011992864,  0.0031282921473756,  0.0030138855204687,
        0.002902716472981 ,  0.0027947212806784,  0.0026898373439137,
        0.0025880031907442,  0.0024891584799348,  0.0023932440038482,
        0.0023002016912258,  0.0022099746098619,  0.0021225069691741,
        0.0020377441226725,  0.0019556325703311,  0.0018761199608627,
        0.0017991550939023,  0.0017246879220986,  0.0016526695531198,
        0.0015830522515726,  0.00151578944084  ,  0.0014508357048388,
        0.0013881467896991,  0.0013276796053691,  0.0012693922271476,
        0.0012132438971449,  0.0011591950256767,  0.0011072071925915,
        0.0010572431485342,  0.0010092668161482,  0.0009632432912181,
        0.0009191388437541,  0.0008769209190216,  0.0008365581385168,
        0.0007980203008899,  0.000761278382819 ,  0.0007263045398351,
        0.0006930721071003,  0.0006615556001414,  0.0006317307155393,
        0.0006035743315766,  0.0005770645088445,  0.0005521804908107,
        0.0005289027043479,  0.0005072127602274,  0.0004870934535756,
        0.0004685287642961,  0.0004515038574592,  0.0004360050836568,
        0.0004220199793278,  0.0004095372670511,  0.0003985468558087,
        0.0003890398412195,  0.000381008505744 ,  0.000374446318861 ,
        0.0003693479372153,  0.0003657092047395,  0.0003635271527473,
        0.0003628       };
		
		

// np.round(signal.windows.hamming(512) * 2**31).astype(np.int32)
//InputDSP::sample_t const InputDSP::hamming512[512] = {
//	0.08      ,  0.08003477,  0.08013909,  0.08031292,  0.08055626,
//	0.08086906,  0.08125127,  0.08170284,  0.0822237 ,  0.08281376,
//	0.08347295,  0.08420116,  0.08499828,  0.08586418,  0.08679875,
//	0.08780184,  0.08887329,  0.09001294,  0.09122063,  0.09249617,
//	0.09383936,  0.09525001,  0.09672789,  0.0982728 ,  0.09988448,
//	0.10156271,  0.10330722,  0.10511775,  0.10699403,  0.10893578,
//	0.1109427 ,  0.11301448,  0.11515082,  0.11735139,  0.11961586,
//	0.12194389,  0.12433512,  0.12678919,  0.12930573,  0.13188437,
//	0.13452471,  0.13722635,  0.13998888,  0.14281189,  0.14569495,
//	0.14863762,  0.15163946,  0.15470002,  0.15781883,  0.16099542,
//	0.16422931,  0.16752001,  0.17086702,  0.17426984,  0.17772796,
//	0.18124085,  0.18480797,  0.1884288 ,  0.19210278,  0.19582935,
//	0.19960796,  0.20343803,  0.20731899,  0.21125024,  0.2152312 ,
//	0.21926125,  0.2233398 ,  0.22746622,  0.2316399 ,  0.23586019,
//	0.24012646,  0.24443807,  0.24879437,  0.25319469,  0.25763837,
//	0.26212475,  0.26665313,  0.27122284,  0.27583319,  0.28048347,
//	0.28517299,  0.28990103,  0.29466689,  0.29946984,  0.30430915,
//	0.3091841 ,  0.31409394,  0.31903793,  0.32401534,  0.32902539,
//	0.33406735,  0.33914043,  0.34424389,  0.34937694,  0.35453881,
//	0.35972872,  0.36494588,  0.37018951,  0.37545881,  0.38075299,
//	0.38607124,  0.39141277,  0.39677676,  0.4021624 ,  0.40756889,
//	0.41299539,  0.4184411 ,  0.42390518,  0.42938682,  0.43488518,
//	0.44039943,  0.44592874,  0.45147227,  0.45702919,  0.46259865,
//	0.46817981,  0.47377183,  0.47937386,  0.48498506,  0.49060458,
//	0.49623157,  0.50186517,  0.50750453,  0.51314881,  0.51879715,
//	0.5244487 ,  0.5301026 ,  0.53575799,  0.54141402,  0.54706984,
//	0.55272459,  0.55837742,  0.56402747,  0.56967389,  0.57531582,
//	0.58095241,  0.58658281,  0.59220616,  0.59782163,  0.60342835,
//	0.60902548,  0.61461218,  0.6201876 ,  0.62575089,  0.63130122,
//	0.63683774,  0.64235963,  0.64786604,  0.65335614,  0.6588291 ,
//	0.6642841 ,  0.66972031,  0.67513691,  0.68053307,  0.68590799,
//	0.69126085,  0.69659084,  0.70189716,  0.707179  ,  0.71243557,
//	0.71766606,  0.72286969,  0.72804568,  0.73319324,  0.73831159,
//	0.74339995,  0.74845757,  0.75348367,  0.75847749,  0.76343829,
//	0.7683653 ,  0.77325778,  0.77811501,  0.78293623,  0.78772072,
//	0.79246776,  0.79717663,  0.80184662,  0.80647702,  0.81106714,
//	0.81561627,  0.82012373,  0.82458885,  0.82901093,  0.83338932,
//	0.83772336,  0.84201238,  0.84625575,  0.85045281,  0.85460293,
//	0.8587055 ,  0.86275987,  0.86676546,  0.87072163,  0.87462781,
//	0.8784834 ,  0.88228781,  0.88604048,  0.88974082,  0.89338829,
//	0.89698234,  0.90052241,  0.90400798,  0.90743851,  0.91081349,
//	0.91413241,  0.91739477,  0.92060007,  0.92374783,  0.92683757,
//	0.92986882,  0.93284114,  0.93575406,  0.93860715,  0.94139997,
//	0.94413211,  0.94680315,  0.94941269,  0.95196032,  0.95444568,
//	0.95686838,  0.95922805,  0.96152434,  0.9637569 ,  0.9659254 ,
//	0.9680295 ,  0.97006889,  0.97204326,  0.97395231,  0.97579575,
//	0.97757331,  0.97928471,  0.98092969,  0.98250802,  0.98401944,
//	0.98546374,  0.98684068,  0.98815007,  0.98939171,  0.9905654 ,
//	0.99167097,  0.99270826,  0.99367711,  0.99457736,  0.99540889,
//	0.99617157,  0.99686528,  0.99748992,  0.99804539,  0.99853161,
//	0.99894851,  0.99929602,  0.99957409,  0.99978268,  0.99992176,
//	0.99999131,  0.99999131,  0.99992176,  0.99978268,  0.99957409,
//	0.99929602,  0.99894851,  0.99853161,  0.99804539,  0.99748992,
//	0.99686528,  0.99617157,  0.99540889,  0.99457736,  0.99367711,
//	0.99270826,  0.99167097,  0.9905654 ,  0.98939171,  0.98815007,
//	0.98684068,  0.98546374,  0.98401944,  0.98250802,  0.98092969,
//	0.97928471,  0.97757331,  0.97579575,  0.97395231,  0.97204326,
//	0.97006889,  0.9680295 ,  0.9659254 ,  0.9637569 ,  0.96152434,
//	0.95922805,  0.95686838,  0.95444568,  0.95196032,  0.94941269,
//	0.94680315,  0.94413211,  0.94139997,  0.93860715,  0.93575406,
//	0.93284114,  0.92986882,  0.92683757,  0.92374783,  0.92060007,
//	0.91739477,  0.91413241,  0.91081349,  0.90743851,  0.90400798,
//	0.90052241,  0.89698234,  0.89338829,  0.88974082,  0.88604048,
//	0.88228781,  0.8784834 ,  0.87462781,  0.87072163,  0.86676546,
//	0.86275987,  0.8587055 ,  0.85460293,  0.85045281,  0.84625575,
//	0.84201238,  0.83772336,  0.83338932,  0.82901093,  0.82458885,
//	0.82012373,  0.81561627,  0.81106714,  0.80647702,  0.80184662,
//	0.79717663,  0.79246776,  0.78772072,  0.78293623,  0.77811501,
//	0.77325778,  0.7683653 ,  0.76343829,  0.75847749,  0.75348367,
//	0.74845757,  0.74339995,  0.73831159,  0.73319324,  0.72804568,
//	0.72286969,  0.71766606,  0.71243557,  0.707179  ,  0.70189716,
//	0.69659084,  0.69126085,  0.68590799,  0.68053307,  0.67513691,
//	0.66972031,  0.6642841 ,  0.6588291 ,  0.65335614,  0.64786604,
//	0.64235963,  0.63683774,  0.63130122,  0.62575089,  0.6201876 ,
//	0.61461218,  0.60902548,  0.60342835,  0.59782163,  0.59220616,
//	0.58658281,  0.58095241,  0.57531582,  0.56967389,  0.56402747,
//	0.55837742,  0.55272459,  0.54706984,  0.54141402,  0.53575799,
//	0.5301026 ,  0.5244487 ,  0.51879715,  0.51314881,  0.50750453,
//	0.50186517,  0.49623157,  0.49060458,  0.48498506,  0.47937386,
//	0.47377183,  0.46817981,  0.46259865,  0.45702919,  0.45147227,
//	0.44592874,  0.44039943,  0.43488518,  0.42938682,  0.42390518,
//	0.4184411 ,  0.41299539,  0.40756889,  0.4021624 ,  0.39677676,
//	0.39141277,  0.38607124,  0.38075299,  0.37545881,  0.37018951,
//	0.36494588,  0.35972872,  0.35453881,  0.34937694,  0.34424389,
//	0.33914043,  0.33406735,  0.32902539,  0.32401534,  0.31903793,
//	0.31409394,  0.3091841 ,  0.30430915,  0.29946984,  0.29466689,
//	0.28990103,  0.28517299,  0.28048347,  0.27583319,  0.27122284,
//	0.26665313,  0.26212475,  0.25763837,  0.25319469,  0.24879437,
//	0.24443807,  0.24012646,  0.23586019,  0.2316399 ,  0.22746622,
//	0.2233398 ,  0.21926125,  0.2152312 ,  0.21125024,  0.20731899,
//	0.20343803,  0.19960796,  0.19582935,  0.19210278,  0.1884288 ,
//	0.18480797,  0.18124085,  0.17772796,  0.17426984,  0.17086702,
//	0.16752001,  0.16422931,  0.16099542,  0.15781883,  0.15470002,
//	0.15163946,  0.14863762,  0.14569495,  0.14281189,  0.13998888,
//	0.13722635,  0.13452471,  0.13188437,  0.12930573,  0.12678919,
//	0.12433512,  0.12194389,  0.11961586,  0.11735139,  0.11515082,
//	0.11301448,  0.1109427 ,  0.10893578,  0.10699403,  0.10511775,
//	0.10330722,  0.10156271,  0.09988448,  0.0982728 ,  0.09672789,
//	0.09525001,  0.09383936,  0.09249617,  0.09122063,  0.09001294,
//	0.08887329,  0.08780184,  0.08679875,  0.08586418,  0.08499828,
//	0.08420116,  0.08347295,  0.08281376,  0.0822237 ,  0.08170284,
//	0.08125127,  0.08086906,  0.08055626,  0.08031292,  0.08013909,
//	0.08003477,  0.08
//};



//InputDSP::sample_t const InputDSP::hamming512[512] = {

