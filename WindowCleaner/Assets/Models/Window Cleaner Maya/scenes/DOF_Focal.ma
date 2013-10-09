//Maya ASCII 2011 scene
//Name: DOF_Focal.ma
//Last modified: Wed, Mar 02, 2011 06:30:52 PM
//Codeset: 1252
requires maya "2011";
requires "Mayatomr" "2011.0m - 3.8.1.26 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 x64";
fileInfo "cutIdentifier" "201003190311-771506";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7  (Build 7600)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.1726821394618128 84.704201636636853 -113.32305805253723 ;
	setAttr ".r" -type "double3" 344.66164727749117 176.99999999999673 360 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 146.92814626242514;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 53.954571405532477 20.734767539126491 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.29611181853931967 67.689941945983193 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.645077266683401;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 66.758746776645054 -1.2018524081909427 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 13.247201764045681;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "DOF_Focal";
	setAttr ".t" -type "double3" -4.8135044330966346e-014 -18.117955784902811 1.047956882619224 ;
	setAttr ".r" -type "double3" -1.590277340731758e-015 1.0448060979027285e-014 -6.4956869711377603e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.30210226774215709 72.37268447875978 0.25983087718486791 ;
	setAttr ".sp" -type "double3" -0.30210226774215698 72.372684478759766 0.25983087718486786 ;
	setAttr ".spt" -type "double3" -1.110223024625157e-016 1.4210854715202007e-014 5.5511151231257839e-017 ;
createNode mesh -n "DOF_FocalShape" -p "DOF_Focal";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.80000007 0.5 0.70000005 
		0.5 0.60000002 0.5 0.5 0.5 0.40000001 0.5 0.30000001 0.5 0.2 0.5 0.1 0.5 1.0000001 
		0.5 0.9000001 0.5 0 0.5 0.1 0.60000002 0 0.60000002 0.2 0.60000002 0.30000001 0.60000002 
		0.40000001 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.70000005 0.60000002 
		0.80000007 0.60000002 0.9000001 0.60000002 1.0000001 0.60000002 0.1 0.70000005 0 
		0.70000005 0.2 0.70000005 0.30000001 0.70000005 0.40000001 0.70000005 0.5 0.70000005 
		0.60000002 0.70000005 0.70000005 0.70000005 0.80000007 0.70000005 0.9000001 0.70000005 
		1.0000001 0.70000005;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".vt[0:29]"  0.0088146031 72.249878 0.03393656 -0.18334261 
		72.249878 -0.10567382 -0.42086196 72.249878 -0.10567373 -0.61301911 72.249878 0.033936635 
		-0.68641663 72.249878 0.25983095 -0.61301911 72.249878 0.48572525 -0.4208619 72.249878 
		0.62533557 -0.18334256 72.249878 0.62533557 0.0088146031 72.249878 0.48572522 0.08221209 
		72.249878 0.25983092 -0.0064027309 72.368637 0.044992611 -0.1891551 72.368637 -0.087784737 
		-0.41504943 72.368637 -0.087784708 -0.5978018 72.368637 0.044992685 -0.66760695 72.368637 
		0.25983095 -0.59780174 72.368637 0.47466922 -0.41504937 72.368637 0.60744655 -0.18915507 
		72.368637 0.60744655 -0.0064027607 72.368637 0.47466916 0.063402414 72.368637 0.25983092 
		-0.145228 72.495491 0.14585504 -0.2421816 72.495491 0.075414076 -0.36202294 72.495491 
		0.075414091 -0.45897651 72.495491 0.14585507 -0.49600953 72.495491 0.25983092 -0.45897651 
		72.495491 0.37380677 -0.36202288 72.495491 0.44424772 -0.2421816 72.495491 0.44424772 
		-0.145228 72.495491 0.37380674 -0.10819499 72.495491 0.25983092;
	setAttr -s 50 ".ed[0:49]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 8 1 8 9 1 9 0 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 16 1 16 17 1 17 18 1 
		18 19 1 19 10 1 20 21 1 21 22 1 
		22 23 1 23 24 1 24 25 1 25 26 1 
		26 27 1 27 28 1 28 29 1 29 20 1 
		0 10 1 1 11 1 2 12 1 3 13 1 
		4 14 1 5 15 1 6 16 1 7 17 1 
		8 18 1 9 19 1 10 20 1 11 21 1 
		12 22 1 13 23 1 14 24 1 15 25 1 
		16 26 1 17 27 1 18 28 1 19 29 1;
	setAttr -s 22 ".fc[0:21]" -type "polyFaces" 
		f 10 -8 -7 -6 -5 -4 -3 -2 -1 -10 -9 
		
		mu 0 10 0 1 2 3 4 5 6 7 8 
		9 
		f 4 0 31 -11 -31 
		mu 0 4 10 7 11 12 
		f 4 1 32 -12 -32 
		mu 0 4 7 6 13 11 
		f 4 2 33 -13 -33 
		mu 0 4 6 5 14 13 
		f 4 3 34 -14 -34 
		mu 0 4 5 4 15 14 
		f 4 4 35 -15 -35 
		mu 0 4 4 3 16 15 
		f 4 5 36 -16 -36 
		mu 0 4 3 2 17 16 
		f 4 6 37 -17 -37 
		mu 0 4 2 1 18 17 
		f 4 7 38 -18 -38 
		mu 0 4 1 0 19 18 
		f 4 8 39 -19 -39 
		mu 0 4 0 9 20 19 
		f 4 9 30 -20 -40 
		mu 0 4 9 8 21 20 
		f 4 10 41 -21 -41 
		mu 0 4 12 11 22 23 
		f 4 11 42 -22 -42 
		mu 0 4 11 13 24 22 
		f 4 12 43 -23 -43 
		mu 0 4 13 14 25 24 
		f 4 13 44 -24 -44 
		mu 0 4 14 15 26 25 
		f 4 14 45 -25 -45 
		mu 0 4 15 16 27 26 
		f 4 15 46 -26 -46 
		mu 0 4 16 17 28 27 
		f 4 16 47 -27 -47 
		mu 0 4 17 18 29 28 
		f 4 17 48 -28 -48 
		mu 0 4 18 19 30 29 
		f 4 18 49 -29 -49 
		mu 0 4 19 20 31 30 
		f 4 19 40 -30 -50 
		mu 0 4 20 21 32 31 
		f 10 23 24 25 26 27 28 29 20 21 22 
		
		mu 0 10 25 26 27 28 29 30 31 23 22 
		24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 34 ".lnk";
	setAttr -s 34 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 8;
	setAttr -s 22 ".dli[1:21]"  1 2 3 4 5 6 7 8 
		9 10 11 12 13 14 15 16 17 18 19 20 21;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode blindDataTemplate -n "blindDataTemplate1";
	addAttr -ci true -sn "b1" -ln "bone1" -at "long";
	addAttr -ci true -sn "b2" -ln "bone2" -at "long";
	addAttr -ci true -sn "b3" -ln "bone3" -at "long";
	addAttr -ci true -sn "nb" -ln "numBones" -at "long";
	addAttr -ci true -sn "w1" -ln "weight1" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "w2" -ln "weight2" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "w3" -ln "weight3" -min 0 -max 1 -at "double";
	setAttr ".tid" 9898;
	setAttr -s 11 ".bdui";
	setAttr ".bdui[0].bdun" -type "string" "typeTag";
	setAttr ".bdui[0].bduv" -type "string" "smdWeights";
	setAttr ".bdui[1].bdun" -type "string" "assocType";
	setAttr ".bdui[1].bduv" -type "string" "vertex";
	setAttr ".bdui[3].bdun" -type "string" "freeSet";
	setAttr ".bdui[3].bduv" -type "string" "1";
	setAttr ".bdui[4].bdun" -type "string" "dataCount";
	setAttr ".bdui[4].bduv" -type "string" "7";
	setAttr ".bdui[5].bdun" -type "string" "weight1";
	setAttr ".bdui[5].bduv" -type "string" "double";
	setAttr ".bdui[6].bdun" -type "string" "weight2";
	setAttr ".bdui[6].bduv" -type "string" "double";
	setAttr ".bdui[7].bdun" -type "string" "weight3";
	setAttr ".bdui[7].bduv" -type "string" "double";
	setAttr ".bdui[8].bdun" -type "string" "bone1";
	setAttr ".bdui[8].bduv" -type "string" "int";
	setAttr ".bdui[9].bdun" -type "string" "bone2";
	setAttr ".bdui[9].bduv" -type "string" "int";
	setAttr ".bdui[10].bdun" -type "string" "bone3";
	setAttr ".bdui[10].bduv" -type "string" "int";
	setAttr ".bdui[11].bdun" -type "string" "numBones";
	setAttr ".bdui[11].bduv" -type "string" "int";
