// Created by Crowbar 0.62

$modelname "weapons\arccw_csx\vm\c_csx_saiga12.mdl"

$bodygroup "body"
{
	studio "body_saiga.smd"
}
$bodygroup "rail"
{
	blank
	studio "rail_nato.smd"
}
$bodygroup "gl"
{
    blank
	studio "dovetail_saiga.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition -1.242 -6.422 -8.61

$cdmaterials "models\weapons\arccw\csx\akm"
$cdmaterials "models\weapons\arccw\csx\saiga"

$attachment "1" "j_gun" 24.07 0.01 2.73 rotate 0 0 0
$attachment "2" "j_gun" 7.08 -0.73 3.53 rotate -35 -90 0
$attachment "Camera" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -7.686 -13.488 -11.771 29.444 8.064 0.25

$definebone "tag_view" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_ads" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_torso" "tag_ads" -4.705943 0 -1.398986 0 0 0 0 0 0 0 0 0
$definebone "j_shoulder_le" "tag_torso" 1.143816 8.064286 -1.838914 61.762157 1.374869 151.093034 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 12.28739 0 -0.000004 49.502473 43.929704 -38.289856 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "j_elbow_le" -1.479618 -0.52142 -0.115908 0.065888 3.298514 -178.608192 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "j_shoulder_le" -0.794785 -0.415272 1.049925 -1.006801 -2.118453 121.157598 0 0 0 0 0 0
$definebone "j_shoulder_ri" "tag_torso" 1.143815 -8.064281 -1.838913 -61.761815 178.627849 -28.909387 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" -12.287382 0.00001 0.000009 49.502466 43.92965 -38.289856 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" -11.756235 -0.000007 -0.000016 -1.101453 4.14043 -1.285714 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "j_wrist_ri" 0.608721 -0.256521 0.241669 -0.08944 164.680452 99.715688 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "j_elbow_ri" 1.472401 0.530813 0.217798 -0.186761 -176.651807 179.033535 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "j_shoulder_ri" 0.784231 0.54355 -0.97688 1.093018 178.067186 -120.093824 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.756237 0.000004 0.000003 -1.101456 4.140418 -1.285717 0 0 0 0 0 0
$definebone "j_index_le_0" "j_wrist_le" 3.958883 0.766281 -0.377584 -37.185886 5.427568 90.765565 0 0 0 0 0 0
$definebone "j_index_le_1" "j_index_le_0" 1.788824 -0.000006 0.000003 -1.603478 26.1957 2.661554 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.235148 0 -0.061728 4.166665 16.682889 0.034657 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "j_index_le_2" 0.118801 -0.043665 0.100622 -5.845766 4.356496 -178.382112 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "j_index_le_1" 0.15919 0.030323 0.016146 -0.653283 -1.710202 -177.566683 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "j_index_le_0" 0.030139 0.20723 0.04509 0.700784 -3.355007 -174.520023 0 0 0 0 0 0
$definebone "j_mid_le_0" "j_wrist_le" 3.850542 -0.335923 -0.195337 -36.753125 -2.916474 90.518695 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_mid_le_0" 1.984815 -0.000004 -0.000002 -0.679356 50.313219 -2.363055 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 1.484004 0.000008 0.000001 0.397235 33.645116 -3.344072 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "j_mid_le_2" -0.245306 0.227103 0.075663 5.616704 -13.909386 -178.399516 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "j_mid_le_1" -0.169946 0.165911 0.161235 4.193305 -4.720466 176.239127 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "j_mid_le_0" -0.137753 0.16925 0.073833 -2.374971 -5.809911 173.512706 0 0 0 0 0 0
$definebone "j_pinkypalm_le" "j_wrist_le" 0.859738 -1.087892 0.20535 -2.462574 -34.845525 93.42369 0 0 0 0 0 0
$definebone "j_pinky_le_0" "j_pinkypalm_le" 2.282803 0.124579 -0.147874 12.696066 21.867119 1.960207 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_pinky_le_0" 1.438442 0 0.000004 0.429377 56.436689 3.179644 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 0.900817 0.000004 -0.000002 2.068028 40.073526 -3.259948 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "j_pinky_le_2" 0.047832 0.39325 0.0105 -0.116829 -3.467656 170.22061 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "j_pinky_le_1" 0.219941 0.205919 -0.06658 -2.679148 17.731251 166.996624 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "j_pinky_le_0" 0.070048 -0.244602 -0.300307 -9.714025 22.439615 176.403871 0 0 0 0 0 0
$definebone "j_ringpalm_le" "j_wrist_le" 1.0832 -0.412684 0.063469 -0.342573 -17.882532 92.756251 0 0 0 0 0 0
$definebone "j_ring_le_0" "j_ringpalm_le" 2.636879 -0.022428 0.151058 -0.002239 28.873587 -3.147202 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_ring_le_0" 1.729738 0 0 0.387262 58.409681 1.550708 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.408105 -0.000004 -0.000002 -0.305156 36.227235 -0.191715 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "j_ring_le_2" -0.002615 0.139176 0.005277 -1.976301 2.134819 -179.9986 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "j_ring_le_1" 0.016796 0.259338 -0.035495 -1.754912 -6.487698 -178.539384 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "j_ring_le_0" -0.160066 -0.080059 0.006899 1.200513 7.827199 -177.044871 0 0 0 0 0 0
$definebone "j_thumb_le_0" "j_wrist_le" 0.457026 0.980474 0.417177 -27.710248 40.620071 -24.35025 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_thumb_le_0" 2.192448 0.101404 0.056534 13.811488 -37.078454 7.09672 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 1.640186 -0.060609 0.113778 -8.254877 -27.779911 0.271418 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "j_thumb_le_2" -0.41573 0.069435 -0.036135 -7.194175 -1.562221 -179.714382 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "j_thumb_le_1" 0.044028 -0.080088 -0.262289 -12.216316 12.027816 170.459721 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "j_thumb_le_0" 0.22224 0.454214 -0.389718 -5.052062 -11.090872 178.186837 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "j_wrist_le" -0.612913 0.252547 -0.113742 0.090468 -15.106833 -98.85436 0 0 0 0 0 0
$definebone "j_index_ri_0" "j_wrist_ri" -3.958874 -0.766288 0.37759 -37.185944 5.427527 90.765565 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_index_ri_0" -1.788824 -0.000004 -0.000012 -1.603415 26.195637 2.66163 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" -1.235144 -0.000011 0.061707 4.166669 16.682876 0.034677 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "j_index_ri_2" -0.033903 0.036921 -0.122452 3.667887 -176.227748 -178.380992 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "j_index_ri_1" -0.07776 -0.018173 -0.061859 -0.185621 178.041545 -178.544001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "j_index_ri_0" 0.040591 -0.090971 -0.054951 0.298421 178.6751 178.42655 0 0 0 0 0 0
$definebone "j_mid_ri_0" "j_wrist_ri" -3.850512 0.335945 0.195334 -36.753071 -2.916517 90.518695 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_mid_ri_0" -1.984803 0 0.000022 -0.679295 50.313213 -2.363042 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" -1.483999 0.000038 -0.00003 0.397286 33.645147 -3.344001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "j_mid_ri_2" 0.365201 -0.236027 -0.129966 -1.827479 168.27126 -178.18207 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "j_mid_ri_1" 0.273812 -0.165026 -0.097239 0.917108 172.895722 -174.676543 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "j_mid_ri_0" 0.191233 -0.077484 0.127769 6.522065 174.468031 -176.253771 0 0 0 0 0 0
$definebone "j_pinkypalm_ri" "j_wrist_ri" -0.85973 1.087918 -0.205317 -2.462573 -34.846208 93.423752 0 0 0 0 0 0
$definebone "j_pinky_ri_0" "j_pinkypalm_ri" -2.282797 -0.124596 0.147901 12.697095 21.8673 1.960491 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_pinky_ri_0" -1.438437 0.000015 0.000021 0.429202 56.436658 3.179234 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" -0.900822 -0.000025 -0.000004 2.068084 40.073502 -3.259839 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "j_pinky_ri_2" -0.097813 -0.362195 -0.053655 1.046097 175.449707 -169.94116 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "j_pinky_ri_1" -0.095209 -0.305315 0.071651 6.660552 -176.699796 -168.240839 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "j_pinky_ri_0" -0.094288 0.393648 0.300968 9.530828 -147.144898 -175.199954 0 0 0 0 0 0
$definebone "j_ringpalm_ri" "j_wrist_ri" -1.083181 0.412687 -0.063444 -0.342914 -17.876396 92.756196 0 0 0 0 0 0
$definebone "j_ring_ri_0" "j_ringpalm_ri" -2.636871 0.022412 -0.151353 -0.007441 28.87359 -3.150178 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_ring_ri_0" -1.729755 0.000015 -0.000001 0.38732 58.409668 1.550717 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" -1.408092 -0.000006 -0.00001 -0.305215 36.227242 -0.191882 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "j_ring_ri_2" 0.119122 -0.2043 -0.018002 2.589182 -179.236159 -179.335538 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "j_ring_ri_1" 0.115882 -0.245899 0.004547 0.925128 173.387878 179.355879 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "j_ring_ri_0" 0.219028 0.189795 -0.017764 -0.503728 -172.535443 177.266483 0 0 0 0 0 0
$definebone "j_thumb_ri_0" "j_wrist_ri" -0.457026 -0.980445 -0.417155 -27.710248 40.620016 -24.350244 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_thumb_ri_0" -2.192459 -0.101404 -0.056536 13.811487 -37.078427 7.096704 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" -1.640182 0.060616 -0.113791 -8.254951 -27.779901 0.271408 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "j_thumb_ri_2" 0.55372 -0.105746 0.015352 11.944086 -177.930295 -178.645976 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "j_thumb_ri_1" 0.01516 0.112616 0.312317 14.476902 -161.870184 -166.672545 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "j_thumb_ri_0" -0.164265 -0.500914 0.506267 7.352519 168.106776 -175.155763 0 0 0 0 0 0
$definebone "tag_weapon" "tag_torso" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_gun" "tag_weapon" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_acog" "j_gun" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_reflex" "j_gun" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "j_gun" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_camera" "j_gun" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_bolt2" "j_gun" 7.824564 -0.24646 3.059108 0 0 0 0 0 0 0 0 0
$definebone "j_magrelease" "j_gun" 4.021908 0 0.56038 0 0 0 0 0 0 0 0 0
$definebone "tag_clip" "j_gun" 5.534184 0.013136 1.659121 0 0 0 0 0 0 0 0 0
$definebone "tag_bullet" "tag_clip" -0.398353 -0.07256 0.494658 0 0 0 0 0 0 0 0 0
$definebone "tag_m203" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_gp25_button" "tag_m203" 4.312436 0.585099 -1.131228 0 0 0 0 0 0 0 0 0
$definebone "j_grenade" "tag_m203" 7.079202 0.051638 -1.104233 0 0 0 0 0 0 0 0 0
$definebone "j_trigger" "tag_m203" 2.390176 0 -0.948021 0 0 0 0 0 0 0 0 0

$bonemerge "tag_view"
$bonemerge "tag_ads"
$bonemerge "tag_torso"
$bonemerge "j_shoulder_le"
$bonemerge "j_elbow_le"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "j_shoulder_ri"
$bonemerge "j_elbow_ri"
$bonemerge "j_wrist_ri"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "j_wrist_le"
$bonemerge "j_index_le_0"
$bonemerge "j_index_le_1"
$bonemerge "j_index_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "j_mid_le_0"
$bonemerge "j_mid_le_1"
$bonemerge "j_mid_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "j_pinkypalm_le"
$bonemerge "j_pinky_le_0"
$bonemerge "j_pinky_le_1"
$bonemerge "j_pinky_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "j_ringpalm_le"
$bonemerge "j_ring_le_0"
$bonemerge "j_ring_le_1"
$bonemerge "j_ring_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "j_thumb_le_0"
$bonemerge "j_thumb_le_1"
$bonemerge "j_thumb_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "j_index_ri_0"
$bonemerge "j_index_ri_1"
$bonemerge "j_index_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "j_mid_ri_0"
$bonemerge "j_mid_ri_1"
$bonemerge "j_mid_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "j_pinkypalm_ri"
$bonemerge "j_pinky_ri_0"
$bonemerge "j_pinky_ri_1"
$bonemerge "j_pinky_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "j_ringpalm_ri"
$bonemerge "j_ring_ri_0"
$bonemerge "j_ring_ri_1"
$bonemerge "j_ring_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "j_thumb_ri_0"
$bonemerge "j_thumb_ri_1"
$bonemerge "j_thumb_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "tag_weapon"
$bonemerge "j_gun"
$bonemerge "tag_acog"
$bonemerge "tag_reflex"
$bonemerge "tag_silencer"
$bonemerge "tag_camera"


$sectionframes 30 120

$sequence "reg_idle" {
	"viewmodel_anims\reg_idle.smd"
	fadein 100
	fadeout 0.2
	fps 30
}

$sequence "reg_fire" {
	"viewmodel_anims\reg_fire.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reg_fire_ads" {
	"viewmodel_anims\reg_fire_ads.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reg_fire_ads_scope" {
	"viewmodel_anims\reg_fire_ads_scope.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reg_draw" {
	"viewmodel_anims\reg_draw.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reg_draw_first" {
	"viewmodel_anims\reg_draw_first.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reg_holster" {
	"viewmodel_anims\reg_holster.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reg_reload" {
	"viewmodel_anims\reg_reload.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reg_reload_empty" {
	"viewmodel_anims\reg_reload_empty.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reg_inspect" {
	"viewmodel_anims\reg_inspect.smd"
	fadein 100
	fadeout 0.2
	fps 30
}

$sequence "reg_sprint_in" {
	"viewmodel_anims\reg_sprint_in.smd"
	fadein 100
	fadeout 0.2
	fps 40
}

$sequence "reg_sprint" {
	"viewmodel_anims\reg_sprint.smd"
	fadein 100
	fadeout 0.2
	fps 50
	loop
}

$sequence "reg_sprint_out" {
	"viewmodel_anims\reg_sprint_out.smd"
	fadein 100
	fadeout 0.2
	fps 40
}

$sequence "gl_idle" {
	"viewmodel_anims\gl_idle.smd"
	fadein 100
	fadeout 0.2
	fps 30
}

$sequence "gl_fire" {
	"viewmodel_anims\gl_fire.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "gl_fire_ads" {
	"viewmodel_anims\gl_fire_ads.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "gl_draw" {
	"viewmodel_anims\gl_draw.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_draw_first" {
	"viewmodel_anims\gl_draw_first.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_holster" {
	"viewmodel_anims\gl_holster.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_reload" {
	"viewmodel_anims\gl_reload.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_reload_empty" {
	"viewmodel_anims\gl_reload_empty.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_inspect" {
	"viewmodel_anims\gl_inspect.smd"
	fadein 100
	fadeout 0.2
	fps 30
}

$sequence "gl_sprint_in" {
	"viewmodel_anims\gl_sprint_in.smd"
	fadein 100
	fadeout 0.2
	fps 40
}

$sequence "gl_sprint" {
	"viewmodel_anims\gl_sprint.smd"
	fadein 100
	fadeout 0.2
	fps 50
	loop
}

$sequence "gl_sprint_out" {
	"viewmodel_anims\gl_sprint_out.smd"
	fadein 100
	fadeout 0.2
	fps 40
}

$sequence "gl_grenade_idle" {
	"viewmodel_anims\gl_grenade_idle.smd"
	fadein 100
	fadeout 0.2
	fps 30
}

$sequence "gl_grenade_fire" {
	"viewmodel_anims\gl_grenade_fire.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "gl_grenade_2_bullet" {
	"viewmodel_anims\gl_grenade_2_bullet.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_grenade_2_grenade" {
	"viewmodel_anims\gl_grenade_2_grenade.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_grenade_draw" {
	"viewmodel_anims\gl_grenade_draw.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_grenade_holster" {
	"viewmodel_anims\gl_grenade_holster.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "gl_grenade_reload" {
	"viewmodel_anims\gl_grenade_reload.smd"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "gl_grenade_sprint_in" {
	"viewmodel_anims\gl_grenade_sprint_in.smd"
	fadein 100
	fadeout 0.2
	fps 40
}

$sequence "gl_grenade_sprint" {
	"viewmodel_anims\gl_grenade_sprint.smd"
	fadein 100
	fadeout 0.2
	fps 50
	loop
}

$sequence "gl_grenade_sprint_out" {
	"viewmodel_anims\gl_grenade_sprint_out.smd"
	fadein 100
	fadeout 0.2
	fps 40
}
