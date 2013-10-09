//Maya ASCII 2011 scene
//Name: bucketWater.ma
//Last modified: Tue, Feb 22, 2011 08:24:55 PM
//Codeset: 1252
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 x64";
fileInfo "cutIdentifier" "201003190311-771506";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7  (Build 7600)\n";
fileInfo "license" "education";
createNode transform -n "pCylinder40";
	setAttr ".t" -type "double3" -3.5308970040171008 3.9459288137278374 -2.0260968323778918 ;
	setAttr ".s" -type "double3" 1.3181482052990465 1.297401839574051 2.1829898665556668 ;
createNode mesh -n "pCylinderShape40" -p "pCylinder40";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.64860266 0.10796607 
		0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.45171607 
		0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.3513974 
		0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.54828387 
		0.3048526 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.5 0.15000001 
		0.45171607 0.0076473504 0.54828393 0.0076473355 0.59184152 0.029841021 0.62640899 
		0.064408496 0.5 0.15000001 0.37359107 0.064408526 0.40815851 0.029841051 0.3513974 
		0.20453392 0.3513974 0.10796608 0.37359107 0.24809146 0.59184146 0.28265893 0.54828387 
		0.3048526 0.4517161 0.3048526 0.40815854 0.28265893 0.62640893 0.24809146 0.64860266 
		0.10796607 0.6486026 0.2045339 0.45171607 0.0076473504 0.54828393 0.0076473355 0.59184152 
		0.029841021 0.62640899 0.064408496 0.37359107 0.064408526 0.40815851 0.029841051 
		0.3513974 0.20453392 0.3513974 0.10796608 0.37359107 0.24809146 0.59184146 0.28265893 
		0.54828387 0.3048526 0.4517161 0.3048526 0.40815854 0.28265893 0.62640893 0.24809146 
		0.64860266 0.10796607 0.6486026 0.2045339;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[17:33]" -type "float3"  0 4.7683716e-007 0 0 4.7683716e-007 
		0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 
		0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 
		0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 0 0 4.7683716e-007 
		0;
	setAttr -s 34 ".vt[0:33]"  0.84135616 -0.99999952 -0.27337313 0.71570039 
		-0.99999952 -0.51998639 0.51998663 -0.99999952 -0.71569979 0.27337337 -0.99999952 
		-0.84135544 -0.27337313 -0.99999952 -0.84135544 -0.51998615 -0.99999952 -0.71569979 
		-0.71569943 -0.99999952 -0.51998615 -0.84135509 -0.99999952 -0.27337301 -0.84135509 
		-0.99999952 0.27337295 -0.71569943 -0.99999952 0.51998633 -0.51998615 -0.99999952 
		0.71569949 -0.27337265 -0.99999952 0.84135514 0.27337313 -0.99999952 0.84135514 0.51998639 
		-0.99999952 0.71569949 0.71569979 -0.99999952 0.51998621 0.84135568 -0.99999952 0.27337289 
		2.3841858e-007 -0.99999952 5.9604645e-008 0.27337337 -2.1841869 -0.84135532 -0.27337313 
		-2.1841869 -0.8413552 0.51998663 -2.1841869 -0.71569955 0.71570039 -2.1841869 -0.51998627 
		2.3841858e-007 -2.184186 5.9604645e-008 -0.71569943 -2.1841869 -0.51998615 -0.51998615 
		-2.1841869 -0.71569955 -0.84135509 -2.1841869 -0.27337325 -0.84135509 -2.1841869 
		0.27337271 -0.71569943 -2.1841869 0.51998633 0.27337313 -2.1841869 0.84135532 0.51998639 
		-2.1841869 0.71569967 -0.27337265 -2.1841869 0.84135532 -0.51998615 -2.1841869 0.71569967 
		0.71569979 -2.1841869 0.51998627 0.84135568 -2.1841869 0.27337277 0.84135616 -2.1841869 
		-0.27337313;
	setAttr -s 56 ".ed[0:55]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 0 0 16 1 1 16 6 1 
		16 9 1 16 14 1 3 17 0 4 18 0 
		17 18 0 2 19 1 19 17 0 1 20 1 
		20 19 0 21 20 1 6 22 1 21 22 1 
		5 23 1 23 22 0 18 23 0 7 24 1 
		8 25 1 24 25 0 22 24 0 9 26 1 
		21 26 1 25 26 0 12 27 0 13 28 1 
		27 28 0 11 29 0 29 27 0 10 30 1 
		30 29 0 26 30 0 14 31 1 21 31 1 
		28 31 0 15 32 1 0 33 1 32 33 0 
		31 32 0 33 20 0;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 7 -23 -25 -27 -28 29 -32 -33 
		mu 0 7 34 35 36 37 16 38 39 
		f 5 -36 -37 -30 38 -40 
		mu 0 5 40 41 38 16 42 
		f 7 -43 -45 -47 -48 -39 49 -51 
		mu 0 7 43 44 45 46 42 16 47 
		f 5 -54 -55 -50 27 -56 
		mu 0 5 48 49 47 16 37 
		f 7 4 5 -18 16 1 2 3 
		mu 0 7 17 23 22 21 20 19 18 
		f 5 8 -19 17 6 7 
		mu 0 5 24 26 21 22 25 
		f 7 13 -20 18 9 10 11 12 
		mu 0 7 27 31 21 26 30 29 28 
		f 5 0 -17 19 14 15 
		mu 0 5 32 20 21 31 33 
		f 4 -4 20 22 -22 
		mu 0 4 4 3 35 34 
		f 4 -3 23 24 -21 
		mu 0 4 3 2 36 35 
		f 4 -2 25 26 -24 
		mu 0 4 2 1 37 36 
		f 4 -6 30 31 -29 
		mu 0 4 6 5 39 38 
		f 4 -5 21 32 -31 
		mu 0 4 5 4 34 39 
		f 4 -8 33 35 -35 
		mu 0 4 8 7 41 40 
		f 4 -7 28 36 -34 
		mu 0 4 7 6 38 41 
		f 4 -9 34 39 -38 
		mu 0 4 9 8 40 42 
		f 4 -13 40 42 -42 
		mu 0 4 13 12 44 43 
		f 4 -12 43 44 -41 
		mu 0 4 12 11 45 44 
		f 4 -11 45 46 -44 
		mu 0 4 11 10 46 45 
		f 4 -10 37 47 -46 
		mu 0 4 10 9 42 46 
		f 4 -14 41 50 -49 
		mu 0 4 14 13 43 47 
		f 4 -16 51 53 -53 
		mu 0 4 0 15 49 48 
		f 4 -15 48 54 -52 
		mu 0 4 15 14 47 49 
		f 4 -1 52 55 -26 
		mu 0 4 1 0 48 37 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape159" -p "pCylinder40";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.64860266 0.10796607 
		0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.45171607 
		0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.3513974 
		0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.54828387 
		0.3048526 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.5 0.15000001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".pt";
	setAttr ".pt[0:16]" -type "float3" -0.10970137 0 0.035644103  -0.093317486 
		0 0.067799158  -0.067799173 0 0.093317568  -0.03564417 0 0.10970151  0.035644114 
		0 0.10970149  0.067799211 0 0.093317434  0.093317471 0 0.067799158  0.10970131 0 
		0.03564404  0.10970131 0 -0.035644118  0.093317471 0 -0.067799136  0.067799143 0 
		-0.09331768  0.035644103 0 -0.10970151  -0.035644095 0 -0.10970151  -0.067799069 
		0 -0.093317583  -0.093317457 0 -0.067799158  -0.10970125 0 -0.035644133  1.4972169e-008 
		0 -2.4063192e-008 ;
	setAttr ".pt[41:61]" -type "float3" 0 9.5460564e-008 0  0 9.5460564e-008 
		0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  
		0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 
		9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 
		0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  0 9.5460564e-008 0  
		0 9.5460564e-008 0  0 9.5460564e-008 0 ;
	setAttr -s 17 ".vt[0:16]"  0.95105731 -1 -0.30901718 0.80901766 -1 
		-0.5877856 0.58778572 -1 -0.80901748 0.30901742 -1 -0.95105708 -0.30901718 -1 -0.95105702 
		-0.58778548 -1 -0.8090173 -0.80901694 -1 -0.58778542 -0.95105672 -1 -0.30901706 -0.95105672 
		-1 0.30901706 -0.80901694 -1 0.58778542 -0.58778524 -1 0.80901718 -0.30901694 -1 
		0.95105666 0.30901706 -1 0.95105666 0.58778548 -1 0.80901706 0.80901718 -1 0.58778536 
		0.95105672 -1 0.309017 2.3841858e-007 -1 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 0 0 16 1 1 16 6 1 
		16 9 1 16 14 1;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 7 -4 -3 -2 -17 17 -6 -5 
		mu 0 7 4 3 2 1 16 6 5 
		f 5 -8 -7 -18 18 -9 
		mu 0 5 8 7 6 16 9 
		f 7 -13 -12 -11 -10 -19 19 -14 
		mu 0 7 13 12 11 10 9 16 14 
		f 5 -16 -15 -20 16 -1 
		mu 0 5 0 15 14 16 1 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode materialInfo -n "materialInfo4";
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.68627453 0.68627453 0.68627453 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :initialShadingGroup;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "phong1SG.msg" "materialInfo4.sg";
connectAttr "lambert3.msg" "materialInfo4.m";
connectAttr "lambert3.oc" "phong1SG.ss";
connectAttr "pCylinderShape36.iog" "phong1SG.dsm" -na;
connectAttr "pCylinderShape40.iog" "phong1SG.dsm" -na;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
// End of bucketWater.ma