createNode phongE -n "mouth";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "mouth_file";
	setAttr ".ftn" -type "string" "C:/TEST/male 07/mouth.tga";
createNode place2dTexture -n "place2dTexture1";
createNode shadingEngine -n "mouthSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode phongE -n "eyeball_l";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "eyeball_l_file";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/eyeball_l.tga";
createNode place2dTexture -n "place2dTexture2";
createNode shadingEngine -n "eyeball_lSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode phongE -n "mike_facemap";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "mike_facemap_file";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/ted_facemap.tga";
createNode place2dTexture -n "place2dTexture3";
createNode shadingEngine -n "mike_facemapSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode phongE -n "eyeball_r";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "eyeball_r_file";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/eyeball_r.tga";
createNode place2dTexture -n "place2dTexture4";
createNode shadingEngine -n "eyeball_rSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode phongE -n "citizen_sheet";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "citizen_sheet_file";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/citizen_sheet.tga";
createNode place2dTexture -n "place2dTexture5";
createNode shadingEngine -n "citizen_sheetSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n"
		+ "                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 0\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 0\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 2\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 2\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n"
		+ "                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -frameRange 0.25 32 \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -frameRange 0.25 32 \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n"
		+ "                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 33 -ps 2 100 67 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Trax Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"clipEditorPanel\\\" -l (localizedPanelLabel(\\\"Trax Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = clipEditorNameFromPanel($panelName);\\n            clipEditor -e \\n                -displayKeys 0\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 0\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"none\\\" \\n                -snapValue \\\"none\\\" \\n                -frameRange 0.25 32 \\n                -manageSequencer 0 \\n                $editorName\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Trax Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = clipEditorNameFromPanel($panelName);\\n            clipEditor -e \\n                -displayKeys 0\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 0\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"none\\\" \\n                -snapValue \\\"none\\\" \\n                -frameRange 0.25 32 \\n                -manageSequencer 0 \\n                $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 15 -max 180 -ast 1 -aet 300 ";
	setAttr ".st" 6;
createNode materialInfo -n "hat:materialInfo4";
createNode shadingEngine -n "hat:lambert2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "hat:hat_txtr2";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode file -n "hat:file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-hat1.jpg";
createNode materialInfo -n "hat:materialInfo5";
createNode shadingEngine -n "hat:lambert2SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode file -n "HAT1";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-joint44_hat_hat.jpg";
createNode materialInfo -n "hat:materialInfo3";
createNode shadingEngine -n "hat:lambert2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "hat:hat_txtr1";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode file -n "hat:file1";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-hat2.jpg";
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 0.17647059 0.17647059 0.17647059 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode lambert -n "hat_top_thing";
	setAttr ".c" -type "float3" 0.19607843 0.19607843 0.19607843 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode lambert -n "HAT";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "GUY005_anim_clean:mower1:groupId127";
	setAttr ".ihi" 0;
