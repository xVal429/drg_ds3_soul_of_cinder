// Created by Crowbar 0.71

$modelname "val_soc.mdl"

$bodygroup "Cinder"
{
	studio "Main_Body_2.smd"
}
$bodygroup "Weapon"
{
	blank
	studio "Bonfire_Straight_Sword.smd"
	studio "Bonfire_Lance.smd"
	studio "Bonfire_Curved_Sword.smd"
	studio "Bonfire_Staff.smd"
	studio "Bonfire_Great_Sword.smd"
}
$bodygroup "Magic"
{
	blank
	studio "Magic_Great_Sword.smd"
	studio "Magic_Lightning_Bolt.smd"
}
$bodygroup "clamped1"
{
	studio "body3_model0.smd"
}


$surfaceprop "no_decal"

$contents "solid"

$illumposition -6.258 -74.06 62.301

$cdmaterials "models\soc\"

$attachment "Lightning_Spear" "Lightning_Bolt" 0 0 0 rotate 0 0 -180
$attachment "Miracle_Aura" "Spine2" -10 0 0 rotate -90 180 0
$attachment "Spell_Cast_Catalyst" "R_Weapon001" 0.8 0.5 37 rotate 0 90 0
$attachment "Spell_Cast_Pyromancy" "Lightning_Bolt" 0 0 0 rotate 0 0 -180
$attachment "Weapon_Base" "R_Weapon001" 0.2 0.5 15 rotate 0 90 0
$attachment "Weapon_Base_Staff" "R_Weapon001" 0.8 0.3 8 rotate 0 90 0
$attachment "BF_SS_Link" "R_Weapon001" 0.6 0.3 85 rotate 0 90 0
$attachment "BF_LC_Link" "R_Weapon001" 0.6 0.3 144 rotate 0 90 0
$attachment "BF_ST_Link" "R_Weapon001" 0.6 0.8 -58 rotate 0 90 0
$attachment "BF_CS_Link" "R_Weapon001" -23 0.3 78 rotate 0 90 0
$attachment "BF_GS_Link" "R_Weapon001" 0.8 0.3 108 rotate 0 90 0

$attachment "V_FootL" "L_Foot" -10 0 0 rotate 0 0 0
$attachment "V_FootR" "R_Foot" -10 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -93.354 -60.263 -0.297 241.474 47.746 124.899

$definebone "Master" "" 0 0 0 0.000115 89.999982 -89.999982 0 0 0 0 0 0
$definebone "Root" "Master" 0 -66.294075 0 0 0 0 0 0 0 0 0 0
$definebone "Spine" "Root" -1.152875 -8.688591 0 0.000036 91.337818 90.000132 0 0 0 0 0 0
$definebone "Spine1" "Spine" -4.916382 0 0.00401 1.429014 0.000057 0 0 0 0 0 0 0
$definebone "Spine2" "Spine1" -5.012825 0 0.015318 1.383407 -0.000057 0 0 0 0 0 0 0
$definebone "L_Clavicle" "Spine2" -14.238266 -1.891918 -1.492362 20.555125 90.016976 -179.951292 0 0 0 0 0 0
$definebone "R_Clavicle" "Spine2" -14.238266 1.891918 -1.492402 20.554782 -90.016976 179.951292 0 0 0 0 0 0
$definebone "R_UpperArm" "R_Clavicle" -11.182685 -0.000038 0.000002 9.574296 44.995415 17.265566 0 0 0 0 0 0
$definebone "R_Forearm" "R_UpperArm" -17.996311 -0.000015 0 8.37756 -0.000057 -0.000002 0 0 0 0 0 0
$definebone "R_Hand" "R_Forearm" -17.189947 0 -0.000001 -5.612752 -3.791489 -84.978065 0 0 0 0 0 0
$definebone "R_Weapon001" "R_Hand" -2.673065 -0.293051 -1.030205 -40.641449 175.597934 -84.133635 0 0 0 0 0 0
$definebone "L_UpperArm" "L_Clavicle" -11.182646 0.000046 0 9.574295 -44.995353 -17.265511 0 0 0 0 0 0
$definebone "L_Forearm" "L_UpperArm" -17.996323 -0.000031 0 8.377554 -0.000003 0.000001 0 0 0 0 0 0
$definebone "L_Hand" "L_Forearm" -17.189907 0 -0.000003 -5.612699 3.791488 84.97812 0 0 0 0 0 0
$definebone "Lightning_Bolt" "L_Hand" -6.704723 0.425861 -3.502258 -40.64148 -175.598153 84.13399 0 0 0 0 0 0
$definebone "L_Finger0" "L_Hand" -1.722366 1.464211 -1.455635 -7.688531 -50.126577 -72.773658 0 0 0 0 0 0
$definebone "L_Finger01" "L_Finger0" -4.400372 0 0 -20.078804 -0.000007 -0.000002 0 0 0 0 0 0
$definebone "L_Finger02" "L_Finger01" -2.201885 0 0.000002 30.753951 -0.000007 0.000003 0 0 0 0 0 0
$definebone "L_Finger1" "L_Hand" -7.030893 2.392887 -0.69297 -3.205998 -9.720512 4.876329 0 0 0 0 0 0
$definebone "L_Finger11" "L_Finger1" -3.204792 -0.000001 0 -18.553645 0.000007 0 0 0 0 0 0 0
$definebone "L_Finger12" "L_Finger11" -2.173141 0 0 26.135844 0.000007 -0.000001 0 0 0 0 0 0
$definebone "L_Finger2" "L_Hand" -7.567064 0.906018 -0.619102 -4.768106 -8.25156 -5.986663 0 0 0 0 0 0
$definebone "L_Finger21" "L_Finger2" -3.37224 -0.000001 0 -26.930852 0.000006 0 0 0 0 0 0 0
$definebone "L_Finger22" "L_Finger21" -2.08989 0 -0.000004 27.070869 0.000007 -0.000003 0 0 0 0 0 0
$definebone "L_Finger3" "L_Hand" -7.36994 -0.830311 -0.625839 -4.591172 -7.136357 4.455263 0 0 0 0 0 0
$definebone "L_Finger31" "L_Finger3" -3.331469 0 0.000008 -38.125867 0.000005 -0.000002 0 0 0 0 0 0
$definebone "L_Finger32" "L_Finger31" -2.380531 0 0 22.669478 0.000006 -0.000004 0 0 0 0 0 0
$definebone "L_Finger4" "L_Hand" -6.994045 -2.167768 -1.187881 -2.110153 -6.662865 16.723664 0 0 0 0 0 0
$definebone "L_Finger41" "L_Finger4" -2.940653 0 0 -45.447751 0.000002 -0.000011 0 0 0 0 0 0
$definebone "L_Finger42" "L_Finger41" -1.511482 0.000001 0.000004 15.454855 0.000004 -0.000009 0 0 0 0 0 0
$definebone "L_ForeArmTwist" "L_Forearm" -11.950953 -0.000008 0 -0.000005 -0.000065 -0.014781 0 0 0 0 0 0
$definebone "L_ForeArmTwist1" "L_Forearm" -0.2005 0 0 -0.000005 -0.000003 0.002236 0 0 0 0 0 0
$definebone "R_Shoulder" "R_Clavicle" -11.25174 0.184425 0.037535 7.142091 21.896613 10.877548 0 0 0 0 0 0
$definebone "R_UpArmTwist" "R_UpperArm" -0.200455 -0.000008 -0.00004 -0.000001 0.000002 6.509888 0 0 0 0 0 0
$definebone "R_UpArmTwist1" "R_UpperArm" -5.293156 0.000038 0 -0.000001 0.000002 3.254915 0 0 0 0 0 0
$definebone "R_Elbow" "R_UpperArm" -18.010914 0 -0.200019 4.188722 -0.000002 -0.000001 0 0 0 0 0 0
$definebone "L_Elbow" "L_UpperArm" -18.01096 -0.000031 -0.199978 4.188777 0 0.000001 0 0 0 0 0 0
$definebone "L_UpArmTwist1" "L_UpperArm" -5.2799 -0.000031 0 -0.000002 0.000002 -3.254914 0 0 0 0 0 0
$definebone "R_Finger0" "R_Hand" -1.722364 -1.464211 -1.45562 -7.688524 50.126594 72.773664 0 0 0 0 0 0
$definebone "L_UpArmTwist" "L_UpperArm" -0.2005 -0.000023 0.000001 -0.000002 0.00006 -6.50983 0 0 0 0 0 0
$definebone "R_Finger01" "R_Finger0" -4.400331 0 0 -20.078792 0.000009 0 0 0 0 0 0 0
$definebone "R_Finger02" "R_Finger01" -2.201891 -0.000008 0 30.753965 0.000007 -0.000002 0 0 0 0 0 0
$definebone "R_Finger1" "R_Hand" -7.030853 -2.392887 -0.692955 -3.205933 9.720513 -4.876328 0 0 0 0 0 0
$definebone "R_Finger11" "R_Finger1" -3.204792 0.000001 0.000015 -18.553579 0.000002 0.000001 0 0 0 0 0 0
$definebone "R_Finger12" "R_Finger11" -2.173141 0 0 26.135881 0 0.000001 0 0 0 0 0 0
$definebone "R_Finger2" "R_Hand" -7.567062 -0.90602 -0.619095 -4.768103 8.251564 5.986665 0 0 0 0 0 0
$definebone "R_Finger21" "R_Finger2" -3.372215 0.000001 0 -26.930864 0.000001 0.000005 0 0 0 0 0 0
$definebone "R_Finger22" "R_Finger21" -2.089928 0 0.000004 27.070927 0 0.000005 0 0 0 0 0 0
$definebone "R_Finger3" "R_Hand" -7.369934 0.83031 -0.625786 -4.591167 7.136362 -4.455261 0 0 0 0 0 0
$definebone "R_Finger31" "R_Finger3" -3.331474 0 0 -38.125877 0.000001 0.000004 0 0 0 0 0 0
$definebone "R_Finger32" "R_Finger31" -2.380535 0 0 22.669529 0 0.000003 0 0 0 0 0 0
$definebone "R_Finger4" "R_Hand" -6.994003 2.167765 -1.187881 -2.110097 6.662867 -16.72366 0 0 0 0 0 0
$definebone "R_Finger41" "R_Finger4" -2.940651 0.000002 0 -45.447754 0.000005 0.000009 0 0 0 0 0 0
$definebone "R_Finger42" "R_Finger41" -1.511532 0.000001 0 15.454618 0.000347 0.000691 0 0 0 0 0 0
$definebone "L_Shoulder" "L_Clavicle" -11.251741 -0.184456 0.037533 7.14209 -21.896553 -10.877545 0 0 0 0 0 0
$definebone "R_ForeArmTwist" "R_Forearm" -11.953693 0 -0.000041 -0.000001 0.00006 0.034031 0 0 0 0 0 0
$definebone "R_ForeArmTwist1" "R_Forearm" -0.2005 0 -0.00004 -0.000001 0.00006 0.017016 0 0 0 0 0 0
$definebone "Neck" "Spine2" -21.582489 0.00004 1.690375 -19.959901 0.001089 0.000172 0 0 0 0 0 0
$definebone "Head" "Neck" -4.450859 -0.000762 0.111719 15.809743 -0.001203 -0.000573 0 0 0 0 0 0
$definebone "Pelvis" "Root" 0 -0.000038 0 0.000057 90.000037 89.999811 0 0 0 0 0 0
$definebone "L_Thigh" "Pelvis" 0 -7.124005 -0.00004 -2.458677 179.287657 0.043659 0 0 0 0 0 0
$definebone "L_ThighTwist1" "L_Thigh" -9.182892 0 0 0 -0.000057 0.033346 0 0 0 0 0 0
$definebone "L_Knee" "L_Thigh" -30.690563 0 -0.199658 5.268061 -0.000057 0.000115 0 0 0 0 0 0
$definebone "L_Calf" "L_Thigh" -30.672165 0 0 10.536177 0 0.000057 0 0 0 0 0 0
$definebone "L_CalfTwist" "L_Calf" -20.69973 0 0 -0.000001 0 -0.06864 0 0 0 0 0 0
$definebone "L_CalfTwist1" "L_Calf" -0.200497 0.000041 0 -0.000001 0 -0.03432 0 0 0 0 0 0
$definebone "L_Foot" "L_Calf" -29.865261 0 0.000001 -8.076301 0.717744 -0.144729 0 0 0 0 0 0
$definebone "L_Toe0" "L_Foot" -5.99952 0 -9.475788 -89.999982 0 0 0 0 0 0 0 0
$definebone "R_Thigh" "Pelvis" 0 7.124004 0.00004 -2.458677 -179.28737 -0.043889 0 0 0 0 0 0
$definebone "R_ThighTwist" "R_Thigh" -0.200516 0 0 0 0 -0.066864 0 0 0 0 0 0
$definebone "R_ThighTwist1" "R_Thigh" -9.182144 0 0 0 0 -0.033461 0 0 0 0 0 0
$definebone "R_Knee" "R_Thigh" -30.690559 -0.000041 -0.199658 5.268119 0 -0.000057 0 0 0 0 0 0
$definebone "R_Calf" "R_Thigh" -30.672169 -0.000041 0 10.536181 0 -0.000172 0 0 0 0 0 0
$definebone "R_CalfTwist" "R_Calf" -20.699896 0 0 0.000002 0 0.06864 0 0 0 0 0 0
$definebone "R_CalfTwist1" "R_Calf" -0.2005 0 0.000001 0.000002 0 0.03432 0 0 0 0 0 0
$definebone "R_Foot" "R_Calf" -29.865273 0 0.000002 -8.076301 -0.717744 0.144729 0 0 0 0 0 0
$definebone "R_Toe0" "R_Foot" -5.999518 0 -9.475786 -89.999982 0 0 0 0 0 0 0 0
$definebone "dagger" "Pelvis" -3.647057 6.85806 -7.968391 -6.775113 -172.556957 -17.307855 0 0 0 0 0 0
$definebone "c1280_sword001" "R_Weapon001" 1.031372 0.258331 10.567232 0.000002 0 179.999909 0 0 0 0 0 0
$definebone "Box001" "" 0 -1.5238 0 89.999982 -89.999982 0 0 0 0 0 0 0
$definebone "L_ThighTwist" "L_Thigh" -0.2005 0 0 0 0 0.066692 0 0 0 0 0 0


$sectionframes 30 119

$poseparameter "aim_pitch" -30 30 loop 0
$poseparameter "aim_yaw" -45 45 loop 0
$poseparameter "move_yaw" -180 180 loop 0