createNode phongE -n "GUY005_anim_clean:male_07_007_mouth2";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "GUY005_anim_clean:male_07_007_mouth_file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/ted_facemap.tga";
createNode place2dTexture -n "GUY005_anim_clean:male_07_007_place2dTexture11";
createNode shadingEngine -n "GUY005_anim_clean:male_07_007_mouthSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:male_07_007_materialInfo11";
createNode phongE -n "GUY005_anim_clean:male_07_007_eyeball_l2";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "GUY005_anim_clean:male_07_007_eyeball_l_file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/eyeball_l.tga";
createNode place2dTexture -n "GUY005_anim_clean:male_07_007_place2dTexture12";
createNode shadingEngine -n "GUY005_anim_clean:male_07_007_eyeball_lSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:male_07_007_materialInfo12";
createNode phongE -n "GUY005_anim_clean:male_07_007_mike_facemap2";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "GUY005_anim_clean:male_07_007_mike_facemap_file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/eric_facemap.tga";
createNode place2dTexture -n "GUY005_anim_clean:male_07_007_place2dTexture13";
createNode shadingEngine -n "GUY005_anim_clean:male_07_007_mike_facemapSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:male_07_007_materialInfo13";
createNode phongE -n "GUY005_anim_clean:male_07_007_eyeball_r2";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "GUY005_anim_clean:male_07_007_eyeball_r_file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/eyeball_r.tga";
createNode place2dTexture -n "GUY005_anim_clean:male_07_007_place2dTexture14";
createNode shadingEngine -n "GUY005_anim_clean:male_07_007_eyeball_rSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:male_07_007_materialInfo14";
createNode phongE -n "GUY005_anim_clean:male_07_007_citizen_sheet2";
	setAttr ".rn" 0;
	setAttr ".hls" 0;
createNode file -n "GUY005_anim_clean:male_07_007_citizen_sheet_file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//textures/citizen_sheet.tga";
createNode place2dTexture -n "GUY005_anim_clean:male_07_007_place2dTexture15";
createNode shadingEngine -n "GUY005_anim_clean:male_07_007_citizen_sheetSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:male_07_007_materialInfo15";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".maxr" 2;
	setAttr -s 28 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode shadingEngine -n "GUY005_anim_clean:Squeegie:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:Squeegie:materialInfo5";
createNode blinn -n "GUY005_anim_clean:Squeegie:blinn4";
	setAttr ".dc" 0.81300812959671021;
	setAttr ".c" -type "float3" 0.4509804 0.4509804 0.4509804 ;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.73983365 0.73983365 0.73983365 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0.55279022455215454;
	setAttr ".sro" 0.71544712781906128;
createNode blinn -n "GUY005_anim_clean:Squeegie:blinn5";
createNode shadingEngine -n "GUY005_anim_clean:Squeegie:blinn1SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:Squeegie:materialInfo6";
createNode file -n "GUY005_anim_clean:Squeegie:file1";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//images/noise1-pCylinder1.jpg";
createNode blinn -n "GUY005_anim_clean:Squeegie:blinn6";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "GUY005_anim_clean:Squeegie:blinn6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:Squeegie:materialInfo7";
createNode phong -n "GUY005_anim_clean:hat_txtr1";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "GUY005_anim_clean:lambert2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:materialInfo3";
createNode file -n "GUY005_anim_clean:file1";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-hat2.jpg";
createNode phong -n "GUY005_anim_clean:hat_txtr2";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "GUY005_anim_clean:lambert2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:materialInfo4";
createNode file -n "GUY005_anim_clean:file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-hat1.jpg";
createNode phong -n "GUY005_anim_clean:hat_txtr3";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode shadingEngine -n "GUY005_anim_clean:lambert2SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:materialInfo5";
createNode file -n "GUY005_anim_clean:file3";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-joint44_hat_hat.jpg";
createNode shadingEngine -n "GUY005_anim_clean:mop:Squeegie:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:mop:Squeegie:materialInfo1";
createNode shadingEngine -n "GUY005_anim_clean:mop:Squeegie:phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:mop:Squeegie:materialInfo5";
createNode blinn -n "GUY005_anim_clean:mop:Squeegie:blinn4";
	setAttr ".dc" 0.81300812959671021;
	setAttr ".c" -type "float3" 0.82352942 0.82352942 0.82352942 ;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.73983365 0.73983365 0.73983365 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0.55279022455215454;
	setAttr ".sro" 0.71544712781906128;
createNode shadingEngine -n "GUY005_anim_clean:mop:Squeegie:blinn1SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:mop:Squeegie:materialInfo6";
createNode file -n "GUY005_anim_clean:mop:Squeegie:file1";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//images/mop_handle.jpg.jpg";
createNode blinn -n "GUY005_anim_clean:mop:Squeegie:blinn6";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "GUY005_anim_clean:mop:Squeegie:blinn6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:mop:Squeegie:materialInfo7";
createNode shadingEngine -n "GUY005_anim_clean:mop:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:mop:materialInfo1";
createNode cloth -n "GUY005_anim_clean:mop:cloth1";
	setAttr ".vc" -type "float3" 0.63309681 0.63309681 0.63309681 ;
	setAttr ".uwi" 1;
	setAttr ".vwi" 1;
createNode place2dTexture -n "GUY005_anim_clean:mop:place2dTexture1";
	setAttr ".re" -type "float2" 4 4 ;
createNode lambert -n "GUY005_anim_clean:mop:lambert3";
createNode lambert -n "GUY005_anim_clean:mop:lambert4";
createNode shadingEngine -n "GUY005_anim_clean:mop:lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:mop:materialInfo2";
createNode file -n "GUY005_anim_clean:mop:file1";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//images/mop.jpg";
createNode place2dTexture -n "GUY005_anim_clean:mop:place2dTexture2";
	setAttr ".re" -type "float2" 3 10 ;
createNode blinn -n "GUY005_anim_clean:mop:blinn1";
	setAttr ".c" -type "float3" 0.31764707 0.24367397 0.029896192 ;
createNode shadingEngine -n "GUY005_anim_clean:mop:blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GUY005_anim_clean:mop:materialInfo3";
createNode lambert -n "GUY005_anim_clean:mop:lambert5";
createNode displayLayer -n "window";
	setAttr ".do" 5;