$animation "aimup_head_corrective_animation" "soc_anims\aimup_head_corrective_animation.smd" {
}

$animation "aimcenter_corrective_animation" "soc_anims\aimcenter_corrective_animation.smd" {
}

$animation "aimdown_head_corrective_animation" "soc_anims\aimdown_head_corrective_animation.smd" {
}

$animation "aimright_head_corrective_animation" "soc_anims\aimright_head_corrective_animation.smd" {
}

$animation "aimleft_head_corrective_animation" "soc_anims\aimleft_head_corrective_animation.smd" {
}

$animation "aimleft_head" "soc_anims\aimleft_head.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimleft_head_corrective_animation" 0
}

$animation "aimright_head" "soc_anims\aimright_head.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimright_head_corrective_animation" 0
}

$animation "aimcenter" "soc_anims\aimcenter.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimcenter_corrective_animation" 0
}

$animation "aimup_head" "soc_anims\aimup_head.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimup_head_corrective_animation" 0
}

$animation "aimdown_head" "soc_anims\aimdown_head.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aimdown_head_corrective_animation" 0
}

$animation "WalkF" "soc_anims\WalkF.smd" {
	fps 30
	loop
	walkframe 4 LX
	walkframe 27 LX
	walkframe 53 LX
	walkframe 56 LX
}

$animation "WalkB" "soc_anims\WalkB.smd" {
	fps 30
	loop
	walkframe 7 LX
	walkframe 30 LX
	walkframe 54 LX
	walkframe 58 LX
}

$animation "WalkL" "soc_anims\WalkL.smd" {
	fps 30
	loop
	walkframe 6 LY
	walkframe 28 LY
	walkframe 30 LY
	walkframe 58 LY
}

$animation "WalkR" "soc_anims\WalkR.smd" {
	fps 30
	loop
	walkframe 26 LY
	walkframe 48 LY
	walkframe 58 LY
}