createNode materialInfo -n "hat2:materialInfo4";
createNode shadingEngine -n "hat2:lambert2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "hat2:hat_txtr2";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode file -n "hat2:file2";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-hat1.jpg";
createNode materialInfo -n "hat2:materialInfo5";
createNode shadingEngine -n "hat2:lambert2SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "hat2:hat_txtr3";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode file -n "hat2:file3";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-joint44_hat_hat.jpg";
createNode materialInfo -n "hat2:materialInfo3";
createNode shadingEngine -n "hat2:lambert2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "hat2:hat_txtr1";
	setAttr ".dc" 1;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0;
	setAttr ".sc" -type "float3" 0.122 0.122 0.122 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 2;
createNode file -n "hat2:file1";
	setAttr ".ftn" -type "string" "F:/School/SAIC/Window Cleaner/WindowCleaner/WindowCleaner/Assets/Window Cleaner Maya//cloth1-hat2.jpg";
createNode displayLayer -n "hat3";
	setAttr ".c" 13;
	setAttr ".do" 6;
createNode displayLayer -n "hat_layer";
	setAttr ".c" 13;
	setAttr ".do" 4;
createNode lambert -n "lambert4";
	setAttr ".it" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
select -ne :time1;
	setAttr ".o" 163;
	setAttr ".unw" 163;
select -ne :renderPartition;
	setAttr -s 34 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 33 ".s";
select -ne :defaultTextureList1;
	setAttr -s 23 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "hat2:lambert2SG2.mwc" "DOF_FocalShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mouthSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "eyeball_lSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mike_facemapSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "eyeball_rSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "citizen_sheetSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hat:lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hat:lambert2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hat:lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:male_07_007_mouthSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:male_07_007_eyeball_lSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:male_07_007_mike_facemapSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:male_07_007_eyeball_rSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:male_07_007_citizen_sheetSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:Squeegie:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:Squeegie:blinn1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:Squeegie:blinn6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:lambert2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:blinn1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:blinn6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:mop:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:mop:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GUY005_anim_clean:mop:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hat2:lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hat2:lambert2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "hat2:lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mouthSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "eyeball_lSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mike_facemapSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "eyeball_rSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "citizen_sheetSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hat:lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hat:lambert2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hat:lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:male_07_007_mouthSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:male_07_007_eyeball_lSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:male_07_007_mike_facemapSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:male_07_007_eyeball_rSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:male_07_007_citizen_sheetSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:Squeegie:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:Squeegie:blinn1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:Squeegie:blinn6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:lambert2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:blinn1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:mop:Squeegie:blinn6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:mop:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:mop:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GUY005_anim_clean:mop:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hat2:lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hat2:lambert2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "hat2:lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "mouth_file.oc" "mouth.c";