$sequence "Ragdoll" {
	"soc_anims\Ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "aim_pitch_head" {
	"aimup_head"
	"aimcenter"
	"aimdown_head"
	autoplay
	blend "aim_pitch" -30 30
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "aim_yaw_head" {
	"aimright_head"
	"aimcenter"
	"aimleft_head"
	autoplay
	blend "aim_yaw" -45 45
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "Idle" {
	"soc_anims\Idle.smd"
	activity "ACT_IDLE" 1
	{ event 1100 10 "vox_idle_breathout" }
	{ event 1100 10 "vox_idle_breathin" }
	{ event 1100 11 "breath_pattern" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_Sit" {
	"soc_anims\Idle_Sit.smd"
	activity "ACT_IDLE_AGITATED" 1
	{ event 1100 10 "vox_idle_breathout" }
	{ event 1100 10 "vox_idle_breathin" }
	{ event 1100 11 "breath_pattern" }
	{ event 1100 70 "vox_idle_breathout" }
	{ event 1100 70 "vox_idle_breathin" }
	{ event 1100 71 "breath_pattern" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle2Stand" {
	"soc_anims\Idle2Stand.smd"
	activity "ACT_STANDUP_SWORD" 1
	{ event 1100 14 "Step" }
	{ event 1100 18 "Grab_Sword" }
	{ event 1100 25 "Step" }
	{ event 1100 58 "StandUp_GroundShake" }
	{ event 1100 62 "Step" }
	{ event 1100 83 "Pull_Sword_Out_Pre" }
	{ event 1100 94 "Pull_Sword_Out_Metal_Pre" }
	{ event 1100 112 "Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 12 LX LY
	walkframe 26 LX LY
	walkframe 51 LX LY
	walkframe 62 LX LY
	walkframe 97 LX LY
	walkframe 117 LX LY
}

$sequence "WalkAll" {
	"WalkB"
	"WalkR"
	"WalkF"
	"WalkL"
	"WalkB"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 5
	{ event 1100 27 "Step" }
	{ event 1100 53 "Step" }
	fadein 0.2
	fadeout 0.2
}

$sequence "RunAll" {
	"soc_anims\RunAll.smd"
	activity "ACT_RUN" 1
	{ event 1100 7 "Step_Run" }
	{ event 1100 19 "Step_Run" }
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 7 LX
	walkframe 15 LX
	walkframe 19 LX
	walkframe 25 LX
}

$sequence "Attack0" {
	"soc_anims\Attack0.smd"
	activity "ACT_ATTACK0" 1
	{ event 1100 0 "atk0" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 10 "Step" }
	{ event 1100 13 "Whoosh_Heavy" }
	{ event 1100 18 "Sword_Ignite" }
	{ event 1100 18 "Step_Run" }
	{ event 1100 19 "Trail_StraightSword_Start" }
	{ event 1100 19 "Whoosh_Metal" }
	{ event 1100 23 "Whoosh_Firey_Pre" }
	{ event 1100 23 "TrackingOff" }
	{ event 1100 25 "Hit" }
	{ event 1100 25 "Step_Heavy" }
	{ event 1100 29 "Trail_End" }
	{ event 1100 40 "Combo0" }
	{ event 1100 65 "Step" }
	{ event 1100 84 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY
	walkframe 10 LX LY
	walkframe 19 LX LY
	walkframe 25 LX LY
	walkframe 40 LX LY
	walkframe 50 LX LY
	walkframe 65 LX LY
	walkframe 84 LX LY
}

$sequence "Attack1" {
	"soc_anims\Attack1.smd"
	activity "ACT_ATTACK1" 1
	{ event 1100 0 "atk1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 5 "Step" }
	{ event 1100 6 "Whoosh" }
	{ event 1100 11 "Step_Run" }
	{ event 1100 18 "vox_atk" }
	{ event 1100 22 "Sword_Ignite" }
	{ event 1100 23 "Whoosh" }
	{ event 1100 23 "Trail_StraightSword_Start" }
	{ event 1100 24 "TrackingOff" }
	{ event 1100 25 "Whoosh_Firey_Pre" }
	{ event 1100 26 "Step_Heavy" }
	{ event 1100 26 "Hit" }
	{ event 1100 29 "Step" }
	{ event 1100 33 "Trail_End" }
	{ event 1100 34 "Combo1" }
	{ event 1100 76 "Step" }
	{ event 1100 92 "Step" }
	{ event 1100 100 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 11 LX LY
	walkframe 18 LX LY
	walkframe 26 LX LY
	walkframe 31 LX LY
	walkframe 52 LX LY
	walkframe 76 LX LY
	walkframe 92 LX LY
	walkframe 100 LX LY
}

$sequence "Attack2" {
	"soc_anims\Attack2.smd"
	activity "ACT_ATTACK2" 1
	{ event 1100 0 "atk2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 11 "Step_Run" }
	{ event 1100 21 "Sword_Ignite" }
	{ event 1100 22 "Whoosh_Metal" }
	{ event 1100 22 "Trail_StraightSword_Start" }
	{ event 1100 25 "TrackingOff" }
	{ event 1100 27 "Whoosh_Firey_Pre" }
	{ event 1100 27 "Hit" }
	{ event 1100 29 "Step_Heavy" }
	{ event 1100 32 "Trail_End" }
	{ event 1100 40 "vox_atk" }
	{ event 1100 69 "Step_Run" }
	{ event 1100 98 "Step" }
	{ event 1100 103 "Step" }
	{ event 1100 103 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 2 LX LY
	walkframe 11 LX LY
	walkframe 19 LX LY
	walkframe 29 LX LY
	walkframe 48 LX LY
	walkframe 61 LX LY
	walkframe 69 LX LY
	walkframe 89 LX LY
	walkframe 103 LX LY
}

$sequence "Attack3" {
	"soc_anims\Attack3.smd"
	activity "ACT_ATTACK3" 1
	{ event 1100 0 "atk3" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 4 "Whoosh_Heavy" }
	{ event 1100 12 "Step" }
	{ event 1100 34 "Step_Run" }
	{ event 1100 37 "vox_atk" }
	{ event 1100 40 "Sword_Ignite" }
	{ event 1100 41 "Whoosh_Metal" }
	{ event 1100 41 "Trail_StraightSword_Start" }
	{ event 1100 46 "Whoosh_Firey_Pre" }
	{ event 1100 46 "TrackingOff" }
	{ event 1100 47 "Step_Heavy" }
	{ event 1100 48 "Hit" }
	{ event 1100 49 "Weapon_Impact_Heavy" }
	{ event 1100 51 "Trail_End" }
	{ event 1100 63 "PickUp_Sword" }
	{ event 1100 94 "Step" }
	{ event 1100 106 "Step" }
	{ event 1100 119 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 12 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 34 LX LY
	walkframe 47 LX LY
	walkframe 77 LX LY
	walkframe 94 LX LY
	walkframe 98 LX LY
	walkframe 106 LX LY
	walkframe 119 LX LY
}

$sequence "Attack4" {
	"soc_anims\Attack4.smd"
	activity "ACT_ATTACK4" 1
	{ event 1100 0 "atk4" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 10 "Step" }
	{ event 1100 13 "vox_atk" }
	{ event 1100 42 "Step_Run" }
	{ event 1100 55 "Sword_Ignite" }
	{ event 1100 56 "Whoosh_Firey_Pre" }
	{ event 1100 56 "Trail_StraightSword_Start" }
	{ event 1100 56 "TrackingOff" }
	{ event 1100 58 "Hit" }
	{ event 1100 60 "Step_Heavy" }
	{ event 1100 60 "Trail_End" }
	{ event 1100 138 "Step" }
	{ event 1100 159 "Step" }
	{ event 1100 180 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 60
	walkframe 10 LX LY
	walkframe 30 LX LY
	walkframe 62 LX LY
	walkframe 68 LX LY
	walkframe 120 LX LY
	walkframe 138 LX LY
	walkframe 142 LX LY
	walkframe 160 LX LY
	walkframe 180 LX LY
}

$sequence "Attack5" {
	"soc_anims\Attack5.smd"
	activity "ACT_ATTACK5" 1
	{ event 1100 0 "atk5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 4 "Step" }
	{ event 1100 20 "Step_Run" }
	{ event 1100 22 "vox_atk" }
	{ event 1100 23 "Whoosh_Fire" }
	{ event 1100 34 "Sword_Ignite" }
	{ event 1100 35 "Whoosh" }
	{ event 1100 35 "Trail_StraightSword_Start" }
	{ event 1100 37 "Step_Run" }
	{ event 1100 37 "Whoosh_Firey_Pre" }
	{ event 1100 38 "Step_Heavy" }
	{ event 1100 38 "TrackingOff" }
	{ event 1100 40 "Hit" }
	{ event 1100 41 "Weapon_Impact_Heavy" }
	{ event 1100 43 "Trail_End" }
	{ event 1100 54 "PickUp_Sword" }
	{ event 1100 75 "Step" }
	{ event 1100 85 "Step" }
	{ event 1100 92 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 12 LX LY
	walkframe 25 LX LY
	walkframe 32 LX LY
	walkframe 38 LX LY
	walkframe 45 LX LY
	walkframe 62 LX LY
	walkframe 75 LX LY
	walkframe 80 LX LY
	walkframe 85 LX LY
	walkframe 92 LX LY
}

$sequence "Attack10" {
	"soc_anims\Attack10.smd"
	activity "ACT_ATTACK10" 1
	{ event 1100 0 "atk10" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 8 "Step" }
	{ event 1100 12 "Whoosh_Heavy" }
	{ event 1100 13 "Sword_Ignite" }
	{ event 1100 14 "Trail_StraightSword_Start" }
	{ event 1100 16 "Whoosh_WA_P4" }
	{ event 1100 19 "Whoosh_WA_P2" }
	{ event 1100 20 "Whoosh" }
	{ event 1100 20 "TrackingOff" }
	{ event 1100 21 "Step_Heavy" }
	{ event 1100 22 "Whoosh_Firey_Pre" }
	{ event 1100 22 "Hit" }
	{ event 1100 24 "Step" }
	{ event 1100 30 "Trail_End" }
	{ event 1100 40 "Combo10" }
	{ event 1100 68 "Step" }
	{ event 1100 77 "Step" }
	{ event 1100 92 "Step" }
	{ event 1100 108 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 2 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 21 LX LY
	walkframe 24 LX LY
	walkframe 60 LX LY
	walkframe 68 LX LY
	walkframe 77 LX LY
	walkframe 81 LX LY
	walkframe 90 LX LY
	walkframe 108 LX LY
}

$sequence "Attack11" {
	"soc_anims\Attack11.smd"
	activity "ACT_ATTACK11" 1
	{ event 1100 0 "atk11" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 6 "Step_Run" }
	{ event 1100 11 "Step_Run" }
	{ event 1100 19 "Step_Run" }
	{ event 1100 21 "Whoosh_WA_P4" }
	{ event 1100 23 "Whoosh_Heavy" }
	{ event 1100 24 "Whoosh_WA_P2" }
	{ event 1100 24 "Sword_Ignite" }
	{ event 1100 25 "Step_Heavy" }
	{ event 1100 25 "Trail_StraightSword_Start" }
	{ event 1100 25 "Whoosh_Firey_Pre" }
	{ event 1100 25 "TrackingOff" }
	{ event 1100 27 "Hit" }
	{ event 1100 28 "Trail_End" }
	{ event 1100 32 "Step" }
	{ event 1100 40 "vox_atk" }
	{ event 1100 67 "Step" }
	{ event 1100 75 "Step" }
	{ event 1100 94 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY
	walkframe 25 LX LY
	walkframe 32 LX LY
	walkframe 58 LX LY
	walkframe 67 LX LY
	walkframe 69 LX LY
	walkframe 75 LX LY
	walkframe 94 LX LY
}

$sequence "Attack12" {
	"soc_anims\Attack12.smd"
	activity "ACT_ATTACK12" 1
	{ event 1100 0 "atk12" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 15 "Step_Run" }
	{ event 1100 21 "Step_Run" }
	{ event 1100 36 "vox_atk" }
	{ event 1100 46 "Whoosh_WA_P1" }
	{ event 1100 52 "Whoosh_WA_P4" }
	{ event 1100 55 "Sword_Ignite" }
	{ event 1100 56 "Trail_StraightSword_Start" }
	{ event 1100 58 "Whoosh_WA_P2" }
	{ event 1100 60 "Step_Heavy" }
	{ event 1100 60 "TrackingOff" }
	{ event 1100 61 "Whoosh_Firey_Pre" }
	{ event 1100 62 "Hit" }
	{ event 1100 70 "Trail_End" }
	{ event 1100 118 "Step" }
	{ event 1100 134 "Step" }
	{ event 1100 141 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 21 LX LY
	walkframe 26 LX LY
	walkframe 54 LX LY
	walkframe 61 LX LY
	walkframe 73 LX LY
	walkframe 96 LX LY
	walkframe 118 LX LY
	walkframe 121 LX LY
	walkframe 134 LX LY
	walkframe 141 LX LY
}

$sequence "Attack13" {
	"soc_anims\Attack13.smd"
	activity "ACT_ATTACK13" 1
	{ event 1100 0 "atk13" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 8 "Step_Run" }
	{ event 1100 12 "Whoosh_Heavy" }
	{ event 1100 15 "Sword_Ignite" }
	{ event 1100 16 "Trail_StraightSword_Start" }
	{ event 1100 16 "Whoosh_WA_P4" }
	{ event 1100 19 "Whoosh_WA_P2" }
	{ event 1100 20 "Whoosh" }
	{ event 1100 20 "TrackingOff" }
	{ event 1100 21 "Step_Heavy" }
	{ event 1100 22 "Whoosh_Firey_Pre" }
	{ event 1100 22 "Hit" }
	{ event 1100 24 "Step_Run" }
	{ event 1100 30 "Trail_End" }
	{ event 1100 40 "Combo13" }
	{ event 1100 68 "Step" }
	{ event 1100 77 "Step" }
	{ event 1100 90 "Step" }
	{ event 1100 108 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 3 LX LY
	walkframe 8 LX LY
	walkframe 11 LX LY
	walkframe 21 LX LY
	walkframe 24 LX LY
	walkframe 60 LX LY
	walkframe 68 LX LY
	walkframe 77 LX LY
	walkframe 82 LX LY
	walkframe 90 LX LY
	walkframe 108 LX LY
}

$sequence "Attack20" {
	"soc_anims\Attack20.smd"
	activity "ACT_ATTACK20" 1
	{ event 1100 0 "atk20" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 11 "Sword_Ignite" }
	{ event 1100 12 "Whoosh" }
	{ event 1100 12 "Trail_StraightSword_Start" }
	{ event 1100 15 "TrackingOff" }
	{ event 1100 16 "Whoosh_Firey_Pre" }
	{ event 1100 17 "Step_Heavy" }
	{ event 1100 17 "Hit" }
	{ event 1100 20 "vox_atk" }
	{ event 1100 22 "Trail_End" }
	{ event 1100 22 "Step_Run" }
	{ event 1100 31 "Combo20" }
	{ event 1100 32 "Whoosh_Heavy" }
	{ event 1100 47 "Step" }
	{ event 1100 67 "Step" }
	{ event 1100 85 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 17 LX LY
	walkframe 22 LX LY
	walkframe 37 LX LY
	walkframe 47 LX LY
	walkframe 57 LX LY
	walkframe 67 LX LY
	walkframe 85 LX LY
}

$sequence "Attack21" {
	"soc_anims\Attack21.smd"
	activity "ACT_ATTACK21" 1
	{ event 1100 0 "atk21" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 5 "vox_atk" }
	{ event 1100 16 "Step_Run" }
	{ event 1100 21 "Step_Run" }
	{ event 1100 27 "Sword_Ignite" }
	{ event 1100 28 "Whoosh_Metal" }
	{ event 1100 28 "Trail_StraightSword_Start" }
	{ event 1100 32 "Whoosh_Firey_Pre" }
	{ event 1100 32 "TrackingOff" }
	{ event 1100 34 "Step_Heavy" }
	{ event 1100 34 "Hit" }
	{ event 1100 36 "vox_atk" }
	{ event 1100 38 "Step_Run" }
	{ event 1100 40 "Trail_End" }
	{ event 1100 44 "Combo21" }
	{ event 1100 50 "Whoosh_Heavy" }
	{ event 1100 64 "Step" }
	{ event 1100 84 "Step" }
	{ event 1100 102 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 34 LX LY
	walkframe 39 LX LY
	walkframe 54 LX LY
	walkframe 64 LX LY
	walkframe 74 LX LY
	walkframe 84 LX LY
	walkframe 102 LX LY
}

$sequence "Attack22" {
	"soc_anims\Attack22.smd"
	activity "ACT_ATTACK22" 1
	{ event 1100 0 "atk22" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 8 "Step_Run" }
	{ event 1100 12 "Step_Run" }
	{ event 1100 17 "Sword_Ignite" }
	{ event 1100 18 "Whoosh_Metal" }
	{ event 1100 18 "Trail_StraightSword_Start" }
	{ event 1100 21 "TrackingOff" }
	{ event 1100 23 "Whoosh_Firey_Pre" }
	{ event 1100 23 "Hit" }
	{ event 1100 25 "Step_Heavy" }
	{ event 1100 28 "Trail_End" }
	{ event 1100 48 "Whoosh_Heavy" }
	{ event 1100 65 "Step" }
	{ event 1100 93 "Step" }
	{ event 1100 100 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 12 LX LY
	walkframe 25 LX LY
	walkframe 40 LX LY
	walkframe 65 LX LY
	walkframe 84 LX LY
	walkframe 93 LX LY
	walkframe 100 LX LY
}

$sequence "Attack23" {
	"soc_anims\Attack23.smd"
	activity "ACT_ATTACK23" 1
	{ event 1100 0 "atk23" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 8 "Step_Run" }
	{ event 1100 18 "Step_Run" }
	{ event 1100 19 "Sword_Ignite" }
	{ event 1100 20 "Whoosh_Metal" }
	{ event 1100 20 "Trail_StraightSword_Start" }
	{ event 1100 26 "Whoosh_Firey_Pre" }
	{ event 1100 26 "TrackingOff" }
	{ event 1100 27 "Step_Heavy" }
	{ event 1100 28 "Hit" }
	{ event 1100 29 "Weapon_Impact_Heavy" }
	{ event 1100 31 "Trail_End" }
	{ event 1100 44 "PickUp_Sword" }
	{ event 1100 74 "Step" }
	{ event 1100 86 "Step" }
	{ event 1100 100 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LX LY
	walkframe 27 LX LY
	walkframe 57 LX LY
	walkframe 74 LX LY
	walkframe 78 LX LY
	walkframe 86 LX LY
	walkframe 100 LX LY
}

$sequence "Attack24" {
	"soc_anims\Attack24.smd"
	activity "ACT_ATTACK24" 1
	{ event 1100 0 "atk24" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 6 "Step" }
	{ event 1100 11 "Step_Run" }
	{ event 1100 13 "vox_atk" }
	{ event 1100 14 "Sword_Ignite" }
	{ event 1100 15 "Whoosh_Metal" }
	{ event 1100 15 "Trail_StraightSword_Start" }
	{ event 1100 19 "Whoosh_Firey_Pre" }
	{ event 1100 19 "TrackingOff" }
	{ event 1100 20 "Step_Heavy" }
	{ event 1100 21 "Hit" }
	{ event 1100 24 "Step_Run" }
	{ event 1100 25 "Trail_End" }
	{ event 1100 58 "Step" }
	{ event 1100 66 "Step" }
	{ event 1100 88 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 5 LX LY
	walkframe 11 LX LY
	walkframe 20 LX LY
	walkframe 24 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 66 LX LY
	walkframe 88 LX LY
}

$sequence "Attack0_1" {
	"soc_anims\Attack0_1.smd"
	activity "ACT_ATTACK0_1" 1
	{ event 1100 0 "atk0_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 6 "vox_atk" }
	{ event 1100 8 "Step" }
	{ event 1100 15 "Lance_Ignite" }
	{ event 1100 16 "Step_Heavy" }
	{ event 1100 16 "Trail_Lance_Start" }
	{ event 1100 17 "Whoosh_Firey_Pre" }
	{ event 1100 18 "TrackingOff" }
	{ event 1100 20 "Hit" }
	{ event 1100 22 "Trail_End" }
	{ event 1100 23 "Step_Run" }
	{ event 1100 26 "Combo0_1" }
	{ event 1100 38 "Step" }
	{ event 1100 57 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 3 LX LY
	walkframe 8 LX LY
	walkframe 16 LX LY
	walkframe 22 LX LY
	walkframe 30 LX LY
	walkframe 38 LX LY
	walkframe 57 LX LY
}

$sequence "Attack1_1" {
	"soc_anims\Attack1_1.smd"
	activity "ACT_ATTACK1_1" 1
	{ event 1100 0 "atk1_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 9 "Step" }
	{ event 1100 30 "Whoosh_Heavy" }
	{ event 1100 30 "Lance_Ignite" }
	{ event 1100 31 "Trail_Lance_Start" }
	{ event 1100 34 "Whoosh_Firey_Pre" }
	{ event 1100 34 "TrackingOff" }
	{ event 1100 36 "Hit" }
	{ event 1100 38 "Trail_End" }
	{ event 1100 39 "Step_Heavy" }
	{ event 1100 44 "vox_atk" }
	{ event 1100 74 "Step" }
	{ event 1100 93 "Step" }
	{ event 1100 99 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 9 LX LY
	walkframe 24 LX LY
	walkframe 33 LX LY
	walkframe 39 LX LY
	walkframe 60 LX LY
	walkframe 74 LX LY
	walkframe 93 LX LY
	walkframe 99 LX LY
}

$sequence "Attack2_1" {
	"soc_anims\Attack2_1.smd"
	activity "ACT_ATTACK2_1" 1
	blend "move_yaw" -180 180
	{ event 1100 0 "atk2_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 18 "Step_Run" }
	{ event 1100 40 "Step_Run" }
	{ event 1100 42 "Whoosh_Heavy" }
	{ event 1100 50 "vox_atk" }
	{ event 1100 51 "Lance_Ignite" }
	{ event 1100 52 "Whoosh_Firey_Pre" }
	{ event 1100 52 "Trail_Lance_Start" }
	{ event 1100 55 "Step_Heavy" }
	{ event 1100 56 "TrackingOff" }
	{ event 1100 58 "Hit" }
	{ event 1100 60 "Trail_End" }
	{ event 1100 66 "Step_Run" }
	{ event 1100 104 "Whoosh_Heavy" }
	{ event 1100 128 "Step" }
	{ event 1100 142 "Step" }
	{ event 1100 148 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 60
	walkframe 6 LX LY
	walkframe 18 LX LY
	walkframe 30 LX LY
	walkframe 40 LX LY
	walkframe 56 LX LY
	walkframe 60 LX LY
	walkframe 66 LX LY
	walkframe 104 LX LY
	walkframe 128 LX LY
	walkframe 130 LX LY
	walkframe 142 LX LY
	walkframe 148 LX LY
}

$sequence "Attack5_1" {
	"soc_anims\Attack5_1.smd"
	activity "ACT_ATTACK5_1" 1
	{ event 1100 0 "atk5_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 4 "Step_Run" }
	{ event 1100 5 "Whoosh_Heavy" }
	{ event 1100 15 "Lance_Ignite" }
	{ event 1100 16 "Trail_Lance_Start" }
	{ event 1100 16 "Whoosh_Firey_Pre" }
	{ event 1100 18 "Step_Heavy" }
	{ event 1100 19 "TrackingOff" }
	{ event 1100 21 "Hit" }
	{ event 1100 24 "Step" }
	{ event 1100 28 "Trail_End" }
	{ event 1100 30 "Whoosh_Heavy" }
	{ event 1100 43 "Step" }
	{ event 1100 55 "Step" }
	{ event 1100 78 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 3 LX LY
	walkframe 5 LX LY
	walkframe 18 LX LY
	walkframe 24 LX LY
	walkframe 32 LX LY
	walkframe 43 LX LY
	walkframe 53 LX LY
	walkframe 78 LX LY
}

$sequence "Attack7_1" {
	"soc_anims\Attack7_1.smd"
	activity "ACT_ATTACK7_1" 1
	{ event 1100 0 "atk7_1" }
	{ event 1100 0 "TrackingOff" }
	{ event 1100 0 "miracle_extend" }
	{ event 1100 7 "Step" }
	{ event 1100 11 "WOTG_Cast" }
	{ event 1100 14 "Step" }
	{ event 1100 30 "Hit" }
	{ event 1100 30 "WOTG_Explode" }
	{ event 1100 68 "Step" }
	{ event 1100 77 "Step" }
	{ event 1100 78 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 11 LX LY
	walkframe 29 LX LY
	walkframe 34 LX LY
	walkframe 37 LX LY
	walkframe 62 LX LY
	walkframe 69 LX LY
	walkframe 78 LX LY
}

$sequence "Attack8_1" {
	"soc_anims\Attack8_1.smd"
	activity "ACT_ATTACK8_1" 1
	{ event 1100 0 "atk8_1" }
	{ event 1100 0 "TrackingOff" }
	{ event 1100 8 "Step" }
	{ event 1100 18 "Step" }
	{ event 1100 20 "Knee" }
	{ event 1100 22 "miracle_pre" }
	{ event 1100 82 "Miracle_Heal_Pre1" }
	{ event 1100 86 "Miracle_Heal_Pre2" }
	{ event 1100 125 "Step" }
	{ event 1100 135 "Step" }
	{ event 1100 145 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Attack10_1" {
	"soc_anims\Attack10_1.smd"
	activity "ACT_ATTACK10_1" 1
	{ event 1100 0 "atk10_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 4 "vox_atk" }
	{ event 1100 10 "Step" }
	{ event 1100 12 "Step" }
	{ event 1100 42 "Step_Run" }
	{ event 1100 52 "Step_Run" }
	{ event 1100 55 "Whoosh_WA_P1" }
	{ event 1100 57 "Lance_Ignite" }
	{ event 1100 58 "Trail_Lance_Start" }
	{ event 1100 59 "TrackingOff" }
	{ event 1100 60 "Whoosh_WA_P2" }
	{ event 1100 61 "Hit" }
	{ event 1100 62 "Step_Heavy" }
	{ event 1100 62 "Whoosh_Fire" }
	{ event 1100 65 "Trail_End" }
	{ event 1100 70 "vox_atk" }
	{ event 1100 80 "Whoosh_Heavy" }
	{ event 1100 93 "Step" }
	{ event 1100 100 "Step" }
	{ event 1100 112 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 9 LX LY
	walkframe 12 LX LY
	walkframe 28 LX LY
	walkframe 32 LX LY
	walkframe 42 LX LY
	walkframe 52 LX LY
	walkframe 66 LX LY
	walkframe 69 LX LY
	walkframe 79 LX LY
	walkframe 93 LX LY
	walkframe 100 LX LY
	walkframe 112 LX LY
}

$sequence "Attack11_1" {
	"soc_anims\Attack11_1.smd"
	activity "ACT_ATTACK11_1" 1
	{ event 1100 0 "atk11_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 19 "Step" }
	{ event 1100 41 "Lance_Ignite" }
	{ event 1100 42 "Whoosh_Heavy" }
	{ event 1100 42 "Trail_Lance_Start" }
	{ event 1100 49 "Whoosh_WA_P1" }
	{ event 1100 50 "TrackingOff" }
	{ event 1100 52 "Whoosh_WA_P2" }
	{ event 1100 52 "Hit" }
	{ event 1100 54 "Step_Run" }
	{ event 1100 54 "Whoosh_Fire" }
	{ event 1100 54 "Trail_End" }
	{ event 1100 57 "Step_Heavy" }
	{ event 1100 65 "vox_atk" }
	{ event 1100 77 "Whoosh_Heavy" }
	{ event 1100 88 "Grab_Sword" }
	{ event 1100 96 "Step" }
	{ event 1100 110 "Step" }
	{ event 1100 118 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 19 LX LY
	walkframe 30 LX LY
	walkframe 36 LX LY
	walkframe 48 LX LY
	walkframe 58 LX LY
	walkframe 64 LX LY
	walkframe 77 LX LY
	walkframe 96 LX LY
	walkframe 103 LX LY
	walkframe 110 LX LY
	walkframe 118 LX LY
}

$sequence "Attack13_1" {
	"soc_anims\Attack13_1.smd"
	activity "ACT_ATTACK13_1" 1
	{ event 1100 0 "atk13_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 4 "Step" }
	{ event 1100 5 "Grab_Sword" }
	{ event 1100 12 "Grab_Sword" }
	{ event 1100 14 "Step" }
	{ event 1100 34 "vox_atk" }
	{ event 1100 36 "Whoosh" }
	{ event 1100 37 "Lance_Ignite" }
	{ event 1100 38 "Trail_Lance_Start" }
	{ event 1100 39 "TrackingOff" }
	{ event 1100 40 "Whoosh_Firey_Pre" }
	{ event 1100 41 "Hit" }
	{ event 1100 41 "Step_Heavy" }
	{ event 1100 44 "Trail_End" }
	{ event 1100 77 "Whoosh_Heavy" }
	{ event 1100 96 "Grab_Sword" }
	{ event 1100 102 "Step" }
	{ event 1100 114 "Step" }
	{ event 1100 120 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 2 LX LY
	walkframe 4 LX LY
	walkframe 16 LX LY
	walkframe 33 LX LY
	walkframe 41 LX LY
	walkframe 44 LX LY
	walkframe 84 LX LY
	walkframe 102 LX LY
	walkframe 107 LX LY
	walkframe 114 LX LY
	walkframe 120 LX LY
}

$sequence "Attack20_1" {
	"soc_anims\Attack20_1.smd"
	activity "ACT_ATTACK20_1" 1
	{ event 1100 0 "atk20_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 10 "vox_atk" }
	{ event 1100 15 "Lance_Ignite" }
	{ event 1100 16 "Step_Heavy" }
	{ event 1100 16 "Trail_Lance_Start" }
	{ event 1100 17 "Whoosh_Firey_Pre" }
	{ event 1100 19 "TrackingOff" }
	{ event 1100 21 "Hit" }
	{ event 1100 21 "Step_Run" }
	{ event 1100 24 "Trail_End" }
	{ event 1100 38 "Step" }
	{ event 1100 57 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 5 LX LY
	walkframe 16 LX LY
	walkframe 18 LX LY
	walkframe 21 LX LY
	walkframe 30 LX LY
	walkframe 38 LX LY
	walkframe 57 LX LY
}

$sequence "Attack23_1" {
	"soc_anims\Attack23_1.smd"
	activity "ACT_ATTACK23_1" 1
	{ event 1100 0 "atk23_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 3 "Whoosh_Heavy" }
	{ event 1100 13 "Step" }
	{ event 1100 39 "Lance_Ignite" }
	{ event 1100 40 "Whoosh_Heavy" }
	{ event 1100 40 "Trail_Lance_Start" }
	{ event 1100 47 "Whoosh" }
	{ event 1100 48 "Whoosh_Heavy" }
	{ event 1100 50 "Whoosh_Firey_Pre" }
	{ event 1100 53 "Hit" }
	{ event 1100 53 "Step_Run" }
	{ event 1100 59 "Whoosh" }
	{ event 1100 59 "Lance_Ignite" }
	{ event 1100 60 "Whoosh_Heavy" }
	{ event 1100 60 "Step_Run" }
	{ event 1100 62 "Whoosh_Firey_Pre" }
	{ event 1100 62 "TrackingOff" }
	{ event 1100 64 "Hit" }
	{ event 1100 65 "Step_Run" }
	{ event 1100 72 "Trail_End" }
	{ event 1100 95 "Step" }
	{ event 1100 104 "Step" }
	{ event 1100 113 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 13 LX LY
	walkframe 46 LX LY
	walkframe 52 LX LY
	walkframe 65 LX LY
	walkframe 86 LX LY
	walkframe 95 LX LY
	walkframe 104 LX LY
	walkframe 113 LX LY
}

$sequence "Attack0_4" {
	"soc_anims\Attack0_4.smd"
	activity "ACT_ATTACK0_4" 1
	{ event 1100 0 "atk0_4" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "miracle_extend" }
	{ event 1100 0 "miracle_pre" }
	{ event 1100 20 "Step" }
	{ event 1100 45 "TrackingOff" }
	{ event 1100 45 "Cast_SoulSpear" }
	{ event 1100 72 "Step" }
	{ event 1100 80 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY
	walkframe 20 LX LY
	walkframe 65 LX LY
	walkframe 72 LX LY
	walkframe 80 LX LY
}

$sequence "Attack1_4" {
	"soc_anims\Attack1_4.smd"
	activity "ACT_ATTACK1_4" 1
	{ event 1100 0 "atk1_4" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "miracle_pre" }
	{ event 1100 5 "Step" }
	{ event 1100 38 "Step" }
	{ event 1100 38 "TrackingOff" }
	{ event 1100 40 "Step" }
	{ event 1100 40 "Cast_FarronDart" }
	{ event 1100 46 "Cast_FarronDart" }
	{ event 1100 50 "Cast_FarronDart" }
	{ event 1100 84 "Step" }
	{ event 1100 96 "Step" }
	{ event 1100 105 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 18 LX LY
	walkframe 23 LX LY
	walkframe 32 LX LY
	walkframe 38 LX LY
	walkframe 40 LX LY
	walkframe 60 LX LY
	walkframe 79 LX LY
	walkframe 84 LX LY
	walkframe 96 LX LY
	walkframe 105 LX LY
}

$sequence "Attack4_4" {
	"soc_anims\Attack4_4.smd"
	activity "ACT_ATTACK4_4" 1
	{ event 1100 0 "atk4_4" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 3 "SoulSword_Cast" }
	{ event 1100 18 "SoulSword_Swing" }
	{ event 1100 25 "Step_Heavy" }
	{ event 1100 34 "SoulSword_WA" }
	{ event 1100 34 "Trail_SoulSword_Start" }
	{ event 1100 36 "TrackingOff" }
	{ event 1100 38 "Hit" }
	{ event 1100 42 "Step" }
	{ event 1100 44 "Trail_End" }
	{ event 1100 47 "Combo4_4" }
	{ event 1100 79 "Step" }
	{ event 1100 88 "Step" }
	{ event 1100 90 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 2 LX LY
	walkframe 5 LX LY
	walkframe 15 LX LY
	walkframe 25 LX LY
	walkframe 32 LX LY
	walkframe 43 LX LY
	walkframe 67 LX LY
	walkframe 79 LX LY
	walkframe 88 LX LY
	walkframe 90 LX LY
}

$sequence "Attack5_4" {
	"soc_anims\Attack5_4.smd"
	activity "ACT_ATTACK5_4" 1
	{ event 1100 0 "atk5_4" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "miracle_extend" }
	{ event 1100 14 "SoulSword_Cast" }
	{ event 1100 14 "Step" }
	{ event 1100 22 "SoulSword_Swing" }
	{ event 1100 29 "SoulSword_WA" }
	{ event 1100 29 "Trail_SoulSword_Start" }
	{ event 1100 32 "TrackingOff" }
	{ event 1100 34 "Step_Heavy" }
	{ event 1100 34 "Hit" }
	{ event 1100 35 "Weapon_Impact_Heavy" }
	{ event 1100 36 "Trail_End" }
	{ event 1100 79 "Step" }
	{ event 1100 88 "Step" }
	{ event 1100 90 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 14 LX LY
	walkframe 29 LX LY
	walkframe 34 LX LY
	walkframe 69 LX LY
	walkframe 79 LX LY
	walkframe 82 LX LY
	walkframe 88 LX LY
	walkframe 90 LX LY
}

$sequence "Attack9_4" {
	"soc_anims\Attack9_4.smd"
	activity "ACT_ATTACK9_4" 1
	{ event 1100 0 "atk9_4" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "SoulStream_Charge" }
	{ event 1100 8 "Step" }
	{ event 1100 20 "Step" }
	{ event 1100 92 "TrackingOff" }
	{ event 1100 93 "Step" }
	{ event 1100 94 "SoulStream_Fire" }
	{ event 1100 164 "Step" }
	{ event 1100 183 "Step" }
	{ event 1100 199 "Step" }
	{ event 1100 213 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 11 LX LY
	walkframe 23 LX LY
	walkframe 85 LX LY
	walkframe 94 LX LY
	walkframe 139 LX LY
	walkframe 158 LX LY
	walkframe 164 LX LY
	walkframe 176 LX LY
	walkframe 183 LX LY
	walkframe 200 LX LY
	walkframe 213 LX LY
}

$sequence "Attack0_2" {
	"soc_anims\Attack0_2.smd"
	activity "ACT_ATTACK0_2" 1
	{ event 1100 0 "atk0_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 5 "Step" }
	{ event 1100 5 "Whoosh_Heavy" }
	{ event 1100 11 "Whoosh" }
	{ event 1100 12 "Curved_Ignite" }
	{ event 1100 13 "TrackingOff" }
	{ event 1100 13 "Trail_CurvedSword_Start" }
	{ event 1100 14 "Whoosh_Firey_Pre" }
	{ event 1100 15 "Step_Heavy" }
	{ event 1100 15 "Hit" }
	{ event 1100 19 "Step_Run" }
	{ event 1100 20 "Trail_End" }
	{ event 1100 22 "Combo0_2" }
	{ event 1100 36 "Step" }
	{ event 1100 46 "Step" }
	{ event 1100 56 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 10 LX LY
	walkframe 15 LX LY
	walkframe 19 LX LY
	walkframe 28 LX LY
	walkframe 36 LX LY
	walkframe 46 LX LY
	walkframe 56 LX LY
}

$sequence "Attack1_2" {
	"soc_anims\Attack1_2.smd"
	activity "ACT_ATTACK1_2" 1
	{ event 1100 0 "atk1_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 13 "Whoosh" }
	{ event 1100 15 "Curved_Ignite" }
	{ event 1100 16 "TrackingOff" }
	{ event 1100 16 "Trail_CurvedSword_Start" }
	{ event 1100 17 "Whoosh_Firey_Pre" }
	{ event 1100 18 "Step_Heavy" }
	{ event 1100 18 "Hit" }
	{ event 1100 19 "Step_Run" }
	{ event 1100 21 "Trail_End" }
	{ event 1100 38 "Step" }
	{ event 1100 55 "Step" }
	{ event 1100 59 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 11 LX LY
	walkframe 17 LX LY
	walkframe 19 LX LY
	walkframe 29 LX LY
	walkframe 38 LX LY
	walkframe 45 LX LY
	walkframe 55 LX LY
	walkframe 59 LX LY
}

$sequence "Attack2_2" {
	"soc_anims\Attack2_2.smd"
	activity "ACT_ATTACK2_2" 1
	{ event 1100 0 "atk2_1" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 13 "Whoosh_Heavy" }
	{ event 1100 20 "Step_Run" }
	{ event 1100 26 "Step_Heavy" }
	{ event 1100 27 "Curved_Ignite" }
	{ event 1100 28 "Trail_CurvedSword_Start" }
	{ event 1100 28 "Whoosh" }
	{ event 1100 28 "TrackingOff" }
	{ event 1100 30 "Whoosh_Firey_Pre" }
	{ event 1100 30 "Hit" }
	{ event 1100 35 "Trail_End" }
	{ event 1100 46 "Whoosh_Heavy" }
	{ event 1100 56 "Step" }
	{ event 1100 67 "Step" }
	{ event 1100 74 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 15 LX LY
	walkframe 26 LX LY
	walkframe 41 LX LY
	walkframe 56 LX LY
	walkframe 67 LX LY
	walkframe 74 LX LY
}

$sequence "Attack5_2" {
	"soc_anims\Attack5_2.smd"
	activity "ACT_ATTACK5_2" 1
	{ event 1100 0 "atk5_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 6 "Step" }
	{ event 1100 8 "Step" }
	{ event 1100 13 "Step_Run" }
	{ event 1100 18 "Step_Heavy" }
	{ event 1100 34 "Curved_Ignite" }
	{ event 1100 35 "Trail_CurvedSword_Start" }
	{ event 1100 35 "Whoosh_Metal" }
	{ event 1100 37 "Whoosh_Firey_Pre" }
	{ event 1100 37 "TrackingOff" }
	{ event 1100 39 "Hit" }
	{ event 1100 40 "Step_Heavy" }
	{ event 1100 44 "Trail_End" }
	{ event 1100 45 "Step_Run" }
	{ event 1100 57 "Whoosh_Heavy" }
	{ event 1100 67 "Step" }
	{ event 1100 77 "Step" }
	{ event 1100 87 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY
	walkframe 15 LX LY
	walkframe 18 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 45 LX LY
	walkframe 58 LX LY
	walkframe 67 LX LY
	walkframe 77 LX LY
	walkframe 87 LX LY
}

$sequence "Attack6_2" {
	"soc_anims\Attack6_2.smd"
	activity "ACT_ATTACK6_2" 1
	{ event 1100 0 "atk6_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 6 "Step" }
	{ event 1100 8 "Step" }
	{ event 1100 14 "Step_Run" }
	{ event 1100 17 "Step_Heavy" }
	{ event 1100 20 "Whoosh_Heavy" }
	{ event 1100 35 "Curved_Ignite" }
	{ event 1100 36 "Whoosh_Metal" }
	{ event 1100 36 "Trail_CurvedSword_Start" }
	{ event 1100 38 "Whoosh_Firey_Pre" }
	{ event 1100 39 "Step_Run" }
	{ event 1100 39 "TrackingOff" }
	{ event 1100 41 "Hit" }
	{ event 1100 45 "Step_Heavy" }
	{ event 1100 46 "Trail_End" }
	{ event 1100 58 "Whoosh_Heavy" }
	{ event 1100 67 "Step" }
	{ event 1100 77 "Step" }
	{ event 1100 87 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY
	walkframe 14 LX LY
	walkframe 18 LX LY
	walkframe 28 LX LY
	walkframe 34 LX LY
	walkframe 45 LX LY
	walkframe 58 LX LY
	walkframe 67 LX LY
	walkframe 77 LX LY
	walkframe 87 LX LY
}

$sequence "Attack10_2" {
	"soc_anims\Attack10_2.smd"
	activity "ACT_ATTACK10_2" 1
	{ event 1100 0 "atk10_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 2 "Whoosh_Heavy" }
	{ event 1100 16 "Step_Run" }
	{ event 1100 18 "vox_atk" }
	{ event 1100 19 "Curved_Ignite" }
	{ event 1100 20 "Whoosh_Metal" }
	{ event 1100 20 "Trail_CurvedSword_Start" }
	{ event 1100 22 "Whoosh_Firey_Pre" }
	{ event 1100 30 "Trail_End" }
	{ event 1100 32 "Curved_Ignite" }
	{ event 1100 33 "Trail_CurvedSword_Start" }
	{ event 1100 34 "Whoosh_Metal" }
	{ event 1100 26 "Hit" }
	{ event 1100 36 "Whoosh_Firey_Pre" }
	{ event 1100 37 "TrackingOff" }
	{ event 1100 38 "Step_Run" }
	{ event 1100 39 "Hit" }
	{ event 1100 40 "Step_Heavy" }
	{ event 1100 41 "Weapon_Impact_Heavy" }
	{ event 1100 42 "Trail_End" }
	{ event 1100 43 "vox_atk" }
	{ event 1100 51 "PickUp_Sword" }
	{ event 1100 65 "Step" }
	{ event 1100 71 "Step" }
	{ event 1100 82 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 5 LX LY
	walkframe 16 LX LY
	walkframe 24 LX LY
	walkframe 39 LX LY
	walkframe 42 LX LY
	walkframe 53 LX LY
	walkframe 65 LX LY
	walkframe 72 LX LY
	walkframe 82 LX LY
}

$sequence "Attack11_2" {
	"soc_anims\Attack11_2.smd"
	activity "ACT_ATTACK11_2" 1
	{ event 1100 0 "atk11_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 4 "Step" }
	{ event 1100 11 "Curved_Ignite" }
	{ event 1100 12 "Whoosh_Metal" }
	{ event 1100 12 "Trail_CurvedSword_Start" }
	{ event 1100 14 "Whoosh_Firey_Pre" }
	{ event 1100 15 "TrackingOff" }
	{ event 1100 17 "Hit" }
	{ event 1100 23 "Trail_End" }
	{ event 1100 26 "Knee" }
	{ event 1100 36 "Step_Run" }
	{ event 1100 42 "Step_Run" }
	{ event 1100 57 "Step" }
	{ event 1100 60 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 23 LX LY
	walkframe 36 LX LY
	walkframe 42 LX LY
	walkframe 49 LX LY
	walkframe 57 LX LY
	walkframe 60 LX LY
}

$sequence "Attack12_2" {
	"soc_anims\Attack12_2.smd"
	activity "ACT_ATTACK12_2" 1
	{ event 1100 0 "atk12_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 4 "Step" }
	{ event 1100 14 "Step" }
	{ event 1100 18 "Curved_Ignite" }
	{ event 1100 19 "Whoosh_Metal" }
	{ event 1100 19 "Trail_CurvedSword_Start" }
	{ event 1100 21 "Whoosh_Firey_Pre" }
	{ event 1100 21 "vox_atk" }
	{ event 1100 23 "Hit" }
	{ event 1100 30 "Trail_End" }
	{ event 1100 34 "Curved_Ignite" }
	{ event 1100 35 "Step_Run" }
	{ event 1100 35 "Whoosh_Metal" }
	{ event 1100 35 "Trail_CurvedSword_Start" }
	{ event 1100 37 "Whoosh_Firey_Pre" }
	{ event 1100 37 "TrackingOff" }
	{ event 1100 39 "Step_Heavy" }
	{ event 1100 39 "Hit" }
	{ event 1100 43 "Trail_End" }
	{ event 1100 68 "Step" }
	{ event 1100 72 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY
	walkframe 14 LX LY
	walkframe 22 LX LY
	walkframe 40 LX LY
	walkframe 56 LX LY
	walkframe 68 LX LY
	walkframe 72 LX LY
}

$sequence "Attack14_2" {
	"soc_anims\Attack14_2.smd"
	activity "ACT_ATTACK14_2" 1
	{ event 1100 0 "atk14_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 8 "Step" }
	{ event 1100 13 "Curved_Ignite" }
	{ event 1100 14 "Whoosh_WA_P4" }
	{ event 1100 14 "Trail_CurvedSword_Start" }
	{ event 1100 16 "Step_Run" }
	{ event 1100 17 "Whoosh_WA_P2" }
	{ event 1100 19 "Step_Heavy" }
	{ event 1100 20 "TrackingOff" }
	{ event 1100 20 "Whoosh_Firey_Pre" }
	{ event 1100 22 "Hit" }
	{ event 1100 25 "Trail_End" }
	{ event 1100 30 "Combo14_2" }
	{ event 1100 47 "Step" }
	{ event 1100 60 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 3 LX LY
	walkframe 8 LX LY
	walkframe 16 LX LY
	walkframe 19 LX LY
	walkframe 21 LX LY
	walkframe 35 LX LY
	walkframe 47 LX LY
	walkframe 60 LX LY
}

$sequence "Attack15_2" {
	"soc_anims\Attack15_2.smd"
	activity "ACT_ATTACK15_2" 1
	{ event 1100 0 "atk15_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 22 "Step_Run" }
	{ event 1100 23 "Whoosh_WA_P4" }
	{ event 1100 23 "Curved_Ignite" }
	{ event 1100 24 "Trail_CurvedSword_Start" }
	{ event 1100 25 "Whoosh_WA_P2" }
	{ event 1100 25 "TrackingOff" }
	{ event 1100 26 "Step_Heavy" }
	{ event 1100 27 "Whoosh_Firey_Pre" }
	{ event 1100 27 "Hit" }
	{ event 1100 34 "vox_atk" }
	{ event 1100 34 "Trail_End" }
	{ event 1100 41 "Whoosh_Heavy" }
	{ event 1100 64 "Step" }
	{ event 1100 71 "Step" }
	{ event 1100 84 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 26 LX LY
	walkframe 36 LX LY
	walkframe 53 LX LY
	walkframe 64 LX LY
	walkframe 71 LX LY
	walkframe 84 LX LY
}

$sequence "Attack20_2" {
	"soc_anims\Attack20_2.smd"
	activity "ACT_ATTACK20_2" 1
	{ event 1100 0 "atk20_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 10 "Step" }
	{ event 1100 23 "Step" }
	{ event 1100 26 "TrackingOff" }
	{ event 1100 28 "Combustion" }
	{ event 1100 28 "Hit" }
	{ event 1100 62 "Step" }
	{ event 1100 76 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 76 LX LY
}

$sequence "Attack21_2" {
	"soc_anims\Attack21_2.smd"
	activity "ACT_ATTACK21_2" 1
	{ event 1100 0 "atk21_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 5 "Step" }
	{ event 1100 7 "Cast_FireBall" }
	{ event 1100 12 "Step" }
	{ event 1100 39 "Step" }
	{ event 1100 45 "miracle_extend" }
	{ event 1100 49 "Step_Run" }
	{ event 1100 49 "TrackingOff" }
	{ event 1100 54 "Release_FireBall" }
	{ event 1100 80 "Step_Run" }
	{ event 1100 95 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 5 LX LY
	walkframe 12 LX LY
	walkframe 36 LX LY
	walkframe 45 LX LY
	walkframe 49 LX LY
	walkframe 52 LX LY
	walkframe 80 LX LY
	walkframe 95 LX LY
}

$sequence "Attack23_2" {
	"soc_anims\Attack23_2.smd"
	activity "ACT_ATTACK23_2" 1
	{ event 1100 0 "atk23_2" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "miracle_extend" }
	{ event 1100 8 "poison_cloud_before" }
	{ event 1100 37 "miracle_extend" }
	{ event 1100 50 "vox_atk" }
	{ event 1100 52 "Step_Run" }
	{ event 1100 52 "TrackingOff" }
	{ event 1100 58 "Cast_Poison_Mist_Cloud" }
	{ event 1100 85 "Step" }
	{ event 1100 92 "Step" }
	{ event 1100 94 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 45 LX LY
	walkframe 52 LX LY
	walkframe 79 LX LY
	walkframe 85 LX LY
	walkframe 92 LX LY
	walkframe 94 LX LY
}

$sequence "Attack25_2" {
	"soc_anims\Attack25_2.smd"
	activity "ACT_ATTACK25_2" 1
	{ event 1100 0 "atk25_2" }
	{ event 1100 0 "TrackingOff" }
	{ event 1100 22 "Cast_FireBall" }
	{ event 1100 66 "Cast_PowerWithin" }
	{ event 1100 106 "Step" }
	{ event 1100 112 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 112 LX LY
}

$sequence "Attack0_5" {
	"soc_anims\Attack0_5.smd"
	activity "ACT_ATTACK0_5" 1
	{ event 1100 0 "atk0_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 4 "Step" }
	{ event 1100 13 "Great_Ignite" }
	{ event 1100 14 "Whoosh" }
	{ event 1100 14 "Trail_Great_Sword" }
	{ event 1100 16 "Whoosh_Firey_Pre" }
	{ event 1100 18 "Step_Heavy" }
	{ event 1100 19 "TrackingOff" }
	{ event 1100 20 "vox_atk" }
	{ event 1100 21 "Hit" }
	{ event 1100 22 "Step_Run" }
	{ event 1100 25 "Trail_End" }
	{ event 1100 28 "Combo0_5" }
	{ event 1100 52 "Step" }
	{ event 1100 60 "Step" }
	{ event 1100 70 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 10 LX LY
	walkframe 18 LX LY
	walkframe 22 LX LY
	walkframe 42 LX LY
	walkframe 52 LX LY
	walkframe 54 LX LY
	walkframe 60 LX LY
	walkframe 70 LX LY
}

$sequence "Attack1_5" {
	"soc_anims\Attack1_5.smd"
	activity "ACT_ATTACK1_5" 1
	{ event 1100 0 "atk1_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 4 "Step" }
	{ event 1100 10 "Great_Ignite" }
	{ event 1100 11 "Whoosh_Fire" }
	{ event 1100 11 "Trail_Great_Sword" }
	{ event 1100 12 "vox_atk" }
	{ event 1100 13 "Whoosh_Metal" }
	{ event 1100 14 "TrackingOff" }
	{ event 1100 15 "Whoosh_Firey_Pre" }
	{ event 1100 15 "Step_Heavy" }
	{ event 1100 16 "Hit" }
	{ event 1100 22 "Trail_End" }
	{ event 1100 23 "Step" }
	{ event 1100 30 "Whoosh_Heavy" }
	{ event 1100 30 "Combo1_5" }
	{ event 1100 56 "Step" }
	{ event 1100 62 "Step" }
	{ event 1100 66 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 17 LX LY
	walkframe 29 LX LY
	walkframe 46 LX LY
	walkframe 56 LX LY
	walkframe 62 LX LY
	walkframe 66 LX LY
}

$sequence "Attack2_5" {
	"soc_anims\Attack2_5.smd"
	activity "ACT_ATTACK2_5" 1
	{ event 1100 0 "atk2_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 13 "Great_Ignite" }
	{ event 1100 14 "Whoosh_Fire" }
	{ event 1100 14 "Trail_Great_Sword" }
	{ event 1100 15 "vox_atk" }
	{ event 1100 18 "Whoosh_Metal" }
	{ event 1100 20 "TrackingOff" }
	{ event 1100 20 "Whoosh_Firey_Pre" }
	{ event 1100 21 "Step_Heavy" }
	{ event 1100 22 "Hit" }
	{ event 1100 25 "Step_Run" }
	{ event 1100 26 "Trail_End" }
	{ event 1100 28 "Combo2_5" }
	{ event 1100 40 "Whoosh_Heavy" }
	{ event 1100 62 "Step" }
	{ event 1100 72 "Step" }
	{ event 1100 76 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 6 LX LY
	walkframe 21 LX LY
	walkframe 25 LX LY
	walkframe 52 LX LY
	walkframe 62 LX LY
	walkframe 66 LX LY
	walkframe 72 LX LY
	walkframe 76 LX LY
}

$sequence "Attack3_5" {
	"soc_anims\Attack3_5.smd"
	activity "ACT_ATTACK3_5" 1
	{ event 1100 0 "atk3_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 19 "Step_Run" }
	{ event 1100 22 "vox_atk" }
	{ event 1100 27 "Great_Ignite" }
	{ event 1100 28 "Trail_Great_Sword" }
	{ event 1100 28 "Whoosh_Fire" }
	{ event 1100 30 "Whoosh_Metal" }
	{ event 1100 32 "Whoosh_Firey_Pre" }
	{ event 1100 32 "TrackingOff" }
	{ event 1100 34 "Step_Heavy" }
	{ event 1100 34 "Hit" }
	{ event 1100 42 "Trail_End" }
	{ event 1100 43 "Step" }
	{ event 1100 50 "Whoosh_Heavy" }
	{ event 1100 50 "Combo3_5" }
	{ event 1100 67 "Step" }
	{ event 1100 76 "Step" }
	{ event 1100 83 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	walkframe 25 LX LY
	walkframe 34 LX LY
	walkframe 43 LX LY
	walkframe 57 LX LY
	walkframe 67 LX LY
	walkframe 73 LX LY
	walkframe 76 LX LY
	walkframe 83 LX LY
}

$sequence "Attack8_5" {
	"soc_anims\Attack8_5.smd"
	activity "ACT_ATTACK8_5" 1
	{ event 1100 0 "atk8_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 12 "Step_Run" }
	{ event 1100 17 "Step_Run" }
	{ event 1100 24 "Great_Ignite" }
	{ event 1100 25 "Trail_Great_Sword" }
	{ event 1100 25 "Whoosh" }
	{ event 1100 26 "Step_Heavy" }
	{ event 1100 27 "TrackingOff" }
	{ event 1100 27 "Whoosh_Firey_Pre" }
	{ event 1100 29 "Hit" }
	{ event 1100 35 "Trail_End" }
	{ event 1100 38 "Combo8_5" }
	{ event 1100 40 "Step" }
	{ event 1100 82 "Step" }
	{ event 1100 92 "Step" }
	{ event 1100 95 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 12 LX LY
	walkframe 17 LX LY
	walkframe 26 LX LY
	walkframe 32 LX LY
	walkframe 43 LX LY
	walkframe 71 LX LY
	walkframe 82 LX LY
	walkframe 92 LX LY
	walkframe 95 LX LY
}

$sequence "Attack9_5" {
	"soc_anims\Attack9_5.smd"
	activity "ACT_ATTACK9_5" 1
	{ event 1100 0 "atk9_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 20 "Great_Ignite" }
	{ event 1100 21 "Trail_Great_Sword" }
	{ event 1100 21 "Whoosh_Fire" }
	{ event 1100 24 "Whoosh_Metal" }
	{ event 1100 25 "TrackingOff" }
	{ event 1100 26 "Whoosh_Firey_Pre" }
	{ event 1100 27 "Hit" }
	{ event 1100 29 "Step_Heavy" }
	{ event 1100 32 "Step_Run" }
	{ event 1100 35 "Trail_End" }
	{ event 1100 40 "Combo9_5" }
	{ event 1100 42 "Whoosh_Heavy" }
	{ event 1100 66 "Step" }
	{ event 1100 72 "Step" }
	{ event 1100 77 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 8 LX LY
	walkframe 22 LX LY
	walkframe 29 LX LY
	walkframe 32 LX LY
	walkframe 54 LX LY
	walkframe 66 LX LY
	walkframe 72 LX LY
	walkframe 77 LX LY
}

$sequence "Attack10_5" {
	"soc_anims\Attack10_5.smd"
	activity "ACT_ATTACK10_5" 1
	{ event 1100 0 "atk10_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 7 "Step" }
	{ event 1100 14 "Jump" }
	{ event 1100 21 "Whoosh_Heavy" }
	{ event 1100 28 "Whoosh_Fire" }
	{ event 1100 29 "Great_Ignite" }
	{ event 1100 30 "Trail_Great_Sword" }
	{ event 1100 30 "Whoosh_Metal" }
	{ event 1100 31 "vox_atk" }
	{ event 1100 32 "Whoosh_Firey_Pre" }
	{ event 1100 33 "Step_Run" }
	{ event 1100 33 "TrackingOff" }
	{ event 1100 34 "Step_Heavy" }
	{ event 1100 35 "Hit" }
	{ event 1100 40 "Trail_End" }
	{ event 1100 44 "Combo10_5" }
	{ event 1100 46 "Whoosh_Heavy" }
	{ event 1100 73 "Step" }
	{ event 1100 83 "Step" }
	{ event 1100 85 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 14 LX LY
	walkframe 28 LX LY
	walkframe 33 LX LY
	walkframe 38 LX LY
	walkframe 65 LX LY
	walkframe 73 LX LY
	walkframe 76 LX LY
	walkframe 83 LX LY
	walkframe 85 LX LY
}

$sequence "Attack11_5" {
	"soc_anims\Attack11_5.smd"
	activity "ACT_ATTACK11_5" 1
	{ event 1100 0 "atk11_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 8 "Step" }
	{ event 1100 16 "Step" }
	{ event 1100 38 "Whoosh_Fire" }
	{ event 1100 39 "Great_Ignite" }
	{ event 1100 40 "Trail_Great_Sword" }
	{ event 1100 40 "Whoosh_Metal" }
	{ event 1100 42 "Whoosh_Firey_Pre" }
	{ event 1100 43 "TrackingOff" }
	{ event 1100 45 "Step_Heavy" }
	{ event 1100 45 "Hit" }
	{ event 1100 46 "Weapon_Impact_Heavy" }
	{ event 1100 48 "Trail_End" }
	{ event 1100 65 "PickUp_Sword" }
	{ event 1100 81 "Step" }
	{ event 1100 92 "Step" }
	{ event 1100 100 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 16 LX LY
	walkframe 36 LX LY
	walkframe 45 LX LY
	walkframe 51 LX LY
	walkframe 71 LX LY
	walkframe 81 LX LY
	walkframe 93 LX LY
	walkframe 100 LX LY
}

$sequence "Attack12_5" {
	"soc_anims\Attack12_5.smd"
	activity "ACT_ATTACK12_5" 1
	{ event 1100 0 "atk12_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 16 "Step_Run" }
	{ event 1100 26 "Whoosh_Fire" }
	{ event 1100 27 "Great_Ignite" }
	{ event 1100 28 "Trail_Great_Sword" }
	{ event 1100 28 "Whoosh_Metal" }
	{ event 1100 30 "Whoosh_Firey_Pre" }
	{ event 1100 31 "TrackingOff" }
	{ event 1100 32 "Step_Heavy" }
	{ event 1100 33 "Hit" }
	{ event 1100 39 "Step_Run" }
	{ event 1100 40 "Trail_End" }
	{ event 1100 48 "Combo12_5" }
	{ event 1100 50 "Whoosh_Heavy" }
	{ event 1100 67 "Step" }
	{ event 1100 73 "Step" }
	{ event 1100 79 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 5 LX LY
	walkframe 16 LX LY
	walkframe 32 LX LY
	walkframe 39 LX LY
	walkframe 57 LX LY
	walkframe 67 LX LY
	walkframe 73 LX LY
	walkframe 79 LX LY
}

$sequence "Attack13_5" {
	"soc_anims\Attack13_5.smd"
	activity "ACT_ATTACK13_5" 1
	{ event 1100 0 "atk13_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 14 "Whoosh_Fire" }
	{ event 1100 15 "Great_Ignite" }
	{ event 1100 16 "Trail_Great_Sword" }
	{ event 1100 16 "Whoosh_Metal" }
	{ event 1100 18 "Whoosh_Firey_Pre" }
	{ event 1100 18 "vox_atk" }
	{ event 1100 19 "Step_Heavy" }
	{ event 1100 19 "TrackingOff" }
	{ event 1100 21 "Hit" }
	{ event 1100 27 "Step_Run" }
	{ event 1100 28 "Trail_End" }
	{ event 1100 34 "Whoosh_Heavy" }
	{ event 1100 36 "Combo13_5" }
	{ event 1100 51 "Step" }
	{ event 1100 59 "Step" }
	{ event 1100 70 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 19 LX LY
	walkframe 27 LX LY
	walkframe 43 LX LY
	walkframe 51 LX LY
	walkframe 59 LX LY
	walkframe 70 LX LY
}

$sequence "Attack14_5" {
	"soc_anims\Attack14_5.smd"
	activity "ACT_ATTACK14_5" 1
	{ event 1100 0 "atk14_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 7 "Step" }
	{ event 1100 16 "Step" }
	{ event 1100 25 "Great_Ignite" }
	{ event 1100 26 "Trail_Great_Sword" }
	{ event 1100 26 "Whoosh_Fire" }
	{ event 1100 28 "Whoosh_Metal" }
	{ event 1100 30 "vox_atk" }
	{ event 1100 30 "Whoosh_Firey_Pre" }
	{ event 1100 31 "TrackingOff" }
	{ event 1100 32 "Step_Heavy" }
	{ event 1100 33 "Hit" }
	{ event 1100 33 "Step_Run" }
	{ event 1100 36 "Trail_End" }
	{ event 1100 40 "Combo14_5" }
	{ event 1100 44 "Whoosh_Heavy" }
	{ event 1100 65 "Step" }
	{ event 1100 73 "Step" }
	{ event 1100 80 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 9 LX LY
	walkframe 16 LX LY
	walkframe 21 LX LY
	walkframe 32 LX LY
	walkframe 38 LX LY
	walkframe 55 LX LY
	walkframe 65 LX LY
	walkframe 74 LX LY
	walkframe 80 LX LY
}

$sequence "Attack15_5" {
	"soc_anims\Attack15_5.smd"
	activity "ACT_ATTACK15_5" 1
	{ event 1100 0 "atk15_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 12 "Step_Run" }
	{ event 1100 26 "Whoosh_Metal" }
	{ event 1100 27 "Great_Ignite" }
	{ event 1100 28 "Trail_Great_Sword" }
	{ event 1100 28 "Whoosh_Firey_Pre" }
	{ event 1100 30 "TrackingOff" }
	{ event 1100 31 "Step_Heavy" }
	{ event 1100 32 "Hit" }
	{ event 1100 35 "Trail_End" }
	{ event 1100 36 "Step_Run" }
	{ event 1100 61 "Step" }
	{ event 1100 70 "Step" }
	{ event 1100 75 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 12 LX LY
	walkframe 20 LX LY
	walkframe 27 LX LY
	walkframe 31 LX LY
	walkframe 37 LX LY
	walkframe 50 LX LY
	walkframe 61 LX LY
	walkframe 70 LX LY
	walkframe 75 LX LY
}

$sequence "Attack16_5" {
	"soc_anims\Attack16_5.smd"
	activity "ACT_ATTACK16_5" 1
	{ event 1100 0 "atk16_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 10 "Whoosh_Fire" }
	{ event 1100 16 "Whoosh_Fire" }
	{ event 1100 20 "Step_Heavy" }
	{ event 1100 20 "Great_Ignite" }
	{ event 1100 21 "Trail_Great_Sword" }
	{ event 1100 21 "Whoosh_Metal" }
	{ event 1100 22 "TrackingOff" }
	{ event 1100 23 "Whoosh_Firey_Pre" }
	{ event 1100 24 "Hit" }
	{ event 1100 30 "Trail_End" }
	{ event 1100 48 "Whoosh_Heavy" }
	{ event 1100 68 "Step" }
	{ event 1100 74 "Step" }
	{ event 1100 80 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 20 LX LY
	walkframe 26 LX LY
	walkframe 56 LX LY
	walkframe 68 LX LY
	walkframe 74 LX LY
	walkframe 80 LX LY
}

$sequence "Attack18_5" {
	"soc_anims\Attack18_5.smd"
	activity "ACT_ATTACK18_5" 1
	{ event 1100 0 "atk18_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 11 "Jump" }
	{ event 1100 16 "Whoosh_Heavy" }
	{ event 1100 27 "Great_Ignite" }
	{ event 1100 28 "Trail_Great_Sword" }
	{ event 1100 28 "Whoosh_Fire" }
	{ event 1100 30 "TrackingOff" }
	{ event 1100 32 "Whoosh_Metal" }
	{ event 1100 34 "Whoosh_Firey_Pre" }
	{ event 1100 34 "Step_Run" }
	{ event 1100 35 "Step_Heavy" }
	{ event 1100 37 "Hit" }
	{ event 1100 40 "vox_atk" }
	{ event 1100 42 "Trail_End" }
	{ event 1100 46 "Combo18_5" }
	{ event 1100 52 "Whoosh_Heavy" }
	{ event 1100 77 "Step" }
	{ event 1100 91 "Step" }
	{ event 1100 110 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 5 LX LY
	walkframe 9 LX LY
	walkframe 11 LX LY
	walkframe 28 LX LY
	walkframe 35 LX LY
	walkframe 38 LX LY
	walkframe 45 LX LY
	walkframe 53 LX LY
	walkframe 63 LX LY
	walkframe 76 LX LY
	walkframe 92 LX LY
	walkframe 110 LX LY
}

$sequence "Attack19_5" {
	"soc_anims\Attack19_5.smd"
	activity "ACT_ATTACK19_5" 1
	{ event 1100 0 "atk19_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 10 "Jump" }
	{ event 1100 16 "Whoosh_Heavy" }
	{ event 1100 36 "Whoosh_Fire" }
	{ event 1100 37 "TrackingOff" }
	{ event 1100 37 "Great_Ignite" }
	{ event 1100 38 "Trail_Great_Sword" }
	{ event 1100 38 "Whoosh_Metal" }
	{ event 1100 40 "Whoosh_Firey_Pre" }
	{ event 1100 42 "vox_atk" }
	{ event 1100 42 "Hit" }
	{ event 1100 43 "Step_Run" }
	{ event 1100 44 "Step_Heavy" }
	{ event 1100 48 "Trail_End" }
	{ event 1100 65 "Combo19_5" }
	{ event 1100 94 "Step" }
	{ event 1100 105 "Step" }
	{ event 1100 120 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 5 LX LY
	walkframe 10 LX LY
	walkframe 28 LX LY
	walkframe 44 LX LY
	walkframe 50 LX LY
	walkframe 59 LX LY
	walkframe 75 LX LY
	walkframe 94 LX LY
	walkframe 105 LX LY
	walkframe 120 LX LY
}

$sequence "Attack21_5" {
	"soc_anims\Attack21_5.smd"
	activity "ACT_ATTACK21_5" 1
	{ event 1100 0 "atk21_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "Whoosh_Heavy" }
	{ event 1100 14 "Step" }
	{ event 1100 18 "Whoosh" }
	{ event 1100 22 "Step_Run" }
	{ event 1100 22 "Whoosh_Metal" }
	{ event 1100 23 "TrackingOff" }
	{ event 1100 25 "Hit" }
	{ event 1100 31 "Step_Run" }
	{ event 1100 40 "Step" }
	{ event 1100 62 "Step" }
	{ event 1100 75 "Step" }
	{ event 1100 90 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 10 LX LY
	walkframe 15 LX LY
	walkframe 22 LX LY
	walkframe 31 LX LY
	walkframe 40 LX LY
	walkframe 54 LX LY
	walkframe 63 LX LY
	walkframe 66 LX LY
	walkframe 75 LX LY
	walkframe 90 LX LY
}

$sequence "Attack22_5" {
	"soc_anims\Attack22_5.smd"
	activity "ACT_ATTACK22_5" 1
	{ event 1100 0 "atk22_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 0 "miracle_extend" }
	{ event 1100 16 "Step" }
	{ event 1100 22 "Create_Lightning_Bolt" }
	{ event 1100 24 "Lightning_Loop_Stake" }
	{ event 1100 48 "miracle_extend" }
	{ event 1100 49 "TrackingOff" }
	{ event 1100 51 "Lightning_Stake_Impact" }
	{ event 1100 54 "Step_Heavy" }
	{ event 1100 88 "Step" }
	{ event 1100 111 "Step" }
	{ event 1100 115 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 16 LX LY
	walkframe 36 LX LY
	walkframe 47 LX LY
	walkframe 54 LX LY
	walkframe 76 LX LY
	walkframe 88 LX LY
	walkframe 100 LX LY
	walkframe 111 LX LY
	walkframe 115 LX LY
}

$sequence "Attack23_5" {
	"soc_anims\Attack23_5.smd"
	activity "ACT_ATTACK23_5" 1
	{ event 1100 0 "atk23_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 18 "Create_Lightning_Bolt" }
	{ event 1100 20 "Lightning_Loop_Spear" }
	{ event 1100 30 "Whoosh_Heavy" }
	{ event 1100 32 "Step" }
	{ event 1100 41 "Step" }
	{ event 1100 59 "Step" }
	{ event 1100 60 "vox_atk" }
	{ event 1100 63 "Lightning_Spear_Cast" }
	{ event 1100 66 "Step_Heavy" }
	{ event 1100 106 "Step" }
	{ event 1100 118 "Step" }
	{ event 1100 121 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 24 LX LY
	walkframe 32 LX LY
	walkframe 41 LX LY
	walkframe 55 LX LY
	walkframe 71 LX LY
	walkframe 94 LX LY
	walkframe 106 LX LY
	walkframe 110 LX LY
	walkframe 118 LX LY
	walkframe 121 LX LY
}

$sequence "Attack24_5" {
	"soc_anims\Attack24_5.smd"
	activity "ACT_ATTACK24_5" 1
	{ event 1100 0 "atk24_5" }
	{ event 1100 0 "TrackingOff" }
	{ event 1100 14 "Create_Lightning_Bolt" }
	{ event 1100 18 "Lightning_Loop_Storm" }
	{ event 1100 40 "Step" }
	{ event 1100 49 "Step" }
	{ event 1100 98 "Lightning_Spear_Cast" }
	{ event 1100 99 "Step" }
	{ event 1100 104 "Step" }
	{ event 1100 138 "Step" }
	{ event 1100 149 "Step" }
	{ event 1100 163 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 163 LX LY
}

$sequence "Attack25_5" {
	"soc_anims\Attack25_5.smd"
	activity "ACT_ATTACK25_5" 1
	{ event 1100 0 "atk25_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 52 "vox_atk" }
	{ event 1100 55 "Jump" }
	{ event 1100 63 "Whoosh_Heavy" }
	{ event 1100 69 "TrackingOff" }
	{ event 1100 72 "Whoosh_Fire" }
	{ event 1100 73 "Great_Ignite" }
	{ event 1100 74 "Trail_Great_Sword" }
	{ event 1100 74 "Whoosh_Metal" }
	{ event 1100 76 "Whoosh_Firey_Pre" }
	{ event 1100 80 "Down" }
	{ event 1100 80 "Hit" }
	{ event 1100 84 "Trail_End" }
	{ event 1100 90 "Combo25_5" }
	{ event 1100 115 "Step" }
	{ event 1100 123 "Step" }
	{ event 1100 135 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 36 LX LY
	walkframe 55 LX LY
	walkframe 68 LX LY
	walkframe 80 LX LY
	walkframe 105 LX LY
	walkframe 115 LX LY
	walkframe 123 LX LY
	walkframe 135 LX LY
}

$sequence "Attack26_5" {
	"soc_anims\Attack26_5.smd"
	activity "ACT_ATTACK26_5" 1
	{ event 1100 0 "atk26_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 33 "Whoosh_Heavy" }
	{ event 1100 70 "Jump" }
	{ event 1100 78 "Whoosh_Fire" }
	{ event 1100 79 "Great_Ignite" }
	{ event 1100 80 "Trail_Great_Sword" }
	{ event 1100 80 "Whoosh_Metal" }
	{ event 1100 80 "Step_Run" }
	{ event 1100 82 "Whoosh_Firey_Pre" }
	{ event 1100 84 "TrackingOff" }
	{ event 1100 85 "Step_Heavy" }
	{ event 1100 86 "Hit" }
	{ event 1100 89 "vox_atk" }
	{ event 1100 92 "Trail_End" }
	{ event 1100 96 "Whoosh_Heavy" }
	{ event 1100 98 "Combo26_5" }
	{ event 1100 115 "Step" }
	{ event 1100 122 "Step" }
	{ event 1100 128 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 40 LX LY
	walkframe 69 LX LY
	walkframe 76 LX LY
	walkframe 80 LX LY
	walkframe 85 LX LY
	walkframe 108 LX LY
	walkframe 115 LX LY
	walkframe 122 LX LY
	walkframe 128 LX LY
}

$sequence "Attack30_5" {
	"soc_anims\Attack30_5.smd"
	activity "ACT_ATTACK30_5" 1
	{ event 1100 0 "atk30_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 16 "Whoosh_Heavy" }
	{ event 1100 25 "Step" }
	{ event 1100 26 "vox_atk" }
	{ event 1100 30 "Step" }
	{ event 1100 56 "Whoosh_Fire" }
	{ event 1100 62 "Whoosh_WA_P4" }
	{ event 1100 63 "Great_Ignite_Large" }
	{ event 1100 64 "Trail_Great_Sword_Large" }
	{ event 1100 66 "Whoosh_Metal" }
	{ event 1100 68 "Whoosh_Firey_Pre" }
	{ event 1100 68 "Hit" }
	{ event 1100 68 "Step_Run" }
	{ event 1100 74 "Trail_End" }
	{ event 1100 76 "Whoosh_WA_P4" }
	{ event 1100 78 "Great_Ignite_Large" }
	{ event 1100 79 "Trail_Great_Sword_Large" }
	{ event 1100 80 "Whoosh_Metal" }
	{ event 1100 82 "Whoosh_Firey_Pre" }
	{ event 1100 82 "Step_Run" }
	{ event 1100 86 "Step_Run" }
	{ event 1100 86 "Hit" }
	{ event 1100 96 "Trail_End" }
	{ event 1100 104 "Whoosh_WA_P4" }
	{ event 1100 107 "Great_Ignite_Large" }
	{ event 1100 108 "Trail_Great_Sword_Large" }
	{ event 1100 108 "Whoosh_Metal" }
	{ event 1100 110 "Whoosh_Firey_Pre" }
	{ event 1100 111 "Step_Run" }
	{ event 1100 112 "Hit" }
	{ event 1100 123 "Trail_End" }
	{ event 1100 123 "Whoosh_WA_P4" }
	{ event 1100 124 "Step_Run" }
	{ event 1100 127 "Whoosh_Metal" }
	{ event 1100 127 "Step_Run" }
	{ event 1100 127 "Great_Ignite_Large" }
	{ event 1100 128 "Trail_Great_Sword_Large" }
	{ event 1100 129 "Whoosh_Firey_Pre" }
	{ event 1100 130 "TrackingOff" }
	{ event 1100 131 "Step_Run" }
	{ event 1100 132 "Hit" }
	{ event 1100 144 "Trail_End" }
	{ event 1100 154 "Whoosh_Heavy" }
	{ event 1100 158 "vox_atk" }
	{ event 1100 171 "Step_Run" }
	{ event 1100 184 "Whoosh_WA_P2" }
	{ event 1100 188 "Whoosh_Metal" }
	{ event 1100 190 "Firey_Explosion" }
	{ event 1100 241 "PickUp_Sword" }
	{ event 1100 249 "Step" }
	{ event 1100 270 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 11 LX LY
	walkframe 16 LX LY
	walkframe 25 LX LY
	walkframe 30 LX LY
	walkframe 57 LX LY
	walkframe 68 LX LY
	walkframe 82 LX LY
	walkframe 86 LX LY
	walkframe 98 LX LY
	walkframe 126 LX LY
	walkframe 131 LX LY
	walkframe 152 LX LY
	walkframe 172 LX LY
	walkframe 190 LX LY
	walkframe 237 LX LY
	walkframe 249 LX LY
	walkframe 270 LX LY
}

$sequence "Attack31_5" {
	"soc_anims\Attack31_5.smd"
	activity "ACT_ATTACK31_5" 1
	{ event 1100 0 "atk31_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 10 "Whoosh_Heavy" }
	{ event 1100 15 "Step" }
	{ event 1100 17 "vox_atk" }
	{ event 1100 20 "Step" }
	{ event 1100 30 "Whoosh_Fire" }
	{ event 1100 36 "Whoosh_WA_P4" }
	{ event 1100 39 "Great_Ignite" }
	{ event 1100 40 "Trail_Great_Sword" }
	{ event 1100 40 "Whoosh_Metal" }
	{ event 1100 41 "Step_Heavy" }
	{ event 1100 42 "Whoosh_Firey_Pre" }
	{ event 1100 43 "TrackingOff" }
	{ event 1100 45 "Hit" }
	{ event 1100 50 "Trail_End" }
	{ event 1100 58 "Combo31_5" }
	{ event 1100 104 "Step" }
	{ event 1100 122 "Step" }
	{ event 1100 140 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 15 LX LY
	walkframe 20 LX LY
	walkframe 32 LX LY
	walkframe 41 LX LY
	walkframe 46 LX LY
	walkframe 84 LX LY
	walkframe 104 LX LY
	walkframe 110 LX LY
	walkframe 122 LX LY
	walkframe 140 LX LY
}

$sequence "Attack32_5" {
	"soc_anims\Attack32_5.smd"
	activity "ACT_ATTACK32_5" 1
	{ event 1100 0 "atk32_5" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 10 "Whoosh_Heavy" }
	{ event 1100 17 "Step" }
	{ event 1100 21 "vox_atk" }
	{ event 1100 24 "Step" }
	{ event 1100 28 "Whoosh_Fire" }
	{ event 1100 34 "Whoosh_WA_P4" }
	{ event 1100 36 "Step_Heavy" }
	{ event 1100 37 "Great_Ignite" }
	{ event 1100 38 "Trail_Great_Sword" }
	{ event 1100 38 "Whoosh_Metal" }
	{ event 1100 39 "TrackingOff" }
	{ event 1100 40 "Whoosh_Firey_Pre" }
	{ event 1100 41 "Hit" }
	{ event 1100 43 "Step_Run" }
	{ event 1100 50 "Trail_End" }
	{ event 1100 58 "Combo32_5" }
	{ event 1100 105 "Step" }
	{ event 1100 121 "Step" }
	{ event 1100 145 "CanDodgeAgain_Reset" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 8 LX LY
	walkframe 17 LX LY
	walkframe 24 LX LY
	walkframe 31 LX LY
	walkframe 36 LX LY
	walkframe 43 LX LY
	walkframe 89 LX LY
	walkframe 105 LX LY
	walkframe 112 LX LY
	walkframe 121 LX LY
	walkframe 145 LX LY
}

$sequence "Death" {
	"soc_anims\Death.smd"
	activity "ACT_DIE_SIMPLE" 1
	{ event 1100 0 "Core" }
	{ event 1100 3 "Step" }
	{ event 1100 17 "Step" }
	{ event 1100 106 "Down" }
	{ event 1100 112 "Sword_Down" }
	{ event 1100 0 "Die" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 80 LX LY
	walkframe 130 LX LY
	walkframe 350 LX LY
}

$sequence "Transform_Gwyn" {
	"soc_anims\Transform_Gwyn.smd"
	activity "ACT_TRANSFORM_GWYN" 1
	{ event 1100 0 "ForceChange_StraightSword" }
	{ event 1100 0 "vox_atk" }
	{ event 1100 2 "v_gwyn_transform" }
	{ event 1100 15 "Grab_Sword" }
	{ event 1100 30 "FireBuff_Gwyn_Transform" }
	{ event 1100 40 "Grab_Sword" }
	{ event 1100 49 "Weapon_Impact_Light" }
	{ event 1100 90 "Transform_Pre" }
	{ event 1100 100 "Transform_Gwyn_Whoosh_Pre" }
	{ event 1100 100 "Transform_Gwyn_Whoosh_Pre_P2" }
	{ event 1100 105 "vox_atk" }
	{ event 1100 113 "Weapon_Impact_Stab" }
	{ event 1100 115 "Firey_Explosion" }
	{ event 1100 115 "ForceChange_GwynSword" }
	{ event 1100 115 "v_transform_gwyn_scream_loud" }
	{ event 1100 140 "Transform_Pre_P4" }
	{ event 1100 180 "Grab_Sword" }
	{ event 1100 184 "Whoosh_Transform_Gwyn" }
	{ event 1100 204 "Whoosh_Heavy" }
	{ event 1100 206 "Whoosh_WA_P3" }
	{ event 1100 209 "Step" }
	{ event 1100 236 "Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "Transform_Normal(StraightSword)" {
	"soc_anims\Transform_Normal(StraightSword).smd"
	activity "ACT_TRANSFORM_SWORD" -1
	{ event 1100 0 "Transform_Pre" }
	{ event 1100 0 "Transform_Pre_P2" }
	{ event 1100 16 "Whoosh_Heavy" }
	{ event 1100 16 "Whoosh_Fire" }
	{ event 1100 18 "Transform_Pre_P3" }
	{ event 1100 18 "WeaponChange_StraightSword" }
	{ event 1100 19 "PreviousWeapon" }
	{ event 1100 20 "Transform_Explosion" }
	{ event 1100 20 "Transform_Pre_P4" }
	{ event 1100 20 "Transform_Scream" }
	{ event 1100 24 "Step" }
	{ event 1100 42 "Step" }
	{ event 1100 50 "Step" }
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	walkframe 18 LX LY
	walkframe 24 LX LY
	walkframe 34 LX LY
	walkframe 42 LX LY
	walkframe 50 LX LY
	walkframe 57 LX LY
}

$sequence "Transform_Normal(Lance)" {
	"soc_anims\Transform_Normal(Lance).smd"
	activity "ACT_TRANSFORM_LANCE" -1
	{ event 1100 0 "Transform_Pre" }
	{ event 1100 0 "Transform_Pre_P2" }
	{ event 1100 16 "Whoosh_Heavy" }
	{ event 1100 16 "Whoosh_Fire" }
	{ event 1100 18 "Transform_Pre_P3" }
	{ event 1100 18 "WeaponChange_Lance" }
	{ event 1100 19 "PreviousWeapon" }
	{ event 1100 20 "Transform_Explosion" }
	{ event 1100 20 "Transform_Pre_P4" }
	{ event 1100 20 "Transform_Scream" }
	{ event 1100 24 "Step" }
	{ event 1100 42 "Step" }
	{ event 1100 50 "Step" }
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	walkframe 18 LX LY
	walkframe 24 LX LY
	walkframe 34 LX LY
	walkframe 42 LX LY
	walkframe 50 LX LY
	walkframe 57 LX LY
}

$sequence "Transform_Normal(CurvedSword)" {
	"soc_anims\Transform_Normal(CurvedSword).smd"
	activity "ACT_TRANSFORM_PIRATE" -1
	{ event 1100 0 "Transform_Pre" }
	{ event 1100 0 "Transform_Pre_P2" }
	{ event 1100 16 "Whoosh_Heavy" }
	{ event 1100 16 "Whoosh_Fire" }
	{ event 1100 18 "Transform_Pre_P3" }
	{ event 1100 18 "WeaponChange_CurvedSword" }
	{ event 1100 19 "PreviousWeapon" }
	{ event 1100 20 "Transform_Explosion" }
	{ event 1100 20 "Transform_Pre_P4" }
	{ event 1100 20 "Transform_Scream" }
	{ event 1100 24 "Step" }
	{ event 1100 42 "Step" }
	{ event 1100 50 "Step" }
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	walkframe 18 LX LY
	walkframe 24 LX LY
	walkframe 34 LX LY
	walkframe 42 LX LY
	walkframe 50 LX LY
	walkframe 57 LX LY
}

$sequence "Transform_Normal(Staff)" {
	"soc_anims\Transform_Normal(Staff).smd"
	activity "ACT_TRANSFORM_STAFF" -1
	{ event 1100 0 "Transform_Pre" }
	{ event 1100 0 "Transform_Pre_P2" }
	{ event 1100 16 "Whoosh_Heavy" }
	{ event 1100 16 "Whoosh_Fire" }
	{ event 1100 18 "Transform_Pre_P3" }
	{ event 1100 18 "WeaponChange_Staff" }
	{ event 1100 19 "PreviousWeapon" }
	{ event 1100 20 "Transform_Explosion" }
	{ event 1100 20 "Transform_Pre_P4" }
	{ event 1100 20 "Transform_Scream" }
	{ event 1100 24 "Step" }
	{ event 1100 42 "Step" }
	{ event 1100 50 "Step" }
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	walkframe 18 LX LY
	walkframe 24 LX LY
	walkframe 34 LX LY
	walkframe 42 LX LY
	walkframe 50 LX LY
	walkframe 57 LX LY
}

$sequence "Pain_Small" {
	"soc_anims\Pain_Small.smd"
	activity "ACT_FLINCH_LIGHT" 1
	{ event 1100 0 "vox_pain" }
	{ event 1100 15 "Step_Heavy" }
	{ event 1100 22 "Step_Run" }
	{ event 1100 25 "Weapon_Impact_Stab" }
	{ event 1100 52 "Step" }
	{ event 1100 85 "PickUp_Sword" }
	{ event 1100 100 "Step" }
	{ event 1100 110 "Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 15 LX LY
	walkframe 22 LX LY
	walkframe 55 LX LY
	walkframe 95 LX LY
	walkframe 100 LX LY
	walkframe 104 LX LY
	walkframe 110 LX LY
	walkframe 118 LX LY
}

$sequence "Pain_Large" {
	"soc_anims\Pain_Large.smd"
	activity "ACT_FLINCH_HEAVY" 1
	{ event 1100 0 "vox_pain" }
	{ event 1100 15 "Step_Heavy" }
	{ event 1100 20 "Step_Run" }
	{ event 1100 25 "Knee" }
	{ event 1100 100 "Step" }
	{ event 1100 110 "Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 15 LX LY
	walkframe 22 LX LY
	walkframe 50 LX LY
	walkframe 90 LX LY
	walkframe 100 LX LY
	walkframe 104 LX LY
	walkframe 110 LX LY
	walkframe 118 LX LY
}

$sequence "Turn_Left_90" {
	"soc_anims\Turn_Left_90.smd"
	activity "ACT_TURN_LEFT" 1
	{ event 1100 6 "Step" }
	{ event 1100 15 "Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 20 LX LY LZR
}

$sequence "Turn_Right_90" {
	"soc_anims\Turn_Right_90.smd"
	activity "ACT_TURN_RIGHT" 1
	{ event 1100 6 "Step" }
	{ event 1100 14 "Step" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 20 LX LY LZR
}

$sequence "Dodge_Forward" {
	"soc_anims\Dodge_Forward.smd"
	activity "ACT_DODGE_FORWARD" 1
	{ event 1100 0 "InvincibilityOn" }
	{ event 1100 0 "Jump" }
	{ event 1100 0 "TrackingOff" }
	{ event 1100 12 "TrackingOn" }
	{ event 1100 12 "Knee" }
	{ event 1100 13 "Step_Heavy" }
	{ event 1100 18 "Step_Run" }
	{ event 1100 25 "Step_Run" }
	{ event 1100 43 "Step" }
	{ event 1100 43 "TrackingOff" }
	{ event 1100 55 "InvincibilityOff" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
	walkframe 25 LX LY
	walkframe 33 LX LY
	walkframe 42 LX LY
	walkframe 55 LX LY
}

$sequence "Dodge_Backward" {
	"soc_anims\Dodge_Backward.smd"
	activity "ACT_DODGE_BACKWARD" 1
	{ event 1100 0 "InvincibilityOn" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 3 "Jump" }
	{ event 1100 12 "Step_Skid" }
	{ event 1100 17 "Step_Heavy" }
	{ event 1100 17 "TrackingOff" }
	{ event 1100 58 "Step" }
	{ event 1100 60 "InvincibilityOff" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 3 LX LY
	walkframe 14 LX LY
	walkframe 20 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 60 LX LY
}

$sequence "Dodge_Backflip" {
	"soc_anims\Dodge_Backflip.smd"
	activity "ACT_DODGE_BACKFLIP" 1
	{ event 1100 0 "InvincibilityOn" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 8 "TrackingOff" }
	{ event 1100 8 "Step_Run" }
	{ event 1100 15 "Jump" }
	{ event 1100 21 "Step" }
	{ event 1100 22 "Step" }
	{ event 1100 28 "TrackingOn" }
	{ event 1100 28 "Step_Heavy" }
	{ event 1100 30 "Step_Run" }
	{ event 1100 30 "TrackingOff" }
	{ event 1100 57 "Step" }
	{ event 1100 60 "InvincibilityOff" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	walkframe 15 LX LY
	walkframe 22 LX LY
	walkframe 28 LX LY
	walkframe 50 LX LY
	walkframe 56 LX LY
	walkframe 60 LX LY
}

$sequence "Dodge_Left" {
	"soc_anims\Dodge_Left.smd"
	activity "ACT_DODGE_LEFT" 1
	{ event 1100 0 "InvincibilityOn" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 4 "Jump" }
	{ event 1100 14 "Step_Skid" }
	{ event 1100 14 "TrackingOff" }
	{ event 1100 16 "Step_Heavy" }
	{ event 1100 21 "Step" }
	{ event 1100 50 "Step" }
	{ event 1100 58 "Step" }
	{ event 1100 60 "InvincibilityOff" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 16 LX LY
	walkframe 23 LX LY
	walkframe 45 LX LY
	walkframe 50 LX LY
	walkframe 58 LX LY
	walkframe 60 LX LY
}

$sequence "Dodge_Right" {
	"soc_anims\Dodge_Right.smd"
	activity "ACT_DODGE_RIGHT" 1
	{ event 1100 0 "InvincibilityOn" }
	{ event 1100 0 "TrackingOn" }
	{ event 1100 4 "Jump" }
	{ event 1100 11 "Step_Skid" }
	{ event 1100 14 "TrackingOff" }
	{ event 1100 14 "Step" }
	{ event 1100 15 "Step_Heavy" }
	{ event 1100 46 "Step" }
	{ event 1100 53 "Step" }
	{ event 1100 55 "InvincibilityOff" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 4 LX LY
	walkframe 16 LX LY
	walkframe 21 LX LY
	walkframe 38 LX LY
	walkframe 46 LX LY
	walkframe 53 LX LY
	walkframe 55 LX LY
}

// .qc block generated by HLMV begins.

$surfaceprop "no_decal"
$jointsurfaceprop "Box001"	 "no_decal"


$hboxset "default"

$hbox 3 "Spine1"	    -3.00   -9.62   -7.51     7.00   10.29    7.38
$hbox 2 "Spine2"	   -23.14  -12.24  -10.11     3.14   12.24   10.11
$hbox 5 "R_UpperArm"	   -18.01   -3.70   -3.03     0.00    3.80    4.47
$hbox 5 "R_Forearm"	   -18.01   -3.42   -3.03     0.00    4.07    4.47
$hbox 5 "R_Hand"	    -8.60   -3.50   -3.37     2.73    3.73    2.13
$hbox 4 "L_UpperArm"	   -18.01   -3.70   -3.03     0.00    3.80    4.47
$hbox 4 "L_Forearm"	   -17.19   -3.17   -2.53     0.92    3.33    3.97
$hbox 4 "L_Hand"	    -8.60   -3.50   -3.12     2.73    3.73    1.88
$hbox 4 "L_Finger0"	    -5.02   -1.50   -1.25     0.32    1.50    1.75
$hbox 4 "L_Finger01"	    -2.20   -0.91   -0.98     0.72    0.90    0.95
$hbox 4 "L_Finger02"	    -2.04   -0.60   -0.93     0.48    0.73    0.82
$hbox 4 "L_Finger1"	    -3.20   -0.77   -0.91     0.83    1.08    0.89
$hbox 4 "L_Finger11"	    -2.22   -0.69   -0.73     0.42    0.81    0.80
$hbox 4 "L_Finger12"	    -2.16   -0.61   -0.61     0.38    0.72    0.76
$hbox 4 "L_Finger2"	    -3.37   -0.80   -0.76     0.00    0.81    0.93
$hbox 4 "L_Finger21"	    -2.20   -0.81   -0.67     0.14    0.51    0.80
$hbox 4 "L_Finger22"	    -2.35   -0.76   -0.53     0.00    0.51    0.61
$hbox 4 "L_Finger3"	    -3.33   -0.79   -0.96     0.00    0.70    0.70
$hbox 4 "L_Finger31"	    -2.38   -0.81   -0.69     0.64    0.56    0.70
$hbox 4 "L_Finger32"	    -1.72   -0.67   -0.58     0.76    0.57    0.68
$hbox 4 "L_Finger4"	    -3.31   -0.85   -0.76     0.53    0.76    0.91
$hbox 4 "L_Finger41"	    -1.82   -0.46   -0.79     0.05    0.67    0.66
$hbox 4 "L_Finger42"	    -1.91   -0.46   -0.66     0.52    0.65    0.61
$hbox 5 "R_Shoulder"	    -6.00   -4.00   -6.00     6.00    8.00    6.00
$hbox 5 "R_Elbow"	    -6.96   -3.94   -4.21     3.70    4.70    5.83
$hbox 4 "L_Elbow"	    -6.96   -4.70   -4.21     3.70    3.94    5.83
$hbox 5 "R_Finger0"	    -5.27   -1.06   -1.64     0.32    2.40    2.22
$hbox 5 "R_Finger01"	    -2.25   -0.90   -0.98     1.01    1.10    0.95
$hbox 5 "R_Finger02"	    -2.04   -0.73   -0.93     0.18    0.58    0.47
$hbox 5 "R_Finger1"	    -3.55   -0.97   -0.91     0.83    0.77    0.89
$hbox 5 "R_Finger11"	    -2.62   -0.81   -0.73     0.42    0.69    0.80
$hbox 5 "R_Finger12"	    -2.16   -0.66   -0.61     0.38    0.61    0.51
$hbox 5 "R_Finger2"	    -3.58   -0.81   -0.76     0.00    0.80    0.93
$hbox 5 "R_Finger21"	    -2.41   -0.51   -0.67     0.52    0.81    0.80
$hbox 5 "R_Finger22"	    -2.35   -0.51   -0.53     0.49    0.81    0.92
$hbox 5 "R_Finger3"	    -3.33   -0.70   -0.83     0.00    0.81    0.98
$hbox 5 "R_Finger31"	    -2.38   -0.56   -0.69     0.64    0.81    0.70
$hbox 5 "R_Finger32"	    -1.72   -0.57   -0.58     0.76    0.66    0.69
$hbox 5 "R_Finger4"	    -3.31   -0.76   -0.76     0.53    0.85    0.92
$hbox 5 "R_Finger41"	    -1.82   -0.67   -0.79     0.06    0.46    0.66
$hbox 5 "R_Finger42"	    -1.91   -0.65   -0.66     0.52    0.46    0.61
$hbox 4 "L_Shoulder"	    -6.00   -8.00   -6.00     6.00    4.00    6.00
$hbox 1 "Neck"	    -6.56   -3.96   -5.25     0.51    4.24    3.44
$hbox 1 "Head"	   -14.28   -5.84   -9.04     2.57    5.56    5.65
$hbox 3 "Pelvis"	   -10.00  -14.00  -10.50     4.00   14.00   10.50
$hbox 6 "L_Thigh"	   -24.00   -6.50   -6.50     0.00    6.50    6.50
$hbox 6 "L_Knee"	    -3.50   -5.70   -6.50     7.50    6.30    6.50
$hbox 6 "L_Calf"	   -29.87   -5.53   -5.50    -1.86    5.47    7.50
$hbox 6 "L_Foot"	    -6.19   -3.65   -9.93     1.18    3.85    4.38
$hbox 6 "L_Toe0"	    -5.50   -2.70   -2.75    -0.50    3.30    0.75
$hbox 7 "R_Thigh"	   -24.00   -6.50   -6.50     0.00    6.50    6.50
$hbox 7 "R_Knee"	    -3.50   -5.70   -6.50     7.50    6.30    6.50
$hbox 7 "R_Calf"	   -29.86   -5.53   -5.50    -1.86    5.47    7.50
$hbox 7 "R_Foot"	    -6.26   -3.65   -9.93     1.24    3.85    4.38
$hbox 7 "R_Toe0"	    -5.50   -3.30   -3.05    -0.50    2.70    0.45
$hbox 10 "dagger"	   -14.28   -4.65   -2.65     8.39    1.05   -0.65

// .qc block generated by HLMV ends.