connectAttr "place2dTexture1.c" "mouth_file.c";
connectAttr "place2dTexture1.tf" "mouth_file.tf";
connectAttr "place2dTexture1.rf" "mouth_file.rf";
connectAttr "place2dTexture1.s" "mouth_file.s";
connectAttr "place2dTexture1.wu" "mouth_file.wu";
connectAttr "place2dTexture1.wv" "mouth_file.wv";
connectAttr "place2dTexture1.re" "mouth_file.re";
connectAttr "place2dTexture1.of" "mouth_file.of";
connectAttr "place2dTexture1.r" "mouth_file.ro";
connectAttr "place2dTexture1.n" "mouth_file.n";
connectAttr "place2dTexture1.o" "mouth_file.uv";
connectAttr "mouth.oc" "mouthSG.ss";
connectAttr "mouthSG.msg" "materialInfo1.sg";
connectAttr "mouth.msg" "materialInfo1.m";
connectAttr "mouth_file.msg" "materialInfo1.t" -na;
connectAttr "eyeball_l_file.oc" "eyeball_l.c";
connectAttr "place2dTexture2.c" "eyeball_l_file.c";
connectAttr "place2dTexture2.tf" "eyeball_l_file.tf";
connectAttr "place2dTexture2.rf" "eyeball_l_file.rf";
connectAttr "place2dTexture2.s" "eyeball_l_file.s";
connectAttr "place2dTexture2.wu" "eyeball_l_file.wu";
connectAttr "place2dTexture2.wv" "eyeball_l_file.wv";
connectAttr "place2dTexture2.re" "eyeball_l_file.re";
connectAttr "place2dTexture2.of" "eyeball_l_file.of";
connectAttr "place2dTexture2.r" "eyeball_l_file.ro";
connectAttr "place2dTexture2.n" "eyeball_l_file.n";
connectAttr "place2dTexture2.o" "eyeball_l_file.uv";
connectAttr "eyeball_l.oc" "eyeball_lSG.ss";
connectAttr "eyeball_lSG.msg" "materialInfo2.sg";
connectAttr "eyeball_l.msg" "materialInfo2.m";
connectAttr "eyeball_l_file.msg" "materialInfo2.t" -na;
connectAttr "mike_facemap_file.oc" "mike_facemap.c";
connectAttr "place2dTexture3.c" "mike_facemap_file.c";
connectAttr "place2dTexture3.tf" "mike_facemap_file.tf";
connectAttr "place2dTexture3.rf" "mike_facemap_file.rf";
connectAttr "place2dTexture3.s" "mike_facemap_file.s";
connectAttr "place2dTexture3.wu" "mike_facemap_file.wu";
connectAttr "place2dTexture3.wv" "mike_facemap_file.wv";
connectAttr "place2dTexture3.re" "mike_facemap_file.re";
connectAttr "place2dTexture3.of" "mike_facemap_file.of";
connectAttr "place2dTexture3.r" "mike_facemap_file.ro";
connectAttr "place2dTexture3.n" "mike_facemap_file.n";
connectAttr "place2dTexture3.o" "mike_facemap_file.uv";
connectAttr "mike_facemap.oc" "mike_facemapSG.ss";
connectAttr "mike_facemapSG.msg" "materialInfo3.sg";
connectAttr "mike_facemap.msg" "materialInfo3.m";
connectAttr "mike_facemap_file.msg" "materialInfo3.t" -na;
connectAttr "eyeball_r_file.oc" "eyeball_r.c";
connectAttr "place2dTexture4.c" "eyeball_r_file.c";
connectAttr "place2dTexture4.tf" "eyeball_r_file.tf";
connectAttr "place2dTexture4.rf" "eyeball_r_file.rf";
connectAttr "place2dTexture4.s" "eyeball_r_file.s";
connectAttr "place2dTexture4.wu" "eyeball_r_file.wu";
connectAttr "place2dTexture4.wv" "eyeball_r_file.wv";
connectAttr "place2dTexture4.re" "eyeball_r_file.re";
connectAttr "place2dTexture4.of" "eyeball_r_file.of";
connectAttr "place2dTexture4.r" "eyeball_r_file.ro";
connectAttr "place2dTexture4.n" "eyeball_r_file.n";
connectAttr "place2dTexture4.o" "eyeball_r_file.uv";
connectAttr "eyeball_r.oc" "eyeball_rSG.ss";
connectAttr "eyeball_rSG.msg" "materialInfo4.sg";
connectAttr "eyeball_r.msg" "materialInfo4.m";
connectAttr "eyeball_r_file.msg" "materialInfo4.t" -na;
connectAttr "citizen_sheet_file.oc" "citizen_sheet.c";
connectAttr "place2dTexture5.c" "citizen_sheet_file.c";
connectAttr "place2dTexture5.tf" "citizen_sheet_file.tf";
connectAttr "place2dTexture5.rf" "citizen_sheet_file.rf";
connectAttr "place2dTexture5.s" "citizen_sheet_file.s";
connectAttr "place2dTexture5.wu" "citizen_sheet_file.wu";
connectAttr "place2dTexture5.wv" "citizen_sheet_file.wv";
connectAttr "place2dTexture5.re" "citizen_sheet_file.re";
connectAttr "place2dTexture5.of" "citizen_sheet_file.of";
connectAttr "place2dTexture5.r" "citizen_sheet_file.ro";
connectAttr "place2dTexture5.n" "citizen_sheet_file.n";
connectAttr "place2dTexture5.o" "citizen_sheet_file.uv";
connectAttr "citizen_sheet.oc" "citizen_sheetSG.ss";
connectAttr "citizen_sheetSG.msg" "materialInfo5.sg";
connectAttr "citizen_sheet.msg" "materialInfo5.m";
connectAttr "citizen_sheet_file.msg" "materialInfo5.t" -na;
connectAttr "hat:lambert2SG3.msg" "hat:materialInfo4.sg";
connectAttr "hat:hat_txtr2.msg" "hat:materialInfo4.m";
connectAttr "hat:file2.msg" "hat:materialInfo4.t" -na;
connectAttr "hat:hat_txtr2.oc" "hat:lambert2SG3.ss";
connectAttr "hat:file2.oc" "hat:hat_txtr2.c";
connectAttr "hat:lambert2SG4.msg" "hat:materialInfo5.sg";
connectAttr "HAT.msg" "hat:materialInfo5.m";
connectAttr "HAT1.msg" "hat:materialInfo5.t" -na;
connectAttr "HAT.oc" "hat:lambert2SG4.ss";
connectAttr "hat:lambert2SG2.msg" "hat:materialInfo3.sg";
connectAttr "hat:hat_txtr1.msg" "hat:materialInfo3.m";
connectAttr "hat:file1.msg" "hat:materialInfo3.t" -na;
connectAttr "hat:hat_txtr1.oc" "hat:lambert2SG2.ss";
connectAttr "hat:file1.oc" "hat:hat_txtr1.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo6.sg";
connectAttr "lambert2.msg" "materialInfo6.m";
connectAttr "hat_top_thing.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo7.sg";
connectAttr "hat_top_thing.msg" "materialInfo7.m";
connectAttr "HAT1.oc" "HAT.c";
connectAttr "GUY005_anim_clean:male_07_007_mouth_file2.oc" "GUY005_anim_clean:male_07_007_mouth2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.c" "GUY005_anim_clean:male_07_007_mouth_file2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.tf" "GUY005_anim_clean:male_07_007_mouth_file2.tf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.rf" "GUY005_anim_clean:male_07_007_mouth_file2.rf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.s" "GUY005_anim_clean:male_07_007_mouth_file2.s"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.wu" "GUY005_anim_clean:male_07_007_mouth_file2.wu"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.wv" "GUY005_anim_clean:male_07_007_mouth_file2.wv"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.re" "GUY005_anim_clean:male_07_007_mouth_file2.re"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.of" "GUY005_anim_clean:male_07_007_mouth_file2.of"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.r" "GUY005_anim_clean:male_07_007_mouth_file2.ro"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.n" "GUY005_anim_clean:male_07_007_mouth_file2.n"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.o" "GUY005_anim_clean:male_07_007_mouth_file2.uv"
		;
connectAttr "GUY005_anim_clean:male_07_007_mouth2.oc" "GUY005_anim_clean:male_07_007_mouthSG2.ss"
		;
connectAttr "GUY005_anim_clean:male_07_007_mouthSG2.msg" "GUY005_anim_clean:male_07_007_materialInfo11.sg"
		;
connectAttr "GUY005_anim_clean:male_07_007_mouth2.msg" "GUY005_anim_clean:male_07_007_materialInfo11.m"
		;
connectAttr "GUY005_anim_clean:male_07_007_mouth_file2.msg" "GUY005_anim_clean:male_07_007_materialInfo11.t"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_l_file2.oc" "GUY005_anim_clean:male_07_007_eyeball_l2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.c" "GUY005_anim_clean:male_07_007_eyeball_l_file2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.tf" "GUY005_anim_clean:male_07_007_eyeball_l_file2.tf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.rf" "GUY005_anim_clean:male_07_007_eyeball_l_file2.rf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.s" "GUY005_anim_clean:male_07_007_eyeball_l_file2.s"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.wu" "GUY005_anim_clean:male_07_007_eyeball_l_file2.wu"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.wv" "GUY005_anim_clean:male_07_007_eyeball_l_file2.wv"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.re" "GUY005_anim_clean:male_07_007_eyeball_l_file2.re"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.of" "GUY005_anim_clean:male_07_007_eyeball_l_file2.of"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.r" "GUY005_anim_clean:male_07_007_eyeball_l_file2.ro"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.n" "GUY005_anim_clean:male_07_007_eyeball_l_file2.n"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.o" "GUY005_anim_clean:male_07_007_eyeball_l_file2.uv"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_l2.oc" "GUY005_anim_clean:male_07_007_eyeball_lSG2.ss"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_lSG2.msg" "GUY005_anim_clean:male_07_007_materialInfo12.sg"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_l2.msg" "GUY005_anim_clean:male_07_007_materialInfo12.m"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_l_file2.msg" "GUY005_anim_clean:male_07_007_materialInfo12.t"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemap_file2.oc" "GUY005_anim_clean:male_07_007_mike_facemap2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.c" "GUY005_anim_clean:male_07_007_mike_facemap_file2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.tf" "GUY005_anim_clean:male_07_007_mike_facemap_file2.tf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.rf" "GUY005_anim_clean:male_07_007_mike_facemap_file2.rf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.s" "GUY005_anim_clean:male_07_007_mike_facemap_file2.s"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.wu" "GUY005_anim_clean:male_07_007_mike_facemap_file2.wu"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.wv" "GUY005_anim_clean:male_07_007_mike_facemap_file2.wv"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.re" "GUY005_anim_clean:male_07_007_mike_facemap_file2.re"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.of" "GUY005_anim_clean:male_07_007_mike_facemap_file2.of"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.r" "GUY005_anim_clean:male_07_007_mike_facemap_file2.ro"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.n" "GUY005_anim_clean:male_07_007_mike_facemap_file2.n"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.o" "GUY005_anim_clean:male_07_007_mike_facemap_file2.uv"
		;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemap2.oc" "GUY005_anim_clean:male_07_007_mike_facemapSG2.ss"
		;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemapSG2.msg" "GUY005_anim_clean:male_07_007_materialInfo13.sg"
		;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemap2.msg" "GUY005_anim_clean:male_07_007_materialInfo13.m"
		;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemap_file2.msg" "GUY005_anim_clean:male_07_007_materialInfo13.t"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_r_file2.oc" "GUY005_anim_clean:male_07_007_eyeball_r2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.c" "GUY005_anim_clean:male_07_007_eyeball_r_file2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.tf" "GUY005_anim_clean:male_07_007_eyeball_r_file2.tf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.rf" "GUY005_anim_clean:male_07_007_eyeball_r_file2.rf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.s" "GUY005_anim_clean:male_07_007_eyeball_r_file2.s"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.wu" "GUY005_anim_clean:male_07_007_eyeball_r_file2.wu"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.wv" "GUY005_anim_clean:male_07_007_eyeball_r_file2.wv"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.re" "GUY005_anim_clean:male_07_007_eyeball_r_file2.re"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.of" "GUY005_anim_clean:male_07_007_eyeball_r_file2.of"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.r" "GUY005_anim_clean:male_07_007_eyeball_r_file2.ro"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.n" "GUY005_anim_clean:male_07_007_eyeball_r_file2.n"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.o" "GUY005_anim_clean:male_07_007_eyeball_r_file2.uv"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_r2.oc" "GUY005_anim_clean:male_07_007_eyeball_rSG2.ss"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_rSG2.msg" "GUY005_anim_clean:male_07_007_materialInfo14.sg"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_r2.msg" "GUY005_anim_clean:male_07_007_materialInfo14.m"
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_r_file2.msg" "GUY005_anim_clean:male_07_007_materialInfo14.t"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheet_file2.oc" "GUY005_anim_clean:male_07_007_citizen_sheet2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.c" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.c"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.tf" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.tf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.rf" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.rf"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.s" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.s"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.wu" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.wu"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.wv" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.wv"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.re" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.re"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.of" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.of"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.r" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.ro"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.n" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.n"
		;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.o" "GUY005_anim_clean:male_07_007_citizen_sheet_file2.uv"
		;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheet2.oc" "GUY005_anim_clean:male_07_007_citizen_sheetSG2.ss"
		;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheetSG2.msg" "GUY005_anim_clean:male_07_007_materialInfo15.sg"
		;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheet2.msg" "GUY005_anim_clean:male_07_007_materialInfo15.m"
		;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheet_file2.msg" "GUY005_anim_clean:male_07_007_materialInfo15.t"
		 -na;
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "GUY005_anim_clean:Squeegie:blinn4.oc" "GUY005_anim_clean:Squeegie:phong1SG.ss"
		;
connectAttr "GUY005_anim_clean:Squeegie:phong1SG.msg" "GUY005_anim_clean:Squeegie:materialInfo5.sg"
		;
connectAttr "GUY005_anim_clean:Squeegie:blinn4.msg" "GUY005_anim_clean:Squeegie:materialInfo5.m"
		;
connectAttr "GUY005_anim_clean:Squeegie:file1.oc" "GUY005_anim_clean:Squeegie:blinn5.c"
		;
connectAttr "GUY005_anim_clean:Squeegie:blinn5.oc" "GUY005_anim_clean:Squeegie:blinn1SG1.ss"
		;
connectAttr "GUY005_anim_clean:Squeegie:blinn1SG1.msg" "GUY005_anim_clean:Squeegie:materialInfo6.sg"
		;
connectAttr "GUY005_anim_clean:Squeegie:blinn5.msg" "GUY005_anim_clean:Squeegie:materialInfo6.m"
		;
connectAttr "GUY005_anim_clean:Squeegie:file1.msg" "GUY005_anim_clean:Squeegie:materialInfo6.t"
		 -na;
connectAttr "GUY005_anim_clean:Squeegie:blinn6.oc" "GUY005_anim_clean:Squeegie:blinn6SG.ss"
		;
connectAttr "GUY005_anim_clean:Squeegie:blinn6SG.msg" "GUY005_anim_clean:Squeegie:materialInfo7.sg"
		;
connectAttr "GUY005_anim_clean:Squeegie:blinn6.msg" "GUY005_anim_clean:Squeegie:materialInfo7.m"
		;
connectAttr "GUY005_anim_clean:file1.oc" "GUY005_anim_clean:hat_txtr1.c";
connectAttr "GUY005_anim_clean:hat_txtr1.oc" "GUY005_anim_clean:lambert2SG2.ss";
connectAttr "GUY005_anim_clean:lambert2SG2.msg" "GUY005_anim_clean:materialInfo3.sg"
		;
connectAttr "GUY005_anim_clean:hat_txtr1.msg" "GUY005_anim_clean:materialInfo3.m"
		;
connectAttr "GUY005_anim_clean:file1.msg" "GUY005_anim_clean:materialInfo3.t" -na
		;
connectAttr "GUY005_anim_clean:file2.oc" "GUY005_anim_clean:hat_txtr2.c";
connectAttr "GUY005_anim_clean:hat_txtr2.oc" "GUY005_anim_clean:lambert2SG3.ss";
connectAttr "GUY005_anim_clean:lambert2SG3.msg" "GUY005_anim_clean:materialInfo4.sg"
		;
connectAttr "GUY005_anim_clean:hat_txtr2.msg" "GUY005_anim_clean:materialInfo4.m"
		;
connectAttr "GUY005_anim_clean:file2.msg" "GUY005_anim_clean:materialInfo4.t" -na
		;
connectAttr "GUY005_anim_clean:file3.oc" "GUY005_anim_clean:hat_txtr3.c";
connectAttr "GUY005_anim_clean:hat_txtr3.oc" "GUY005_anim_clean:lambert2SG4.ss";
connectAttr "GUY005_anim_clean:lambert2SG4.msg" "GUY005_anim_clean:materialInfo5.sg"
		;
connectAttr "GUY005_anim_clean:hat_txtr3.msg" "GUY005_anim_clean:materialInfo5.m"
		;
connectAttr "GUY005_anim_clean:file3.msg" "GUY005_anim_clean:materialInfo5.t" -na
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:lambert2SG.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo1.sg"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn4.oc" "GUY005_anim_clean:mop:Squeegie:phong1SG.ss"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:phong1SG.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo5.sg"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn4.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo5.m"
		;
connectAttr "GUY005_anim_clean:mop:lambert5.oc" "GUY005_anim_clean:mop:Squeegie:blinn1SG1.ss"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn1SG1.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo6.sg"
		;
connectAttr "GUY005_anim_clean:mop:lambert5.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo6.m"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:file1.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo6.t"
		 -na;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn6.oc" "GUY005_anim_clean:mop:Squeegie:blinn6SG.ss"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn6SG.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo7.sg"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn6.msg" "GUY005_anim_clean:mop:Squeegie:materialInfo7.m"
		;
connectAttr "GUY005_anim_clean:mop:lambert3.oc" "GUY005_anim_clean:mop:lambert2SG.ss"
		;
connectAttr "GUY005_anim_clean:mop:lambert2SG.msg" "GUY005_anim_clean:mop:materialInfo1.sg"
		;
connectAttr "GUY005_anim_clean:mop:lambert3.msg" "GUY005_anim_clean:mop:materialInfo1.m"
		;
connectAttr "GUY005_anim_clean:mop:cloth1.msg" "GUY005_anim_clean:mop:materialInfo1.t"
		 -na;
connectAttr "GUY005_anim_clean:mop:place2dTexture1.o" "GUY005_anim_clean:mop:cloth1.uv"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture1.ofs" "GUY005_anim_clean:mop:cloth1.fs"
		;
connectAttr "GUY005_anim_clean:mop:cloth1.oc" "GUY005_anim_clean:mop:lambert3.c"
		;
connectAttr "GUY005_anim_clean:mop:file1.oc" "GUY005_anim_clean:mop:lambert4.c";
connectAttr "GUY005_anim_clean:mop:lambert4.oc" "GUY005_anim_clean:mop:lambert4SG.ss"
		;
connectAttr "GUY005_anim_clean:mop:lambert4SG.msg" "GUY005_anim_clean:mop:materialInfo2.sg"
		;
connectAttr "GUY005_anim_clean:mop:lambert4.msg" "GUY005_anim_clean:mop:materialInfo2.m"
		;
connectAttr "GUY005_anim_clean:mop:file1.msg" "GUY005_anim_clean:mop:materialInfo2.t"
		 -na;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.c" "GUY005_anim_clean:mop:file1.c"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.tf" "GUY005_anim_clean:mop:file1.tf"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.rf" "GUY005_anim_clean:mop:file1.rf"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.mu" "GUY005_anim_clean:mop:file1.mu"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.mv" "GUY005_anim_clean:mop:file1.mv"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.s" "GUY005_anim_clean:mop:file1.s"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.wu" "GUY005_anim_clean:mop:file1.wu"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.wv" "GUY005_anim_clean:mop:file1.wv"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.re" "GUY005_anim_clean:mop:file1.re"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.of" "GUY005_anim_clean:mop:file1.of"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.r" "GUY005_anim_clean:mop:file1.ro"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.n" "GUY005_anim_clean:mop:file1.n"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.vt1" "GUY005_anim_clean:mop:file1.vt1"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.vt2" "GUY005_anim_clean:mop:file1.vt2"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.vt3" "GUY005_anim_clean:mop:file1.vt3"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.vc1" "GUY005_anim_clean:mop:file1.vc1"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.o" "GUY005_anim_clean:mop:file1.uv"
		;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.ofs" "GUY005_anim_clean:mop:file1.fs"
		;
connectAttr "GUY005_anim_clean:mop:blinn1.oc" "GUY005_anim_clean:mop:blinn1SG.ss"
		;
connectAttr "GUY005_anim_clean:mop:blinn1SG.msg" "GUY005_anim_clean:mop:materialInfo3.sg"
		;
connectAttr "GUY005_anim_clean:mop:blinn1.msg" "GUY005_anim_clean:mop:materialInfo3.m"
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:file1.oc" "GUY005_anim_clean:mop:lambert5.c"
		;
connectAttr "layerManager.dli[20]" "window.id";
connectAttr "hat2:lambert2SG3.msg" "hat2:materialInfo4.sg";
connectAttr "hat2:hat_txtr2.msg" "hat2:materialInfo4.m";
connectAttr "hat2:file2.msg" "hat2:materialInfo4.t" -na;
connectAttr "hat2:hat_txtr2.oc" "hat2:lambert2SG3.ss";
connectAttr "hat2:file2.oc" "hat2:hat_txtr2.c";
connectAttr "hat2:lambert2SG4.msg" "hat2:materialInfo5.sg";
connectAttr "hat2:hat_txtr3.msg" "hat2:materialInfo5.m";
connectAttr "hat2:file3.msg" "hat2:materialInfo5.t" -na;
connectAttr "hat2:hat_txtr3.oc" "hat2:lambert2SG4.ss";
connectAttr "hat2:file3.oc" "hat2:hat_txtr3.c";
connectAttr "hat2:lambert2SG2.msg" "hat2:materialInfo3.sg";
connectAttr "hat2:hat_txtr1.msg" "hat2:materialInfo3.m";
connectAttr "hat2:file1.msg" "hat2:materialInfo3.t" -na;
connectAttr "hat2:hat_txtr1.oc" "hat2:lambert2SG2.ss";
connectAttr "DOF_FocalShape.iog.og[0]" "hat2:lambert2SG2.dsm" -na;
connectAttr "hat2:file1.oc" "hat2:hat_txtr1.c";
connectAttr "layerManager.dli[21]" "hat3.id";
connectAttr "layerManager.dli[8]" "hat_layer.id";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo8.sg";
connectAttr "lambert4.msg" "materialInfo8.m";
connectAttr "mouthSG.pa" ":renderPartition.st" -na;
connectAttr "eyeball_lSG.pa" ":renderPartition.st" -na;
connectAttr "mike_facemapSG.pa" ":renderPartition.st" -na;
connectAttr "eyeball_rSG.pa" ":renderPartition.st" -na;
connectAttr "citizen_sheetSG.pa" ":renderPartition.st" -na;
connectAttr "hat:lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "hat:lambert2SG3.pa" ":renderPartition.st" -na;
connectAttr "hat:lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:male_07_007_mouthSG2.pa" ":renderPartition.st" -na
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_lSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemapSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_rSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheetSG2.pa" ":renderPartition.st"
		 -na;
connectAttr "GUY005_anim_clean:Squeegie:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:Squeegie:blinn1SG1.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:Squeegie:blinn6SG.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:lambert2SG3.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:mop:Squeegie:lambert2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "GUY005_anim_clean:mop:Squeegie:phong1SG.pa" ":renderPartition.st" -na
		;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn1SG1.pa" ":renderPartition.st" 
		-na;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn6SG.pa" ":renderPartition.st" -na
		;
connectAttr "GUY005_anim_clean:mop:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:mop:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "GUY005_anim_clean:mop:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "hat2:lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "hat2:lambert2SG3.pa" ":renderPartition.st" -na;
connectAttr "hat2:lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "mouth.msg" ":defaultShaderList1.s" -na;
connectAttr "eyeball_l.msg" ":defaultShaderList1.s" -na;
connectAttr "mike_facemap.msg" ":defaultShaderList1.s" -na;
connectAttr "eyeball_r.msg" ":defaultShaderList1.s" -na;
connectAttr "citizen_sheet.msg" ":defaultShaderList1.s" -na;
connectAttr "hat:hat_txtr1.msg" ":defaultShaderList1.s" -na;
connectAttr "hat:hat_txtr2.msg" ":defaultShaderList1.s" -na;
connectAttr "HAT.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "hat_top_thing.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:male_07_007_mouth2.msg" ":defaultShaderList1.s" -na
		;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_l2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemap2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_r2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheet2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "GUY005_anim_clean:Squeegie:blinn4.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:Squeegie:blinn5.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:Squeegie:blinn6.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:hat_txtr1.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:hat_txtr2.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:hat_txtr3.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn4.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "GUY005_anim_clean:mop:lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:mop:Squeegie:blinn6.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "GUY005_anim_clean:mop:lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:mop:lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "GUY005_anim_clean:mop:blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "hat2:hat_txtr1.msg" ":defaultShaderList1.s" -na;
connectAttr "hat2:hat_txtr2.msg" ":defaultShaderList1.s" -na;
connectAttr "hat2:hat_txtr3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "mouth_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "eyeball_l_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "mike_facemap_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "eyeball_r_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "citizen_sheet_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "hat:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "hat:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "HAT1.msg" ":defaultTextureList1.tx" -na;
connectAttr "GUY005_anim_clean:male_07_007_mouth_file2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_l_file2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_mike_facemap_file2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_eyeball_r_file2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_citizen_sheet_file2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "GUY005_anim_clean:Squeegie:file1.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "GUY005_anim_clean:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "GUY005_anim_clean:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "GUY005_anim_clean:file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "GUY005_anim_clean:mop:Squeegie:file1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "GUY005_anim_clean:mop:cloth1.msg" ":defaultTextureList1.tx" -na;
connectAttr "GUY005_anim_clean:mop:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "hat2:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "hat2:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "hat2:file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture11.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture12.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture13.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture14.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "GUY005_anim_clean:male_07_007_place2dTexture15.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "GUY005_anim_clean:mop:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "GUY005_anim_clean:mop:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
// End of DOF_Focal.ma
