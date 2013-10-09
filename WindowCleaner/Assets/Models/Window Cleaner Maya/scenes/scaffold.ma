//Maya ASCII 2011 scene
//Name: scaffold.ma
//Last modified: Sat, Apr 16, 2011 11:08:08 PM
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
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -265.60957474803502 33.087321316467708 3.1606415851268252 ;
	setAttr ".r" -type "double3" -6.9383527330094825 -89.399999998705724 360.00000000134054 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 259.83811172357571;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.5604991064976392 0.35089571324913926 -17.647484934063414 ;
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
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "cable1";
	setAttr ".t" -type "double3" -5.2789477872304467 5.3476367968489704 -19.886664122179344 ;
	setAttr ".s" -type "double3" -0.18829622444132318 -123.81359207483759 -0.18829622444132318 ;
createNode mesh -n "cableShape1" -p "cable1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "polySurfaceShape303" -p "cable1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 1 2 3 1 
		4 5 1 6 7 1 0 2 1 1 3 1 
		2 4 1 3 5 1 4 6 1 5 7 1 
		6 0 1 7 1 1;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "cable2";
	setAttr ".t" -type "double3" 5.1889668301766125 5.3476367968489704 19.708271912562722 ;
	setAttr ".s" -type "double3" -0.18829622444132318 -123.81359207483759 -0.18829622444132318 ;
createNode mesh -n "cableShape2" -p "cable2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "polySurfaceShape304" -p "cable2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 1 2 3 1 
		4 5 1 6 7 1 0 2 1 1 3 1 
		2 4 1 3 5 1 4 6 1 5 7 1 
		6 0 1 7 1 1;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "cable3";
	setAttr ".t" -type "double3" -5.3421559851230196 5.3476367968489704 19.708271912562722 ;
	setAttr ".s" -type "double3" -0.18829622444132318 -123.81359207483759 -0.18829622444132318 ;
createNode mesh -n "cableShape3" -p "cable3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "polySurfaceShape305" -p "cable3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 1 2 3 1 
		4 5 1 6 7 1 0 2 1 1 3 1 
		2 4 1 3 5 1 4 6 1 5 7 1 
		6 0 1 7 1 1;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "cable4";
	setAttr ".t" -type "double3" 5.2765139280301536 5.3476367968489704 -19.869335607262101 ;
	setAttr ".s" -type "double3" -0.18829622444132318 -123.81359207483759 -0.18829622444132318 ;
createNode mesh -n "cableShape4" -p "cable4";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "polySurfaceShape306" -p "cable4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 
		0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 
		0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 
		0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 1 2 3 1 
		4 5 1 6 7 1 0 2 1 1 3 1 
		2 4 1 3 5 1 4 6 1 5 7 1 
		6 0 1 7 1 1;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCylinder36";
	setAttr ".t" -type "double3" -3.5308970040171008 1.6223681203166453 -2.0260968323778918 ;
	setAttr ".s" -type "double3" 1.3181482052990465 1.297401839574051 2.1829898665556668 ;
createNode mesh -n "pCylinderShape36" -p "pCylinder36";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape307" -p "pCylinder36";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 97 ".uvst[0].uvsp[0:96]" -type "float2" 0.64860266 0.10796607 
		0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.45171607 
		0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.3513974 
		0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161 0.3048526 0.54828387 
		0.3048526 0.59184146 0.28265893 0.62640893 0.24809146 0.6486026 0.2045339 0.375 0.3125 
		0.38749999 0.3125 0.39999998 0.3125 0.41249996 0.3125 0.43749994 0.3125 0.44999993 
		0.3125 0.46249992 0.3125 0.4749999 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986 
		0.3125 0.53749985 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998 0.3125 0.59999979 
		0.3125 0.38749999 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.43749994 
		0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.49999988 
		0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985 0.68843985 0.56249982 
		0.68843985 0.57499981 0.68843985 0.5874998 0.68843985 0.59999979 0.68843985 0.62499976 
		0.68843985 0.64860266 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 
		0.69514734 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 
		0.79546607 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893 0.4517161 
		0.9923526 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146 0.6486026 
		0.89203393 0.5 0.15000001 0.45342171 0.98688239 0.4117856 0.96491987 0.37694237 0.93299085 
		0.35626137 0.89024895 0.35650384 0.79691046 0.37716711 0.75432992 0.41157436 0.7218101 
		0.45370105 0.70099956 0.54672128 0.69975454 0.58837962 0.72187036 0.62141865 0.75528741 
		0.64236695 0.79722989 0.64450568 0.89053047 0.62244362 0.93251443 0.5891853 0.9663223 
		0.54673827 0.98739564 0.5891853 0.9663223 0.54673827 0.98739564 0.45342171 0.98688239 
		0.4117856 0.96491987 0.37694237 0.93299085 0.35626137 0.89024895 0.35650384 0.79691046 
		0.37716711 0.75432992 0.41157436 0.7218101 0.45370105 0.70099956 0.54672128 0.69975454 
		0.58837962 0.72187036 0.62141865 0.75528741 0.64236695 0.79722989 0.64450568 0.89053047 
		0.62244362 0.93251443;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[41:61]" -type "float3"  0 9.5460564e-008 0 0 9.5460564e-008 
		0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 
		0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 
		0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 
		0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0 0 9.5460564e-008 0;
	setAttr -s 65 ".vt[0:64]"  0.95105731 -1 -0.30901718 0.80901766 -1 
		-0.5877856 0.58778572 -1 -0.80901748 0.30901742 -1 -0.95105708 -0.30901718 -1 -0.95105702 
		-0.58778548 -1 -0.8090173 -0.80901694 -1 -0.58778542 -0.95105672 -1 -0.30901706 -0.95105672 
		-1 0.30901706 -0.80901694 -1 0.58778542 -0.58778524 -1 0.80901718 -0.30901694 -1 
		0.95105666 0.30901706 -1 0.95105666 0.58778548 -1 0.80901706 0.80901718 -1 0.58778536 
		0.95105672 -1 0.309017 0.95105731 0.99999988 -0.30901718 0.80901766 0.99999988 -0.5877856 
		0.58778572 0.99999988 -0.80901748 0.30901742 0.99999988 -0.95105708 -0.30901718 0.99999988 
		-0.95105702 -0.58778548 0.99999988 -0.8090173 -0.80901694 0.99999988 -0.58778542 
		-0.95105672 0.99999988 -0.30901706 -0.95105672 0.99999988 0.30901706 -0.80901694 
		0.99999988 0.58778542 -0.58778524 0.99999988 0.80901718 -0.30901694 0.99999988 0.95105666 
		0.30901706 0.99999988 0.95105666 0.58778548 0.99999988 0.80901706 0.80901718 0.99999988 
		0.58778536 0.95105672 0.99999988 0.309017 2.3841858e-007 -1 0 -0.29810095 0.99999988 
		-0.91746092 -0.5645721 0.99999988 -0.77706712 -0.78756857 0.99999988 -0.57220232 
		-0.91992736 0.99999988 -0.29890254 -0.91837525 0.99999988 0.29839826 -0.78613043 
		0.99999988 0.57115728 -0.56592369 0.99999988 0.77892751 -0.29631305 0.99999988 0.91195792 
		0.29901588 1 0.92027587 0.56562889 1 0.77852136 0.77707911 1 0.56458092 0.91114843 
		1 0.29605004 0.92483711 1 -0.30049774 0.78363931 1 -0.5693472 0.57078636 1 -0.78561997 
		0.29912543 1 -0.92061281 0.57078636 -0.90403199 -0.78561997 0.29912543 -0.90403199 
		-0.92061281 -0.29810095 -0.90403199 -0.91746163 -0.5645721 -0.90403199 -0.77706784 
		-0.78756857 -0.90403199 -0.57220232 -0.91992736 -0.90403199 -0.29890254 -0.91837525 
		-0.90403199 0.29840094 -0.78613043 -0.90403199 0.57115996 -0.56592369 -0.90403199 
		0.77892751 -0.29631305 -0.90403199 0.91195792 0.29901588 -0.90403217 0.92027587 0.56562889 
		-0.90403211 0.77852136 0.77707911 -0.90403199 0.56458092 0.91114843 -0.90403211 0.29605004 
		0.92483711 -0.90403211 -0.30050036 0.78363931 -0.90403211 -0.56934983;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 0 0 16 17 0 18 19 0 
		19 20 0 20 21 0 21 22 0 22 23 0 
		23 24 0 24 25 0 25 26 0 26 27 0 
		27 28 0 28 29 0 29 30 0 30 31 0 
		31 16 0 1 17 1 6 22 1 9 25 1 
		14 30 1 32 1 1 32 6 1 32 9 1 
		32 14 1 17 46 1 22 35 1 25 38 1 
		30 43 1 33 34 0 34 35 0 35 36 0 
		36 37 0 37 38 0 38 39 0 39 40 0 
		40 41 0 41 42 0 42 43 0 43 44 0 
		44 45 0 17 18 0 46 47 0 47 48 0 
		48 33 0 46 45 0 49 50 0 50 51 0 
		51 52 0 35 53 1 52 53 0 53 54 0 
		54 55 0 38 56 1 55 56 0 56 57 0 
		57 58 0 58 59 0 59 60 0 43 61 1 
		60 61 0 61 62 0 62 63 0 46 64 1 
		64 49 0 64 63 0;
	setAttr -s 16 ".fc[0:15]" -type "polyFaces" 
		f 12 -19 -18 -56 -32 1 2 3 4 5 32 
		-21 -20 
		mu 0 12 35 34 33 32 17 18 19 20 21 
		22 37 36 
		f 8 -23 -22 -33 6 7 8 33 -24 
		mu 0 8 39 38 37 22 23 24 25 40 
		f 12 -28 -27 -26 -25 -34 9 10 11 12 13 
		34 -29 
		mu 0 12 44 43 42 41 40 25 26 27 28 
		29 30 45 
		f 8 -31 -30 -35 14 15 0 31 -17 
		mu 0 8 47 46 45 30 31 16 17 32 
		f 7 -4 -3 -2 -36 36 -6 -5 
		mu 0 7 4 3 2 1 64 6 5 
		f 5 -8 -7 -37 37 -9 
		mu 0 5 8 7 6 64 9 
		f 7 -13 -12 -11 -10 -38 38 -14 
		mu 0 7 13 12 11 10 9 64 14 
		f 5 -16 -15 -39 35 -1 
		mu 0 5 0 15 14 64 1 
		f 12 -59 -58 -57 -40 55 17 18 19 20 40 
		-45 -44 
		mu 0 12 65 80 79 78 62 61 60 59 58 
		57 67 66 
		f 8 -47 -46 -41 21 22 23 41 -48 
		mu 0 8 69 68 67 57 56 55 54 70 
		f 12 -52 -51 -50 -49 -42 24 25 26 27 28 
		42 -53 
		mu 0 12 74 73 72 71 70 54 53 52 51 
		50 49 75 
		f 8 -55 -54 -43 29 30 16 39 59 
		mu 0 8 77 76 75 49 48 63 62 78 
		f 8 -67 -66 -64 45 46 47 67 -69 
		mu 0 8 87 86 85 67 68 69 70 88 
		f 12 -73 -72 -71 -70 -68 48 49 50 51 52 
		73 -75 
		mu 0 12 92 91 90 89 88 70 71 72 73 
		74 75 93 
		f 8 -77 -76 -74 53 54 -60 77 79 
		mu 0 8 95 94 93 75 76 77 78 96 
		f 12 -62 -61 -79 -78 56 57 58 43 44 63 
		-65 -63 
		mu 0 12 83 82 81 96 78 79 80 65 66 
		67 85 84 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCylinder37";
	setAttr ".t" -type "double3" -3.5945026504629198 2.7753410303022532 -2.0260968323778918 ;
	setAttr ".r" -type "double3" -0.67343857981531141 -1.2616365125042437 34.103400739214351 ;
	setAttr ".s" -type "double3" 2.4629359221328859 0.063316016659322821 2.2506023903850756 ;
createNode mesh -n "pCylinderShape37" -p "pCylinder37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape308" -p "pCylinder37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.42499995 0.3125 
		0.43749994 0.3125 0.44999993 0.3125 0.46249992 0.3125 0.51249987 0.3125 0.52499986 
		0.3125 0.53749985 0.3125 0.54999983 0.3125 0.42499995 0.68843985 0.43749994 0.68843985 
		0.44999993 0.68843985 0.46249992 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 
		0.53749985 0.68843985 0.54999983 0.68843985 0.42499995 0.3125 0.43749994 0.3125 0.43749994 
		0.68843985 0.42499995 0.68843985 0.44999993 0.3125 0.44999993 0.68843985 0.46249992 
		0.3125 0.46249992 0.68843985 0.51249987 0.3125 0.51249987 0.68843985 0.52499986 0.3125 
		0.52499986 0.68843985 0.53749985 0.3125 0.53749985 0.68843985 0.54999983 0.3125 0.54999983 
		0.68843985 0.42499995 0.3125 0.43749994 0.3125 0.43749994 0.68843985 0.42499995 0.68843985 
		0.44999993 0.3125 0.44999993 0.68843985 0.46249992 0.3125 0.46249992 0.68843985 0.51249987 
		0.3125 0.51249987 0.68843985 0.52499986 0.3125 0.52499986 0.68843985 0.53749985 0.3125 
		0.53749985 0.68843985 0.54999983 0.3125 0.54999983 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.00067675859 -0.01404937 0.033626087 ;
	setAttr ".pt[7:8]" -type "float3" -0.00040841664 0.008478649 -0.02029299  
		0.00067675859 -0.01404937 0.033626087 ;
	setAttr ".pt[15:16]" -type "float3" -0.00040841664 0.008478649 -0.02029299  
		0.00067675859 -0.01404937 0.033626087 ;
	setAttr ".pt[19]" -type "float3" 0.00067675859 -0.01404937 0.033626087 ;
	setAttr ".pt[30:31]" -type "float3" -0.00040841664 0.008478649 -0.02029299  
		-0.00040841664 0.008478649 -0.02029299 ;
	setAttr -s 32 ".vt[0:31]"  -8.9406967e-008 -1.0000076 -0.97177619 -0.30901715 
		-1 -0.92283255 -0.5877856 -1 -0.80901736 -0.8090173 -1.0000076 -0.58778542 -0.8090173 
		-1.0000076 0.58778536 -0.58778536 -1 0.80901718 -0.30901715 -1 0.9297694 -1.4901161e-007 
		-1 0.97871292 -2.0861626e-007 0.99999237 -0.97177619 -0.30901715 0.99999237 -0.92283255 
		-0.58778548 1 -0.80901736 -0.80901742 1 -0.58778542 -0.80901718 0.99999237 0.58778536 
		-0.58778548 1 0.80901718 -0.30901703 1 0.9297694 -2.0861626e-007 0.99999237 0.97871292 
		0.014569968 -0.94867706 -0.94647545 -0.29215023 -0.95438385 -0.89951247 -0.29215023 
		1.0456085 -0.89951247 0.014569849 1.0513229 -0.94647545 -0.56565404 -0.98379517 -0.79239053 
		-0.56565392 1.0162048 -0.79239053 -0.78288293 -1.0421677 -0.58043665 -0.78288305 
		0.95783234 -0.58043665 -0.79334784 -1.3625488 0.56578076 -0.79334772 0.63745117 0.56578076 
		-0.57875586 -1.3916092 0.78337795 -0.57875597 0.60839081 0.78337795 -0.30661651 -1.4039688 
		0.90236396 -0.3066164 0.59603119 0.90236396 -0.00038072467 -1.4063873 0.95104408 
		-0.00038078427 0.59360504 0.95104408;
	setAttr -s 60 ".ed[0:59]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 8 9 1 9 10 1 10 11 1 
		11 12 1 12 13 1 13 14 1 14 15 1 
		0 8 1 1 9 1 2 10 1 3 11 1 
		4 12 1 5 13 1 6 14 1 7 15 1 
		0 16 1 1 17 1 16 17 1 9 18 1 
		17 18 1 8 19 1 19 18 1 16 19 1 
		2 20 1 17 20 1 10 21 1 20 21 1 
		18 21 1 3 22 1 20 22 1 11 23 1 
		22 23 1 21 23 1 4 24 1 22 24 1 
		12 25 1 24 25 1 23 25 1 5 26 1 
		24 26 1 13 27 1 26 27 1 25 27 1 
		6 28 1 26 28 1 14 29 1 28 29 1 
		27 29 1 7 30 1 28 30 1 15 31 1 
		30 31 1 29 31 1;
	setAttr -s 30 ".fc[0:29]" -type "polyFaces" 
		f 4 24 26 -29 -30 
		mu 0 4 32 33 34 35 
		f 4 31 33 -35 -27 
		mu 0 4 33 36 37 34 
		f 4 36 38 -40 -34 
		mu 0 4 36 38 39 37 
		f 4 -39 41 43 -45 
		mu 0 4 39 38 40 41 
		f 4 46 48 -50 -44 
		mu 0 4 40 42 43 41 
		f 4 51 53 -55 -49 
		mu 0 4 42 44 45 43 
		f 4 56 58 -60 -54 
		mu 0 4 44 46 47 45 
		f 4 14 7 -16 -1 
		mu 0 4 16 19 18 17 
		f 4 15 8 -17 -2 
		mu 0 4 17 18 21 20 
		f 4 16 9 -18 -3 
		mu 0 4 20 21 23 22 
		f 4 10 -19 -4 17 
		mu 0 4 23 25 24 22 
		f 4 18 11 -20 -5 
		mu 0 4 24 25 27 26 
		f 4 19 12 -21 -6 
		mu 0 4 26 27 29 28 
		f 4 20 13 -22 -7 
		mu 0 4 28 29 31 30 
		f 4 0 23 -25 -23 
		mu 0 4 0 1 33 32 
		f 4 -8 27 28 -26 
		mu 0 4 9 8 35 34 
		f 4 -15 22 29 -28 
		mu 0 4 8 0 32 35 
		f 4 1 30 -32 -24 
		mu 0 4 1 2 36 33 
		f 4 -9 25 34 -33 
		mu 0 4 10 9 34 37 
		f 4 2 35 -37 -31 
		mu 0 4 2 3 38 36 
		f 4 -10 32 39 -38 
		mu 0 4 11 10 37 39 
		f 4 -36 3 40 -42 
		mu 0 4 38 3 4 40 
		f 4 44 -43 -11 37 
		mu 0 4 39 41 12 11 
		f 4 4 45 -47 -41 
		mu 0 4 4 5 42 40 
		f 4 -12 42 49 -48 
		mu 0 4 13 12 41 43 
		f 4 5 50 -52 -46 
		mu 0 4 5 6 44 42 
		f 4 -13 47 54 -53 
		mu 0 4 14 13 43 45 
		f 4 6 55 -57 -51 
		mu 0 4 6 7 46 44 
		f 4 21 57 -59 -56 
		mu 0 4 7 15 47 46 
		f 4 -14 52 59 -58 
		mu 0 4 15 14 45 47 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder38";
	setAttr ".t" -type "double3" -3.5828791665800352 2.7676814444508473 -4.167845784188259 ;
	setAttr ".r" -type "double3" -98.338994319247931 0 0 ;
	setAttr ".s" -type "double3" 0.035181814136220138 0.093747066622449554 0.035181814136220138 ;
createNode mesh -n "pCylinderShape38" -p "pCylinder38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape309" -p "pCylinder38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458 
		0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 
		0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125 
		0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 
		0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 
		0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543 
		0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543 
		0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988 
		-0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994 
		0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 
		1 -0.70710671 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 
		1 0.70710677 1 1 0 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 0 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 8 0 0 8 0 1 9 0 
		2 10 0 3 11 0 4 12 0 5 13 0 
		6 14 0 7 15 0 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 8 9 18 17 
		f 4 1 18 -10 -18 
		mu 0 4 9 10 19 18 
		f 4 2 19 -11 -19 
		mu 0 4 10 11 20 19 
		f 4 3 20 -12 -20 
		mu 0 4 11 12 21 20 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 22 21 
		f 4 5 22 -14 -22 
		mu 0 4 13 14 23 22 
		f 4 6 23 -15 -23 
		mu 0 4 14 15 24 23 
		f 4 7 16 -16 -24 
		mu 0 4 15 16 25 24 
		f 3 -1 -25 25 
		mu 0 3 1 0 34 
		f 3 -2 -26 26 
		mu 0 3 2 1 34 
		f 3 -3 -27 27 
		mu 0 3 3 2 34 
		f 3 -4 -28 28 
		mu 0 3 4 3 34 
		f 3 -5 -29 29 
		mu 0 3 5 4 34 
		f 3 -6 -30 30 
		mu 0 3 6 5 34 
		f 3 -7 -31 31 
		mu 0 3 7 6 34 
		f 3 -8 -32 24 
		mu 0 3 0 7 34 
		f 3 8 33 -33 
		mu 0 3 32 31 35 
		f 3 9 34 -34 
		mu 0 3 31 30 35 
		f 3 10 35 -35 
		mu 0 3 30 29 35 
		f 3 11 36 -36 
		mu 0 3 29 28 35 
		f 3 12 37 -37 
		mu 0 3 28 27 35 
		f 3 13 38 -38 
		mu 0 3 27 26 35 
		f 3 14 39 -39 
		mu 0 3 26 33 35 
		f 3 15 32 -40 
		mu 0 3 33 32 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder39";
	setAttr ".t" -type "double3" -3.686938507700686 2.7267550206578841 0.10002967744789126 ;
	setAttr ".r" -type "double3" -98.338994319247931 0 0 ;
	setAttr ".s" -type "double3" 0.035181814136220138 0.075401693555510033 0.035181814136220138 ;
createNode mesh -n "pCylinderShape39" -p "pCylinder39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape310" -p "pCylinder39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458 
		0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 
		0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125 
		0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 
		0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 
		0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543 
		0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543 
		0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.70710671 -1 -0.70710671 0 -1 -0.99999988 
		-0.70710671 -1 -0.70710671 -0.99999988 -1 0 -0.70710671 -1 0.70710671 0 -1 0.99999994 
		0.70710677 -1 0.70710677 1 -1 0 0.70710671 1 -0.70710671 0 1 -0.99999988 -0.70710671 
		1 -0.70710671 -0.99999988 1 0 -0.70710671 1 0.70710671 0 1 0.99999994 0.70710677 
		1 0.70710677 1 1 0 0 -1 0 0 1 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 0 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 8 0 0 8 0 1 9 0 
		2 10 0 3 11 0 4 12 0 5 13 0 
		6 14 0 7 15 0 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 8 9 18 17 
		f 4 1 18 -10 -18 
		mu 0 4 9 10 19 18 
		f 4 2 19 -11 -19 
		mu 0 4 10 11 20 19 
		f 4 3 20 -12 -20 
		mu 0 4 11 12 21 20 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 22 21 
		f 4 5 22 -14 -22 
		mu 0 4 13 14 23 22 
		f 4 6 23 -15 -23 
		mu 0 4 14 15 24 23 
		f 4 7 16 -16 -24 
		mu 0 4 15 16 25 24 
		f 3 -1 -25 25 
		mu 0 3 1 0 34 
		f 3 -2 -26 26 
		mu 0 3 2 1 34 
		f 3 -3 -27 27 
		mu 0 3 3 2 34 
		f 3 -4 -28 28 
		mu 0 3 4 3 34 
		f 3 -5 -29 29 
		mu 0 3 5 4 34 
		f 3 -6 -30 30 
		mu 0 3 6 5 34 
		f 3 -7 -31 31 
		mu 0 3 7 6 34 
		f 3 -8 -32 24 
		mu 0 3 0 7 34 
		f 3 8 33 -33 
		mu 0 3 32 31 35 
		f 3 9 34 -34 
		mu 0 3 31 30 35 
		f 3 10 35 -35 
		mu 0 3 30 29 35 
		f 3 11 36 -36 
		mu 0 3 29 28 35 
		f 3 12 37 -37 
		mu 0 3 28 27 35 
		f 3 13 38 -38 
		mu 0 3 27 26 35 
		f 3 14 39 -39 
		mu 0 3 26 33 35 
		f 3 15 32 -40 
		mu 0 3 33 32 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface140";
createNode transform -n "polySurface146" -p "polySurface140";
createNode mesh -n "polySurfaceShape149" -p "polySurface146";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape311" -p "polySurface146";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.83737075 0.28646702 
		0.8339051 0.28646702 0.8339051 0.17185578 0.83737075 0.17185578 0.83043939 0.28646702 
		0.83043939 0.17185578 0.75386673 0.17185587 0.75733244 0.17185587 0.75733244 0.28646702 
		0.75386673 0.28646702 0.76079816 0.17185587 0.76079816 0.28646702 0.74110472 0.17185587 
		0.74457043 0.17185587 0.74457043 0.28646702 0.74110472 0.28646702 0.74803609 0.17185587 
		0.74803609 0.28646702 0.72834259 0.5537551 0.73180825 0.5537551 0.73180825 0.66836625 
		0.72834259 0.66836625 0.73527402 0.5537551 0.73527402 0.66836625 0.25011551 0.96427786 
		0.2535812 0.96571338 0.25011551 0.96917909 0.2466498 0.96571338 0.24521425 0.96917909 
		0.2466498 0.97264481 0.25011551 0.97408032 0.2535812 0.97264481 0.25501674 0.96917909 
		0.11288252 0.97604531 0.11431804 0.97951096 0.10941681 0.97951096 0.11288252 0.98297662 
		0.10941681 0.98441219 0.10595111 0.98297662 0.10451559 0.97951096 0.10595111 0.97604531 
		0.10941681 0.97460973;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  6.1317358 0.18969154 20.332914 5.8700213 
		0.18969154 20.224508 5.6083069 0.18969154 20.332914 5.4999013 0.18969154 20.594629 
		5.6083069 0.18969154 20.856344 5.8700213 0.18969154 20.96475 6.1317358 0.18969154 
		20.856344 6.2401414 0.18969154 20.594629 6.1317358 8.8446255 20.332914 5.8700213 
		8.8446255 20.224508 5.6083069 8.8446255 20.332914 5.4999013 8.8446255 20.594629 5.6083069 
		8.8446255 20.856344 5.8700213 8.8446255 20.96475 6.1317358 8.8446255 20.856344 6.2401414 
		8.8446255 20.594629 5.8700213 0.18969154 20.594629 5.8700213 8.8446255 20.594629;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface147" -p "polySurface140";
createNode mesh -n "polySurfaceShape150" -p "polySurface147";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape312" -p "polySurface147";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.82460874 0.28646711 
		0.82114303 0.28646711 0.82114303 0.17185585 0.82460874 0.17185585 0.81767732 0.28646711 
		0.81767732 0.17185585 0.7155804 0.5537551 0.71904612 0.5537551 0.71904612 0.66836625 
		0.7155804 0.66836625 0.72251183 0.5537551 0.72251183 0.66836625 0.70281833 0.5537551 
		0.70628399 0.5537551 0.70628399 0.66836625 0.70281833 0.66836625 0.7097497 0.5537551 
		0.7097497 0.66836625 0.6900562 0.5537551 0.69352186 0.5537551 0.69352186 0.66836625 
		0.6900562 0.66836625 0.69698763 0.5537551 0.69698763 0.66836625 0.21884914 0.97460961 
		0.22231485 0.97604519 0.21884914 0.9795109 0.21538343 0.97604519 0.21394788 0.9795109 
		0.21538343 0.98297662 0.21884914 0.98441213 0.22231485 0.98297662 0.22375037 0.9795109 
		0.36301371 0.97264481 0.359548 0.97408038 0.359548 0.96917909 0.35608229 0.97264481 
		0.35464674 0.96917909 0.35608229 0.96571338 0.359548 0.96427786 0.36301371 0.96571338 
		0.36444923 0.96917909;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.984128 0.18969154 -20.908989 5.7224135 
		0.18969154 -21.017395 5.4606991 0.18969154 -20.908989 5.3522935 0.18969154 -20.647274 
		5.4606991 0.18969154 -20.385559 5.7224135 0.18969154 -20.277153 5.984128 0.18969154 
		-20.385559 6.0925336 0.18969154 -20.647274 5.984128 8.8446255 -20.908989 5.7224135 
		8.8446255 -21.017395 5.4606991 8.8446255 -20.908989 5.3522935 8.8446255 -20.647274 
		5.4606991 8.8446255 -20.385559 5.7224135 8.8446255 -20.277153 5.984128 8.8446255 
		-20.385559 6.0925336 8.8446255 -20.647274 5.7224135 0.18969154 -20.647274 5.7224135 
		8.8446255 -20.647274;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface148" -p "polySurface140";
createNode mesh -n "polySurfaceShape151" -p "polySurface148";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape313" -p "polySurface148";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.81184661 0.28646711 
		0.8083809 0.28646711 0.8083809 0.17185585 0.81184661 0.17185585 0.80491519 0.28646711 
		0.80491519 0.17185585 0.67729402 0.5537551 0.68075973 0.5537551 0.68075973 0.66836625 
		0.67729402 0.66836625 0.68422544 0.5537551 0.68422544 0.66836625 0.66453189 0.5537551 
		0.6679976 0.5537551 0.6679976 0.66836625 0.66453189 0.66836625 0.67146331 0.5537551 
		0.67146331 0.66836625 0.65176976 0.5537551 0.65523541 0.5537551 0.65523541 0.66836625 
		0.65176976 0.66836625 0.65870112 0.5537551 0.65870112 0.66836625 0.23448233 0.96427804 
		0.23794802 0.96571356 0.23448233 0.96917927 0.23101662 0.96571356 0.22958107 0.96917927 
		0.23101662 0.97264498 0.23448233 0.9740805 0.23794802 0.97264498 0.23938355 0.96917927 
		0.097249359 0.97604531 0.098684877 0.97951096 0.093783647 0.97951096 0.097249359 
		0.98297673 0.093783647 0.98441219 0.090317942 0.98297673 0.088882424 0.97951096 0.090317942 
		0.97604531 0.093783647 0.97460973;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5892639 0.18969154 20.332914 -5.8509784 
		0.18969154 20.224508 -6.1126928 0.18969154 20.332914 -6.2210984 0.18969154 20.594629 
		-6.1126928 0.18969154 20.856344 -5.8509784 0.18969154 20.96475 -5.5892639 0.18969154 
		20.856344 -5.4808583 0.18969154 20.594629 -5.5892639 8.8446255 20.332914 -5.8509784 
		8.8446255 20.224508 -6.1126928 8.8446255 20.332914 -6.2210984 8.8446255 20.594629 
		-6.1126928 8.8446255 20.856344 -5.8509784 8.8446255 20.96475 -5.5892639 8.8446255 
		20.856344 -5.4808583 8.8446255 20.594629 -5.8509784 0.18969154 20.594629 -5.8509784 
		8.8446255 20.594629;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface149" -p "polySurface140";
createNode mesh -n "polySurfaceShape152" -p "polySurface149";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape314" -p "polySurface149";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.79908442 0.28646702 
		0.79561871 0.28646702 0.79561871 0.17185578 0.79908442 0.17185578 0.792153 0.28646702 
		0.792153 0.17185578 0.63900775 0.5537551 0.6424734 0.5537551 0.6424734 0.66836625 
		0.63900775 0.66836625 0.64593917 0.5537551 0.64593917 0.66836625 0.6262455 0.5537551 
		0.62971121 0.5537551 0.62971121 0.66836625 0.6262455 0.66836625 0.63317692 0.5537551 
		0.63317692 0.66836625 0.61348337 0.5537551 0.61694914 0.5537551 0.61694914 0.66836625 
		0.61348337 0.66836625 0.62041479 0.5537551 0.62041479 0.66836625 0.34391481 0.96427786 
		0.34738049 0.9657135 0.34391481 0.96917909 0.34044909 0.9657135 0.33901355 0.96917909 
		0.34044909 0.97264487 0.34391481 0.97408038 0.34738049 0.97264487 0.34881604 0.96917909 
		0.33174726 0.97264498 0.32828158 0.97408056 0.32828158 0.96917933 0.32481587 0.97264498 
		0.32338032 0.96917933 0.32481587 0.96571356 0.32828158 0.96427804 0.33174726 0.96571356 
		0.33318281 0.96917933;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5892639 0.18969154 -20.843288 -5.8509784 
		0.18969154 -20.951694 -6.1126928 0.18969154 -20.843288 -6.2210984 0.18969154 -20.581573 
		-6.1126928 0.18969154 -20.319859 -5.8509784 0.18969154 -20.211452 -5.5892639 0.18969154 
		-20.319859 -5.4808583 0.18969154 -20.581573 -5.5892639 8.8446255 -20.843288 -5.8509784 
		8.8446255 -20.951694 -6.1126928 8.8446255 -20.843288 -6.2210984 8.8446255 -20.581573 
		-6.1126928 8.8446255 -20.319859 -5.8509784 8.8446255 -20.211452 -5.5892639 8.8446255 
		-20.319859 -5.4808583 8.8446255 -20.581573 -5.8509784 0.18969154 -20.581573 -5.8509784 
		8.8446255 -20.581573;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface150" -p "polySurface140";
createNode mesh -n "polySurfaceShape153" -p "polySurface150";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape315" -p "polySurface150";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.78632241 0.28646711 
		0.7828567 0.28646711 0.7828567 0.17185585 0.78632241 0.17185585 0.77939099 0.28646711 
		0.77939099 0.17185585 0.60072124 0.5537551 0.60418695 0.5537551 0.60418695 0.66836625 
		0.60072124 0.66836625 0.60765266 0.5537551 0.60765266 0.66836625 0.58795917 0.5537551 
		0.59142488 0.5537551 0.59142488 0.66836625 0.58795917 0.66836625 0.59489059 0.5537551 
		0.59489059 0.66836625 0.57519698 0.5537551 0.57866275 0.5537551 0.57866275 0.66836625 
		0.57519698 0.66836625 0.58212841 0.5537551 0.58212841 0.66836625 0.20321594 0.97460973 
		0.20668164 0.97604531 0.20321594 0.97951096 0.19975023 0.97604531 0.19831468 0.97951096 
		0.19975023 0.98297668 0.20321594 0.98441219 0.20668164 0.98297668 0.20811717 0.97951096 
		0.081616193 0.97604525 0.083051711 0.97951096 0.078150481 0.97951096 0.081616193 
		0.98297668 0.078150481 0.98441219 0.074684776 0.98297668 0.073249258 0.97951096 0.074684776 
		0.97604525 0.078150481 0.97460973;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5892639 0.18969154 -0.28662279 -5.8509784 
		0.18969154 -0.3950285 -6.1126928 0.18969154 -0.28662279 -6.2210984 0.18969154 -0.024908304 
		-6.1126928 0.18969154 0.23680618 -5.8509784 0.18969154 0.34521189 -5.5892639 0.18969154 
		0.23680621 -5.4808583 0.18969154 -0.024908304 -5.5892639 8.8446255 -0.28662279 -5.8509784 
		8.8446255 -0.3950285 -6.1126928 8.8446255 -0.28662279 -6.2210984 8.8446255 -0.024908304 
		-6.1126928 8.8446255 0.23680618 -5.8509784 8.8446255 0.34521189 -5.5892639 8.8446255 
		0.23680621 -5.4808583 8.8446255 -0.024908304 -5.8509784 0.18969154 -0.024908304 -5.8509784 
		8.8446255 -0.024908304;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface151" -p "polySurface140";
createNode mesh -n "polySurfaceShape154" -p "polySurface151";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape316" -p "polySurface151";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.77356029 0.28646711 
		0.77009457 0.28646711 0.77009457 0.17185585 0.77356029 0.17185585 0.76662886 0.28646711 
		0.76662886 0.17185585 0.56243479 0.5537551 0.56590056 0.5537551 0.56590056 0.66836625 
		0.56243479 0.66836625 0.56936622 0.5537551 0.56936622 0.66836625 0.54967272 0.5537551 
		0.55313843 0.5537551 0.55313843 0.66836625 0.54967272 0.66836625 0.55660415 0.5537551 
		0.55660415 0.66836625 0.53691065 0.55375516 0.54037625 0.55375516 0.54037625 0.66836637 
		0.53691065 0.66836637 0.54384196 0.55375516 0.54384196 0.66836637 0.1826815 0.97951084 
		0.184117 0.97604519 0.18758272 0.97951084 0.184117 0.98297662 0.18758272 0.98441213 
		0.19104843 0.98297662 0.19248398 0.97951084 0.19104843 0.97604519 0.18758272 0.97460961 
		0.3161141 0.97264498 0.31264839 0.97408056 0.31264839 0.96917927 0.30918267 0.97264498 
		0.30774713 0.96917927 0.30918267 0.96571362 0.31264839 0.96427804 0.3161141 0.96571362 
		0.31754962 0.96917927;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.984128 0.18969154 -0.27028307 5.7224135 
		0.18969154 -0.37868878 5.4606991 0.18969154 -0.27028307 5.3522935 0.18969154 -0.0085685924 
		5.4606991 0.18969154 0.2531459 5.7224135 0.18969154 0.36155161 5.984128 0.18969154 
		0.25314593 6.0925336 0.18969154 -0.0085685924 5.984128 8.8446255 -0.27028307 5.7224135 
		8.8446255 -0.37868878 5.4606991 8.8446255 -0.27028307 5.3522935 8.8446255 -0.0085685924 
		5.4606991 8.8446255 0.2531459 5.7224135 8.8446255 0.36155161 5.984128 8.8446255 0.25314593 
		6.0925336 8.8446255 -0.0085685924 5.7224135 0.18969154 -0.0085685924 5.7224135 8.8446255 
		-0.0085685924;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface152" -p "polySurface140";
createNode mesh -n "polySurfaceShape155" -p "polySurface152";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape317" -p "polySurface152";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.0088245654 0.56143332 
		0.0053588557 0.56143332 0.0053588557 0.001992048 0.0088245654 0.001992048 0.0018931457 
		0.56143332 0.0018931457 0.001992048 0.021975182 0.56143332 0.018509474 0.56143332 
		0.018509474 0.0019920396 0.021975182 0.0019920396 0.015043763 0.56143332 0.015043763 
		0.0019920396 0.028009146 0.001992048 0.031474859 0.001992048 0.031474859 0.56143332 
		0.028009146 0.56143332 0.034940567 0.001992048 0.034940567 0.56143332 0.040974565 
		0.0019920396 0.044440273 0.0019920396 0.044440273 0.56143332 0.040974565 0.56143332 
		0.047905985 0.0019920396 0.047905985 0.56143332 0.0576161 0.97951096 0.059051681 
		0.97604519 0.062517323 0.97951096 0.059051681 0.98297662 0.062517323 0.98441219 0.065983102 
		0.98297662 0.067418553 0.97951096 0.065983102 0.97604519 0.062517323 0.97460973 0.17541528 
		0.98297662 0.17194957 0.98441219 0.17194957 0.97951096 0.16848385 0.98297662 0.16704831 
		0.97951096 0.16848385 0.97604519 0.17194957 0.97460967 0.17541528 0.97604519 0.17685078 
		0.97951096;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.984128 8.9967937 -21.131836 5.7224135 
		9.1051989 -21.131836 5.4606991 8.9967937 -21.131836 5.3522935 8.7350788 -21.131836 
		5.4606991 8.4733639 -21.131836 5.7224135 8.3649588 -21.131836 5.984128 8.4733639 
		-21.131836 6.0925336 8.7350788 -21.131836 5.984128 8.9967937 21.1147 5.7224135 9.1051989 
		21.1147 5.4606991 8.9967937 21.1147 5.3522935 8.7350788 21.1147 5.4606991 8.4733639 
		21.1147 5.7224135 8.3649588 21.1147 5.984128 8.4733639 21.1147 6.0925336 8.7350788 
		21.1147 5.7224135 8.7350788 -21.131836 5.7224135 8.7350788 21.1147;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface153" -p "polySurface140";
createNode mesh -n "polySurfaceShape156" -p "polySurface153";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape318" -p "polySurface153";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.060871337 0.56143332 
		0.057405643 0.56143332 0.057405643 0.001992048 0.060871337 0.001992048 0.053939931 
		0.56143332 0.053939931 0.001992048 0.073836751 0.56143332 0.070371039 0.56143332 
		0.070371039 0.0019920396 0.073836751 0.0019920396 0.066905335 0.56143332 0.066905335 
		0.0019920396 0.079870701 0.001992048 0.083336413 0.001992048 0.083336413 0.56143332 
		0.079870701 0.56143332 0.086802103 0.001992048 0.086802103 0.56143332 0.092836104 
		0.0019920396 0.096301809 0.0019920396 0.096301809 0.56143332 0.092836104 0.56143332 
		0.099767521 0.0019920396 0.099767521 0.56143332 0.041982941 0.97951096 0.043418523 
		0.97604531 0.046884168 0.97951096 0.043418523 0.98297662 0.046884168 0.98441219 0.050349943 
		0.98297662 0.051785391 0.97951096 0.050349943 0.97604531 0.046884168 0.97460973 0.15978207 
		0.98297662 0.15631637 0.98441219 0.15631637 0.97951096 0.15285066 0.98297662 0.15141512 
		0.97951096 0.15285066 0.97604519 0.15631637 0.97460967 0.15978207 0.97604519 0.1612176 
		0.97951096;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5889163 8.9967937 -21.131836 -5.8506308 
		9.1051989 -21.131836 -6.1123452 8.9967937 -21.131836 -6.2207508 8.7350788 -21.131836 
		-6.1123452 8.4733639 -21.131836 -5.8506308 8.3649588 -21.131836 -5.5889163 8.4733639 
		-21.131836 -5.4805107 8.7350788 -21.131836 -5.5889163 8.9967937 21.1147 -5.8506308 
		9.1051989 21.1147 -6.1123452 8.9967937 21.1147 -6.2207508 8.7350788 21.1147 -6.1123452 
		8.4733639 21.1147 -5.8506308 8.3649588 21.1147 -5.5889163 8.4733639 21.1147 -5.4805107 
		8.7350788 21.1147 -5.8506308 8.7350788 -21.131836 -5.8506308 8.7350788 21.1147;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface154" -p "polySurface140";
createNode mesh -n "polySurfaceShape157" -p "polySurface154";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape319" -p "polySurface154";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.80175084 0.16806248 
		0.79828513 0.16806248 0.79828513 0.001992048 0.80175084 0.001992048 0.79481941 0.16806248 
		0.79481941 0.001992048 0.7628547 0.16806252 0.75938898 0.16806252 0.75938898 0.001992048 
		0.7628547 0.001992048 0.75592327 0.16806252 0.75592327 0.001992048 0.77582002 0.16806252 
		0.77235436 0.16806252 0.77235436 0.0019920396 0.77582002 0.0019920396 0.76888865 
		0.16806252 0.76888865 0.0019920396 0.8276816 0.16806242 0.82421583 0.16806242 0.82421583 
		0.001992048 0.8276816 0.001992048 0.82075024 0.16806242 0.82075024 0.001992048 0.14558442 
		0.9795109 0.1441489 0.98297662 0.1406832 0.9795109 0.1441489 0.97604519 0.1406832 
		0.97460967 0.13721749 0.97604519 0.13578194 0.9795109 0.13721749 0.98297662 0.1406832 
		0.98441219 0.30048093 0.96571356 0.30191636 0.96917927 0.29701513 0.96917927 0.30048093 
		0.97264498 0.29701513 0.9740805 0.29354951 0.97264498 0.29211393 0.96917927 0.29354951 
		0.96571356 0.29701513 0.96427798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -6.3292212 8.9967937 20.340393 -6.3292212 
		9.1051989 20.602108 -6.3292212 8.9967937 20.863823 -6.3292212 8.7350788 20.972229 
		-6.3292212 8.4733639 20.863823 -6.3292212 8.3649588 20.602108 -6.3292212 8.4733639 
		20.340393 -6.3292212 8.7350788 20.231987 6.2116895 8.9967937 20.340393 6.2116895 
		9.1051989 20.602108 6.2116895 8.9967937 20.863823 6.2116895 8.7350788 20.972229 6.2116895 
		8.4733639 20.863823 6.2116895 8.3649588 20.602108 6.2116895 8.4733639 20.340393 6.2116895 
		8.7350788 20.231987 -6.3292212 8.7350788 20.602108 6.2116895 8.7350788 20.602108;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface155" -p "polySurface140";
createNode mesh -n "polySurfaceShape158" -p "polySurface155";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape320" -p "polySurface155";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.81471622 0.16806248 
		0.81125051 0.16806248 0.81125051 0.001992048 0.81471622 0.001992048 0.8077848 0.16806248 
		0.8077848 0.001992048 0.78878546 0.16806252 0.78531975 0.16806252 0.78531975 0.001992048 
		0.78878546 0.001992048 0.78185403 0.16806252 0.78185403 0.001992048 0.74988931 0.16806255 
		0.7464236 0.16806255 0.7464236 0.001992048 0.74988931 0.001992048 0.74295789 0.16806255 
		0.74295789 0.001992048 0.84064704 0.16806242 0.83718121 0.16806242 0.83718121 0.001992048 
		0.84064704 0.001992048 0.83371562 0.16806242 0.83371562 0.001992048 0.28628314 0.96917927 
		0.28484762 0.97264504 0.28138191 0.96917927 0.28484762 0.96571362 0.28138191 0.96427804 
		0.27791619 0.96571362 0.27648064 0.96917927 0.27791619 0.97264504 0.28138191 0.9740805 
		0.26921442 0.96571332 0.27064988 0.96917903 0.26574865 0.96917903 0.26921442 0.97264475 
		0.26574865 0.97408032 0.26228303 0.97264475 0.26084745 0.96917903 0.26228303 0.96571332 
		0.26574865 0.9642778;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -6.3292212 8.9967937 -20.84956 -6.3292212 
		9.1051989 -20.587845 -6.3292212 8.9967937 -20.32613 -6.3292212 8.7350788 -20.217724 
		-6.3292212 8.4733639 -20.32613 -6.3292212 8.3649588 -20.587845 -6.3292212 8.4733639 
		-20.84956 -6.3292212 8.7350788 -20.957966 6.2116895 8.9967937 -20.84956 6.2116895 
		9.1051989 -20.587845 6.2116895 8.9967937 -20.32613 6.2116895 8.7350788 -20.217724 
		6.2116895 8.4733639 -20.32613 6.2116895 8.3649588 -20.587845 6.2116895 8.4733639 
		-20.84956 6.2116895 8.7350788 -20.957966 -6.3292212 8.7350788 -20.587845 6.2116895 
		8.7350788 -20.587845;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface156" -p "polySurface140";
createNode mesh -n "polySurfaceShape159" -p "polySurface156";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape321" -p "polySurface156";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.11273289 0.56143332 
		0.1092672 0.56143332 0.1092672 0.001992048 0.11273289 0.001992048 0.10580149 0.56143332 
		0.10580149 0.001992048 0.19052525 0.56143326 0.18705954 0.56143326 0.18705954 0.0019920354 
		0.19052525 0.0019920354 0.18359382 0.56143326 0.18359382 0.0019920354 0.11876687 
		0.001992048 0.12223259 0.001992048 0.12223259 0.56143332 0.11876687 0.56143332 0.12569828 
		0.001992048 0.12569828 0.56143332 0.13173226 0.0019920354 0.13519797 0.0019920354 
		0.13519797 0.56143332 0.13173226 0.56143332 0.13866368 0.0019920354 0.13866368 0.56143332 
		0.026349785 0.97951096 0.027785366 0.97604531 0.03125101 0.97951096 0.027785366 0.98297662 
		0.03125101 0.98441219 0.034716655 0.98297662 0.036152236 0.97951096 0.034716655 0.97604531 
		0.03125101 0.97460973 0.019083545 0.97604525 0.020519061 0.97951096 0.015617835 0.97951096 
		0.019083545 0.98297668 0.015617835 0.98441219 0.012152126 0.98297668 0.010716611 
		0.97951096 0.012152126 0.97604525 0.015617835 0.97460973;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5889163 5.6212668 -21.131836 -5.8506308 
		5.7296724 -21.131836 -6.1123452 5.6212668 -21.131836 -6.2207508 5.3595524 -21.131836 
		-6.1123452 5.0978379 -21.131836 -5.8506308 4.9894323 -21.131836 -5.5889163 5.0978379 
		-21.131836 -5.4805107 5.3595524 -21.131836 -5.5889163 5.6212668 21.1147 -5.8506308 
		5.7296724 21.1147 -6.1123452 5.6212668 21.1147 -6.2207508 5.3595524 21.1147 -6.1123452 
		5.0978379 21.1147 -5.8506308 4.9894323 21.1147 -5.5889163 5.0978379 21.1147 -5.4805107 
		5.3595524 21.1147 -5.8506308 5.3595524 -21.131836 -5.8506308 5.3595524 21.1147;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface157" -p "polySurface140";
createNode mesh -n "polySurfaceShape160" -p "polySurface157";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape322" -p "polySurface157";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.15162909 0.56143332 
		0.14816338 0.56143332 0.14816338 0.001992048 0.15162909 0.001992048 0.14469767 0.56143332 
		0.14469767 0.001992048 0.20349066 0.56143326 0.20002495 0.56143326 0.20002495 0.0019920354 
		0.20349066 0.0019920354 0.19655924 0.56143326 0.19655924 0.0019920354 0.15766306 
		0.001992048 0.16112876 0.001992048 0.16112876 0.56143332 0.15766306 0.56143332 0.16459447 
		0.001992048 0.16459447 0.56143332 0.17062847 0.0019920354 0.17409419 0.0019920354 
		0.17409419 0.56143332 0.17062847 0.56143332 0.1775599 0.0019920354 0.1775599 0.56143332 
		0.0018931457 0.99310678 0.0033287273 0.98964101 0.0067943707 0.99310678 0.0033287273 
		0.99657243 0.0067943707 0.99800801 0.010260014 0.99657243 0.011695595 0.99310678 
		0.010260014 0.98964101 0.0067943707 0.98820555 0.12851571 0.97604525 0.12995121 0.97951096 
		0.12504999 0.97951096 0.12851571 0.98297668 0.12504999 0.98441219 0.12158428 0.98297668 
		0.12014876 0.97951096 0.12158428 0.97604525 0.12504999 0.97460973;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.984128 5.6212668 -21.131836 5.7224135 
		5.7296724 -21.131836 5.4606991 5.6212668 -21.131836 5.3522935 5.3595524 -21.131836 
		5.4606991 5.0978379 -21.131836 5.7224135 4.9894323 -21.131836 5.984128 5.0978379 
		-21.131836 6.0925336 5.3595524 -21.131836 5.984128 5.6212668 21.1147 5.7224135 5.7296724 
		21.1147 5.4606991 5.6212668 21.1147 5.3522935 5.3595524 21.1147 5.4606991 5.0978379 
		21.1147 5.7224135 4.9894323 21.1147 5.984128 5.0978379 21.1147 6.0925336 5.3595524 
		21.1147 5.7224135 5.3595524 -21.131836 5.7224135 5.3595524 21.1147;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 6 7 8 9 
		f 4 3 20 -12 -20 
		mu 0 4 7 10 11 8 
		f 4 4 21 -13 -21 
		mu 0 4 12 13 14 15 
		f 4 5 22 -14 -22 
		mu 0 4 13 16 17 14 
		f 4 6 23 -15 -23 
		mu 0 4 18 19 20 21 
		f 4 7 16 -16 -24 
		mu 0 4 19 22 23 20 
		f 3 -1 -25 25 
		mu 0 3 24 25 26 
		f 3 -2 -26 26 
		mu 0 3 27 24 26 
		f 3 -3 -27 27 
		mu 0 3 28 27 26 
		f 3 -4 -28 28 
		mu 0 3 29 28 26 
		f 3 -5 -29 29 
		mu 0 3 30 29 26 
		f 3 -6 -30 30 
		mu 0 3 31 30 26 
		f 3 -7 -31 31 
		mu 0 3 32 31 26 
		f 3 -8 -32 24 
		mu 0 3 25 32 26 
		f 3 8 33 -33 
		mu 0 3 33 34 35 
		f 3 9 34 -34 
		mu 0 3 34 36 35 
		f 3 10 35 -35 
		mu 0 3 36 37 35 
		f 3 11 36 -36 
		mu 0 3 37 38 35 
		f 3 12 37 -37 
		mu 0 3 38 39 35 
		f 3 13 38 -38 
		mu 0 3 39 40 35 
		f 3 14 39 -39 
		mu 0 3 40 41 35 
		f 3 15 32 -40 
		mu 0 3 41 33 35 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface158" -p "polySurface140";
createNode mesh -n "polySurfaceShape161" -p "polySurface158";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape323" -p "polySurface158";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.42214677 0.96313828 
		0.43360496 0.96313828 0.43360496 0.97461951 0.42214677 0.97461951 0.6297062 0.97919697 
		0.64116436 0.97919697 0.64116436 0.99458736 0.6297062 0.99458736 0.49130246 0.96313828 
		0.50276065 0.96313828 0.50276065 0.97461963 0.49130246 0.97461963 0.76810974 0.78001583 
		0.7795679 0.78001583 0.7795679 0.79540616 0.76810974 0.79540616 0.61239421 0.99458736 
		0.61239421 0.97919697 0.6238755 0.97919697 0.6238755 0.99458736 0.75079787 0.79540622 
		0.75079787 0.78001583 0.76227909 0.78001583 0.76227909 0.79540622;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.873889 8.4062614 -18.96253 5.7391615 8.4062614 
		-18.96253 4.873889 9.2732792 -18.96253 5.7391615 9.2732792 -18.96253 4.873889 9.2732792 
		-20.124746 5.7391615 9.2732792 -20.124746 4.873889 8.4062614 -20.124746 5.7391615 
		8.4062614 -20.124746;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface159" -p "polySurface140";
createNode mesh -n "polySurfaceShape162" -p "polySurface159";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape324" -p "polySurface159";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.20952463 0.9914189 
		0.20952463 0.98820555 0.21041664 0.98820555 0.21041664 0.9914189 0.018748159 0.98820549 
		0.02196151 0.98820549 0.02196151 0.9914189 0.018748159 0.9914189 0.27064717 0.98108697 
		0.27064717 0.97787368 0.27153924 0.97787368 0.27153924 0.98108697 0.13173229 0.98820555 
		0.13494565 0.98820555 0.13494565 0.99141896 0.13173229 0.99141896 0.02800918 0.99141896 
		0.02800918 0.98820555 0.028901234 0.98820555 0.028901234 0.99141896 0.14099321 0.99141896 
		0.14099321 0.98820555 0.14188524 0.98820555 0.14188524 0.99141896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.1695728 9.2335854 -19.751795 5.4122324 
		9.2335854 -19.751795 5.1695728 9.3009472 -19.751795 5.4122324 9.3009472 -19.751795 
		5.1695728 9.3009472 -19.994455 5.4122324 9.3009472 -19.994455 5.1695728 9.2335854 
		-19.994455 5.4122324 9.2335854 -19.994455;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface160" -p "polySurface140";
createNode mesh -n "polySurfaceShape163" -p "polySurface160";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape325" -p "polySurface160";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.72837621 0.89462698 
		0.72711378 0.89462698 0.72711378 0.8768512 0.72837621 0.8768512 0.72514749 0.89462698 
		0.72514749 0.8768512 0.72266984 0.89462698 0.72266984 0.8768512 0.71992332 0.89462698 
		0.71992332 0.8768512 0.71717685 0.89462698 0.71717685 0.8768512 0.71469915 0.89462698 
		0.71469915 0.8768512 0.71273285 0.89462698 0.71273285 0.8768512 0.71147048 0.89462698 
		0.71147048 0.8768512 0.85877442 0.54213744 0.85696769 0.54213744 0.85696769 0.52436167 
		0.85877442 0.52436167 0.85516095 0.54213744 0.85516095 0.52436167 0.85353112 0.54213744 
		0.85353112 0.52436167 0.85223758 0.54213744 0.85223758 0.52436167 0.86520302 0.51768607 
		0.86768073 0.51768607 0.86768073 0.53546184 0.86520302 0.53546184 0.87042719 0.51768607 
		0.87042719 0.53546184 0.87317365 0.51768607 0.87317365 0.53546184 0.87565136 0.51768607 
		0.87565136 0.53546184 0.8776176 0.51768607 0.8776176 0.53546184 0.87888008 0.51768607 
		0.87888008 0.53546184 0.73554915 0.8768512 0.73735583 0.8768512 0.73735583 0.89462698 
		0.73554915 0.89462698 0.73916262 0.8768512 0.73916262 0.89462698 0.8228569 0.51821858 
		0.82448679 0.51695621 0.82629347 0.52540898 0.82156348 0.52018487 0.82073295 0.52266252 
		0.82044685 0.52540898 0.82073295 0.52815557 0.82156348 0.53063315 0.8228569 0.53259945 
		0.82448679 0.53386188 0.82629347 0.53429687 0.82810026 0.53386188 0.82973015 0.53259945 
		0.83102357 0.53063315 0.8318541 0.52815545 0.83214021 0.52540898 0.8318541 0.52266252 
		0.83102357 0.52018487 0.82973015 0.51821858 0.82810026 0.51695621 0.82629347 0.51652116 
		0.89323068 0.51812106 0.89486051 0.51938349 0.89142388 0.52657396 0.89615399 0.52134973 
		0.8969844 0.52382743 0.89727068 0.52657396 0.8969844 0.52932048 0.89615399 0.53179806 
		0.89486051 0.53376442 0.89323068 0.53502679 0.89142388 0.53546178 0.8896172 0.53502679 
		0.88798732 0.53376442 0.88669378 0.53179806 0.88586336 0.52932042 0.8855772 0.52657396 
		0.88586336 0.52382743 0.88669378 0.52134973 0.88798732 0.51938349 0.8896172 0.51812106 
		0.89142388 0.51768607;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  6.063344 8.6862535 -20.217093 5.9680109 
		8.8093348 -20.217093 5.8195257 8.907012 -20.217093 5.6324244 8.9697256 -20.217093 
		5.4250202 8.9913349 -20.217093 5.2176161 8.9697256 -20.217093 5.0305147 8.907012 
		-20.217093 4.88203 8.8093348 -20.217093 4.7866969 8.6862535 -20.217093 4.7538471 
		8.5498171 -20.217093 4.7866969 8.4133806 -20.217093 4.88203 8.2902994 -20.217093 
		5.0305147 8.1926222 -20.217093 5.2176166 8.1299086 -20.217093 5.4250202 8.1082993 
		-20.217093 5.6324239 8.1299086 -20.217093 5.8195257 8.1926222 -20.217093 5.9680104 
		8.2902994 -20.217093 6.0633435 8.4133806 -20.217093 6.0961928 8.5498171 -20.217093 
		6.063344 8.6862535 -18.874746 5.9680109 8.8093348 -18.874746 5.8195257 8.907012 -18.874746 
		5.6324244 8.9697256 -18.874746 5.4250202 8.9913349 -18.874746 5.2176161 8.9697256 
		-18.874746 5.0305147 8.907012 -18.874746 4.88203 8.8093348 -18.874746 4.7866969 8.6862535 
		-18.874746 4.7538471 8.5498171 -18.874746 4.7866969 8.4133806 -18.874746 4.88203 
		8.2902994 -18.874746 5.0305147 8.1926222 -18.874746 5.2176166 8.1299086 -18.874746 
		5.4250202 8.1082993 -18.874746 5.6324239 8.1299086 -18.874746 5.8195257 8.1926222 
		-18.874746 5.9680104 8.2902994 -18.874746 6.0633435 8.4133806 -18.874746 6.0961928 
		8.5498171 -18.874746 5.4250202 8.5498171 -20.217093 5.4250202 8.5498171 -18.874746;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 20 21 0 21 22 0 
		22 23 0 23 24 0 24 25 0 25 26 0 
		26 27 0 27 28 0 28 29 0 29 30 0 
		30 31 0 31 32 0 32 33 0 33 34 0 
		34 35 0 35 36 0 36 37 0 37 38 0 
		38 39 0 39 20 0 0 20 1 1 21 1 
		2 22 1 3 23 1 4 24 1 5 25 1 
		6 26 1 7 27 1 8 28 1 9 29 1 
		10 30 1 11 31 1 12 32 1 13 33 1 
		14 34 1 15 35 1 16 36 1 17 37 1 
		18 38 1 19 39 1 40 0 1 40 1 1 
		40 2 1 40 3 1 40 4 1 40 5 1 
		40 6 1 40 7 1 40 8 1 40 9 1 
		40 10 1 40 11 1 40 12 1 40 13 1 
		40 14 1 40 15 1 40 16 1 40 17 1 
		40 18 1 40 19 1 20 41 1 21 41 1 
		22 41 1 23 41 1 24 41 1 25 41 1 
		26 41 1 27 41 1 28 41 1 29 41 1 
		30 41 1 31 41 1 32 41 1 33 41 1 
		34 41 1 35 41 1 36 41 1 37 41 1 
		38 41 1 39 41 1;
	setAttr -s 60 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41 
		mu 0 4 0 1 2 3 
		f 4 1 42 -22 -42 
		mu 0 4 1 4 5 2 
		f 4 2 43 -23 -43 
		mu 0 4 4 6 7 5 
		f 4 3 44 -24 -44 
		mu 0 4 6 8 9 7 
		f 4 4 45 -25 -45 
		mu 0 4 8 10 11 9 
		f 4 5 46 -26 -46 
		mu 0 4 10 12 13 11 
		f 4 6 47 -27 -47 
		mu 0 4 12 14 15 13 
		f 4 7 48 -28 -48 
		mu 0 4 14 16 17 15 
		f 4 8 49 -29 -49 
		mu 0 4 18 19 20 21 
		f 4 9 50 -30 -50 
		mu 0 4 19 22 23 20 
		f 4 10 51 -31 -51 
		mu 0 4 22 24 25 23 
		f 4 11 52 -32 -52 
		mu 0 4 24 26 27 25 
		f 4 12 53 -33 -53 
		mu 0 4 28 29 30 31 
		f 4 13 54 -34 -54 
		mu 0 4 29 32 33 30 
		f 4 14 55 -35 -55 
		mu 0 4 32 34 35 33 
		f 4 15 56 -36 -56 
		mu 0 4 34 36 37 35 
		f 4 16 57 -37 -57 
		mu 0 4 36 38 39 37 
		f 4 17 58 -38 -58 
		mu 0 4 38 40 41 39 
		f 4 18 59 -39 -59 
		mu 0 4 42 43 44 45 
		f 4 19 40 -40 -60 
		mu 0 4 43 46 47 44 
		f 3 -1 -61 61 
		mu 0 3 48 49 50 
		f 3 -2 -62 62 
		mu 0 3 51 48 50 
		f 3 -3 -63 63 
		mu 0 3 52 51 50 
		f 3 -4 -64 64 
		mu 0 3 53 52 50 
		f 3 -5 -65 65 
		mu 0 3 54 53 50 
		f 3 -6 -66 66 
		mu 0 3 55 54 50 
		f 3 -7 -67 67 
		mu 0 3 56 55 50 
		f 3 -8 -68 68 
		mu 0 3 57 56 50 
		f 3 -9 -69 69 
		mu 0 3 58 57 50 
		f 3 -10 -70 70 
		mu 0 3 59 58 50 
		f 3 -11 -71 71 
		mu 0 3 60 59 50 
		f 3 -12 -72 72 
		mu 0 3 61 60 50 
		f 3 -13 -73 73 
		mu 0 3 62 61 50 
		f 3 -14 -74 74 
		mu 0 3 63 62 50 
		f 3 -15 -75 75 
		mu 0 3 64 63 50 
		f 3 -16 -76 76 
		mu 0 3 65 64 50 
		f 3 -17 -77 77 
		mu 0 3 66 65 50 
		f 3 -18 -78 78 
		mu 0 3 67 66 50 
		f 3 -19 -79 79 
		mu 0 3 68 67 50 
		f 3 -20 -80 60 
		mu 0 3 49 68 50 
		f 3 20 81 -81 
		mu 0 3 69 70 71 
		f 3 21 82 -82 
		mu 0 3 70 72 71 
		f 3 22 83 -83 
		mu 0 3 72 73 71 
		f 3 23 84 -84 
		mu 0 3 73 74 71 
		f 3 24 85 -85 
		mu 0 3 74 75 71 
		f 3 25 86 -86 
		mu 0 3 75 76 71 
		f 3 26 87 -87 
		mu 0 3 76 77 71 
		f 3 27 88 -88 
		mu 0 3 77 78 71 
		f 3 28 89 -89 
		mu 0 3 78 79 71 
		f 3 29 90 -90 
		mu 0 3 79 80 71 
		f 3 30 91 -91 
		mu 0 3 80 81 71 
		f 3 31 92 -92 
		mu 0 3 81 82 71 
		f 3 32 93 -93 
		mu 0 3 82 83 71 
		f 3 33 94 -94 
		mu 0 3 83 84 71 
		f 3 34 95 -95 
		mu 0 3 84 85 71 
		f 3 35 96 -96 
		mu 0 3 85 86 71 
		f 3 36 97 -97 
		mu 0 3 86 87 71 
		f 3 37 98 -98 
		mu 0 3 87 88 71 
		f 3 38 99 -99 
		mu 0 3 88 89 71 
		f 3 39 80 -100 
		mu 0 3 89 69 71 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface161" -p "polySurface140";
createNode mesh -n "polySurfaceShape164" -p "polySurface161";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape326" -p "polySurface161";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.21693341 0.9914189 
		0.21693341 0.98820555 0.21782544 0.98820555 0.21782544 0.9914189 0.035417937 0.98820555 
		0.03863129 0.98820555 0.03863129 0.99141896 0.035417937 0.99141896 0.044678926 0.99141896 
		0.044678926 0.98820555 0.045570981 0.98820555 0.045570981 0.99141896 0.14840207 0.98820555 
		0.15161543 0.98820555 0.15161543 0.99141896 0.14840207 0.99141896 0.05208775 0.99141896 
		0.05208775 0.98820555 0.052979805 0.98820555 0.052979805 0.99141896 0.15766306 0.99141896 
		0.15766306 0.98820555 0.15855508 0.98820555 0.15855508 0.99141896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.1695728 0.31599173 -19.751795 5.4122324 
		0.31599173 -19.751795 5.1695728 0.38335398 -19.751795 5.4122324 0.38335398 -19.751795 
		5.1695728 0.38335398 -19.994455 5.4122324 0.38335398 -19.994455 5.1695728 0.31599173 
		-19.994455 5.4122324 0.31599173 -19.994455;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface162" -p "polySurface140";
createNode mesh -n "polySurfaceShape165" -p "polySurface162";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape327" -p "polySurface162";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.22434221 0.99141884 
		0.22434221 0.98820555 0.22523423 0.98820555 0.22523423 0.99141884 0.059496541 0.98820555 
		0.062709898 0.98820555 0.062709898 0.99141896 0.059496541 0.99141896 0.27805597 0.98108715 
		0.27805597 0.97787386 0.27894804 0.97787386 0.27894804 0.98108715 0.16507186 0.98820549 
		0.16828522 0.98820549 0.16828522 0.9914189 0.16507186 0.9914189 0.068757564 0.99141896 
		0.068757564 0.98820555 0.069649614 0.98820555 0.069649614 0.99141896 0.076166309 
		0.99141896 0.076166309 0.98820555 0.07705833 0.98820555 0.07705833 0.99141896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.0820255 9.2335854 19.380264 5.3246851 
		9.2335854 19.380264 5.0820255 9.3009472 19.380264 5.3246851 9.3009472 19.380264 5.0820255 
		9.3009472 19.137604 5.3246851 9.3009472 19.137604 5.0820255 9.2335854 19.137604 5.3246851 
		9.2335854 19.137604;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface163" -p "polySurface140";
createNode mesh -n "polySurfaceShape166" -p "polySurface163";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape328" -p "polySurface163";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.40485781 0.96313828 
		0.41631603 0.96313828 0.41631603 0.97461951 0.40485781 0.97461951 0.59510529 0.97919697 
		0.60656345 0.97919697 0.60656345 0.99458742 0.59510529 0.99458742 0.47401354 0.96313828 
		0.48547176 0.96313828 0.48547176 0.97461963 0.47401354 0.97461963 0.73350894 0.89842033 
		0.7449671 0.89842033 0.7449671 0.91381073 0.73350894 0.91381073 0.57779324 0.99458736 
		0.57779324 0.97919697 0.58927453 0.97919697 0.58927453 0.99458736 0.71619689 0.91381073 
		0.71619689 0.89842033 0.72767818 0.89842033 0.72767818 0.91381073;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  4.7863417 8.4062614 19.947876 5.6516142 
		8.4062614 19.947876 4.7863417 9.2732792 19.947876 5.6516142 9.2732792 19.947876 4.7863417 
		9.2732792 18.78566 5.6516142 9.2732792 18.78566 4.7863417 8.4062614 18.78566 5.6516142 
		8.4062614 18.78566;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface164" -p "polySurface140";
createNode mesh -n "polySurfaceShape167" -p "polySurface164";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape329" -p "polySurface164";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.76356804 0.77622241 
		0.76230556 0.77622241 0.76230556 0.75844663 0.76356804 0.75844663 0.76033932 0.77622241 
		0.76033932 0.75844663 0.75786173 0.77622241 0.75786173 0.75844663 0.75511515 0.77622241 
		0.75511515 0.75844663 0.75236869 0.77622241 0.75236869 0.75844663 0.74989098 0.77622241 
		0.74989098 0.75844663 0.74792475 0.77622241 0.74792475 0.75844663 0.74666232 0.77622241 
		0.74666232 0.75844663 0.91063601 0.52008826 0.90882921 0.52008826 0.90882921 0.50231254 
		0.91063601 0.50231254 0.90702248 0.52008826 0.90702248 0.50231254 0.90539265 0.52008826 
		0.90539265 0.50231254 0.90409911 0.52008826 0.90409911 0.50231254 0.91706455 0.50231254 
		0.91954219 0.50231254 0.91954219 0.52008826 0.91706455 0.52008826 0.92228872 0.50231254 
		0.92228872 0.52008826 0.92503518 0.50231254 0.92503518 0.52008826 0.92751282 0.50231254 
		0.92751282 0.52008826 0.92947912 0.50231254 0.92947912 0.52008826 0.93074155 0.50231254 
		0.93074155 0.52008826 0.77074087 0.49495193 0.77254766 0.49495193 0.77254766 0.51272774 
		0.77074087 0.51272774 0.77435446 0.49495193 0.77435446 0.51272774 0.80533284 0.51821858 
		0.80696273 0.51695609 0.8087694 0.52540898 0.80403942 0.52018487 0.80320883 0.5226624 
		0.80292273 0.52540898 0.80320883 0.52815545 0.80403942 0.53063315 0.80533284 0.53259945 
		0.80696273 0.53386176 0.8087694 0.53429687 0.81057614 0.53386176 0.81220609 0.53259945 
		0.81349945 0.53063315 0.81433004 0.52815545 0.81461614 0.52540898 0.81433004 0.5226624 
		0.81349945 0.52018487 0.81220609 0.51821858 0.81057614 0.51695609 0.8087694 0.51652116 
		0.94442302 0.50274748 0.94605291 0.50400984 0.94261628 0.51120031 0.94734633 0.50597614 
		0.9481768 0.50845379 0.94846302 0.51120031 0.9481768 0.51394683 0.94734633 0.51642442 
		0.94605291 0.51839077 0.94442302 0.5196532 0.94261628 0.52008814 0.94080955 0.5196532 
		0.93917972 0.51839077 0.93788618 0.51642442 0.93705571 0.51394683 0.93676955 0.51120031 
		0.93705571 0.50845379 0.93788618 0.50597614 0.93917972 0.50400984 0.94080955 0.50274748 
		0.94261628 0.50231242;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  5.9127078 8.6862535 18.727106 5.8173747 
		8.8093348 18.727106 5.6688895 8.907012 18.727106 5.4817882 8.9697256 18.727106 5.274384 
		8.9913349 18.727106 5.0669799 8.9697256 18.727106 4.8798785 8.907012 18.727106 4.7313938 
		8.8093348 18.727106 4.6360607 8.6862535 18.727106 4.6032109 8.5498171 18.727106 4.6360607 
		8.4133806 18.727106 4.7313938 8.2902994 18.727106 4.8798785 8.1926222 18.727106 5.0669804 
		8.1299086 18.727106 5.274384 8.1082993 18.727106 5.4817877 8.1299086 18.727106 5.6688895 
		8.1926222 18.727106 5.8173742 8.2902994 18.727106 5.9127073 8.4133806 18.727106 5.9455566 
		8.5498171 18.727106 5.9127078 8.6862535 20.069452 5.8173747 8.8093348 20.069452 5.6688895 
		8.907012 20.069452 5.4817882 8.9697256 20.069452 5.274384 8.9913349 20.069452 5.0669799 
		8.9697256 20.069452 4.8798785 8.907012 20.069452 4.7313938 8.8093348 20.069452 4.6360607 
		8.6862535 20.069452 4.6032109 8.5498171 20.069452 4.6360607 8.4133806 20.069452 4.7313938 
		8.2902994 20.069452 4.8798785 8.1926222 20.069452 5.0669804 8.1299086 20.069452 5.274384 
		8.1082993 20.069452 5.4817877 8.1299086 20.069452 5.6688895 8.1926222 20.069452 5.8173742 
		8.2902994 20.069452 5.9127073 8.4133806 20.069452 5.9455566 8.5498171 20.069452 5.274384 
		8.5498171 18.727106 5.274384 8.5498171 20.069452;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 20 21 0 21 22 0 
		22 23 0 23 24 0 24 25 0 25 26 0 
		26 27 0 27 28 0 28 29 0 29 30 0 
		30 31 0 31 32 0 32 33 0 33 34 0 
		34 35 0 35 36 0 36 37 0 37 38 0 
		38 39 0 39 20 0 0 20 1 1 21 1 
		2 22 1 3 23 1 4 24 1 5 25 1 
		6 26 1 7 27 1 8 28 1 9 29 1 
		10 30 1 11 31 1 12 32 1 13 33 1 
		14 34 1 15 35 1 16 36 1 17 37 1 
		18 38 1 19 39 1 40 0 1 40 1 1 
		40 2 1 40 3 1 40 4 1 40 5 1 
		40 6 1 40 7 1 40 8 1 40 9 1 
		40 10 1 40 11 1 40 12 1 40 13 1 
		40 14 1 40 15 1 40 16 1 40 17 1 
		40 18 1 40 19 1 20 41 1 21 41 1 
		22 41 1 23 41 1 24 41 1 25 41 1 
		26 41 1 27 41 1 28 41 1 29 41 1 
		30 41 1 31 41 1 32 41 1 33 41 1 
		34 41 1 35 41 1 36 41 1 37 41 1 
		38 41 1 39 41 1;
	setAttr -s 60 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41 
		mu 0 4 0 1 2 3 
		f 4 1 42 -22 -42 
		mu 0 4 1 4 5 2 
		f 4 2 43 -23 -43 
		mu 0 4 4 6 7 5 
		f 4 3 44 -24 -44 
		mu 0 4 6 8 9 7 
		f 4 4 45 -25 -45 
		mu 0 4 8 10 11 9 
		f 4 5 46 -26 -46 
		mu 0 4 10 12 13 11 
		f 4 6 47 -27 -47 
		mu 0 4 12 14 15 13 
		f 4 7 48 -28 -48 
		mu 0 4 14 16 17 15 
		f 4 8 49 -29 -49 
		mu 0 4 18 19 20 21 
		f 4 9 50 -30 -50 
		mu 0 4 19 22 23 20 
		f 4 10 51 -31 -51 
		mu 0 4 22 24 25 23 
		f 4 11 52 -32 -52 
		mu 0 4 24 26 27 25 
		f 4 12 53 -33 -53 
		mu 0 4 28 29 30 31 
		f 4 13 54 -34 -54 
		mu 0 4 29 32 33 30 
		f 4 14 55 -35 -55 
		mu 0 4 32 34 35 33 
		f 4 15 56 -36 -56 
		mu 0 4 34 36 37 35 
		f 4 16 57 -37 -57 
		mu 0 4 36 38 39 37 
		f 4 17 58 -38 -58 
		mu 0 4 38 40 41 39 
		f 4 18 59 -39 -59 
		mu 0 4 42 43 44 45 
		f 4 19 40 -40 -60 
		mu 0 4 43 46 47 44 
		f 3 -1 -61 61 
		mu 0 3 48 49 50 
		f 3 -2 -62 62 
		mu 0 3 51 48 50 
		f 3 -3 -63 63 
		mu 0 3 52 51 50 
		f 3 -4 -64 64 
		mu 0 3 53 52 50 
		f 3 -5 -65 65 
		mu 0 3 54 53 50 
		f 3 -6 -66 66 
		mu 0 3 55 54 50 
		f 3 -7 -67 67 
		mu 0 3 56 55 50 
		f 3 -8 -68 68 
		mu 0 3 57 56 50 
		f 3 -9 -69 69 
		mu 0 3 58 57 50 
		f 3 -10 -70 70 
		mu 0 3 59 58 50 
		f 3 -11 -71 71 
		mu 0 3 60 59 50 
		f 3 -12 -72 72 
		mu 0 3 61 60 50 
		f 3 -13 -73 73 
		mu 0 3 62 61 50 
		f 3 -14 -74 74 
		mu 0 3 63 62 50 
		f 3 -15 -75 75 
		mu 0 3 64 63 50 
		f 3 -16 -76 76 
		mu 0 3 65 64 50 
		f 3 -17 -77 77 
		mu 0 3 66 65 50 
		f 3 -18 -78 78 
		mu 0 3 67 66 50 
		f 3 -19 -79 79 
		mu 0 3 68 67 50 
		f 3 -20 -80 60 
		mu 0 3 49 68 50 
		f 3 20 81 -81 
		mu 0 3 69 70 71 
		f 3 21 82 -82 
		mu 0 3 70 72 71 
		f 3 22 83 -83 
		mu 0 3 72 73 71 
		f 3 23 84 -84 
		mu 0 3 73 74 71 
		f 3 24 85 -85 
		mu 0 3 74 75 71 
		f 3 25 86 -86 
		mu 0 3 75 76 71 
		f 3 26 87 -87 
		mu 0 3 76 77 71 
		f 3 27 88 -88 
		mu 0 3 77 78 71 
		f 3 28 89 -89 
		mu 0 3 78 79 71 
		f 3 29 90 -90 
		mu 0 3 79 80 71 
		f 3 30 91 -91 
		mu 0 3 80 81 71 
		f 3 31 92 -92 
		mu 0 3 81 82 71 
		f 3 32 93 -93 
		mu 0 3 82 83 71 
		f 3 33 94 -94 
		mu 0 3 83 84 71 
		f 3 34 95 -95 
		mu 0 3 84 85 71 
		f 3 35 96 -96 
		mu 0 3 85 86 71 
		f 3 36 97 -97 
		mu 0 3 86 87 71 
		f 3 37 98 -98 
		mu 0 3 87 88 71 
		f 3 38 99 -99 
		mu 0 3 88 89 71 
		f 3 39 80 -100 
		mu 0 3 89 69 71 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface165" -p "polySurface140";
createNode mesh -n "polySurfaceShape168" -p "polySurface165";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape330" -p "polySurface165";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.23175099 0.98108715 
		0.23175099 0.97787386 0.23264302 0.97787386 0.23264302 0.98108715 0.083575115 0.98820555 
		0.086788468 0.98820555 0.086788468 0.99141896 0.083575115 0.99141896 0.28546479 0.98108715 
		0.28546479 0.97787386 0.28635687 0.97787386 0.28635687 0.98108715 0.17433286 0.98820549 
		0.1775462 0.98820549 0.1775462 0.9914189 0.17433286 0.9914189 0.092836134 0.9914189 
		0.092836134 0.98820549 0.093728185 0.98820549 0.093728185 0.9914189 0.1002449 0.9914189 
		0.1002449 0.98820549 0.10113692 0.98820549 0.10113692 0.9914189;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.0820255 0.3192004 19.380264 5.3246851 
		0.3192004 19.380264 5.0820255 0.38656265 19.380264 5.3246851 0.38656265 19.380264 
		5.0820255 0.38656265 19.137604 5.3246851 0.38656265 19.137604 5.0820255 0.3192004 
		19.137604 5.3246851 0.3192004 19.137604;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface166" -p "polySurface140";
createNode mesh -n "polySurfaceShape169" -p "polySurface166";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape331" -p "polySurface166";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.7987597 0.51272774 
		0.79749727 0.51272774 0.79749727 0.49495193 0.7987597 0.49495193 0.79553097 0.51272774 
		0.79553097 0.49495193 0.79305333 0.51272774 0.79305333 0.49495193 0.79030681 0.51272774 
		0.79030681 0.49495193 0.78756034 0.51272774 0.78756034 0.49495193 0.7850827 0.51272774 
		0.7850827 0.49495193 0.7831164 0.51272774 0.7831164 0.49495193 0.78185397 0.51272774 
		0.78185397 0.49495193 0.93093902 0.54165727 0.92913222 0.54165727 0.92913222 0.52388149 
		0.93093902 0.52388149 0.92732549 0.54165727 0.92732549 0.52388149 0.92569566 0.54165727 
		0.92569566 0.52388149 0.92440212 0.54165727 0.92440212 0.52388149 0.90489435 0.52388149 
		0.907372 0.52388149 0.907372 0.54165727 0.90489435 0.54165727 0.91011846 0.52388149 
		0.91011846 0.54165727 0.91286498 0.52388149 0.91286498 0.54165727 0.91534263 0.52388149 
		0.91534263 0.54165727 0.91730893 0.52388149 0.91730893 0.54165727 0.91857135 0.52388149 
		0.91857135 0.54165727 0.8059327 0.49495193 0.80773932 0.49495193 0.80773932 0.51272774 
		0.8059327 0.51272774 0.80954611 0.49495193 0.80954611 0.51272774 0.69535857 0.87854862 
		0.69698846 0.87728614 0.69879514 0.88573903 0.69406515 0.88051492 0.69323462 0.88299263 
		0.69294852 0.88573903 0.69323462 0.88848561 0.69406515 0.89096332 0.69535857 0.89292949 
		0.69698846 0.89419198 0.69879514 0.89462703 0.70060194 0.89419198 0.70223182 0.89292949 
		0.70352525 0.89096332 0.70435578 0.88848561 0.70464188 0.88573903 0.70435578 0.88299263 
		0.70352525 0.88051492 0.70223182 0.87854862 0.70060194 0.87728614 0.69879514 0.8768512 
		0.89502364 0.53969014 0.89665347 0.54095256 0.89321685 0.54814297 0.89794695 0.5429188 
		0.89877748 0.54539651 0.89906365 0.54814297 0.89877748 0.55088949 0.89794695 0.55336714 
		0.89665347 0.55533338 0.89502364 0.55659586 0.89321685 0.55703086 0.89141017 0.55659586 
		0.88978028 0.55533338 0.88848686 0.55336714 0.88765633 0.55088949 0.88737017 0.54814297 
		0.88765633 0.54539651 0.88848686 0.5429188 0.88978028 0.54095256 0.89141017 0.53969014 
		0.89321685 0.53925508;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  -4.4791126 8.6862535 -20.217093 -4.5744457 
		8.8093348 -20.217093 -4.7229309 8.907012 -20.217093 -4.9100323 8.9697256 -20.217093 
		-5.1174364 8.9913349 -20.217093 -5.3248405 8.9697256 -20.217093 -5.5119419 8.907012 
		-20.217093 -5.6604266 8.8093348 -20.217093 -5.7557597 8.6862535 -20.217093 -5.7886095 
		8.5498171 -20.217093 -5.7557597 8.4133806 -20.217093 -5.6604266 8.2902994 -20.217093 
		-5.5119419 8.1926222 -20.217093 -5.3248401 8.1299086 -20.217093 -5.1174364 8.1082993 
		-20.217093 -4.9100327 8.1299086 -20.217093 -4.7229309 8.1926222 -20.217093 -4.5744462 
		8.2902994 -20.217093 -4.4791131 8.4133806 -20.217093 -4.4462638 8.5498171 -20.217093 
		-4.4791126 8.6862535 -18.874746 -4.5744457 8.8093348 -18.874746 -4.7229309 8.907012 
		-18.874746 -4.9100323 8.9697256 -18.874746 -5.1174364 8.9913349 -18.874746 -5.3248405 
		8.9697256 -18.874746 -5.5119419 8.907012 -18.874746 -5.6604266 8.8093348 -18.874746 
		-5.7557597 8.6862535 -18.874746 -5.7886095 8.5498171 -18.874746 -5.7557597 8.4133806 
		-18.874746 -5.6604266 8.2902994 -18.874746 -5.5119419 8.1926222 -18.874746 -5.3248401 
		8.1299086 -18.874746 -5.1174364 8.1082993 -18.874746 -4.9100327 8.1299086 -18.874746 
		-4.7229309 8.1926222 -18.874746 -4.5744462 8.2902994 -18.874746 -4.4791131 8.4133806 
		-18.874746 -4.4462638 8.5498171 -18.874746 -5.1174364 8.5498171 -20.217093 -5.1174364 
		8.5498171 -18.874746;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 20 21 0 21 22 0 
		22 23 0 23 24 0 24 25 0 25 26 0 
		26 27 0 27 28 0 28 29 0 29 30 0 
		30 31 0 31 32 0 32 33 0 33 34 0 
		34 35 0 35 36 0 36 37 0 37 38 0 
		38 39 0 39 20 0 0 20 1 1 21 1 
		2 22 1 3 23 1 4 24 1 5 25 1 
		6 26 1 7 27 1 8 28 1 9 29 1 
		10 30 1 11 31 1 12 32 1 13 33 1 
		14 34 1 15 35 1 16 36 1 17 37 1 
		18 38 1 19 39 1 40 0 1 40 1 1 
		40 2 1 40 3 1 40 4 1 40 5 1 
		40 6 1 40 7 1 40 8 1 40 9 1 
		40 10 1 40 11 1 40 12 1 40 13 1 
		40 14 1 40 15 1 40 16 1 40 17 1 
		40 18 1 40 19 1 20 41 1 21 41 1 
		22 41 1 23 41 1 24 41 1 25 41 1 
		26 41 1 27 41 1 28 41 1 29 41 1 
		30 41 1 31 41 1 32 41 1 33 41 1 
		34 41 1 35 41 1 36 41 1 37 41 1 
		38 41 1 39 41 1;
	setAttr -s 60 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41 
		mu 0 4 0 1 2 3 
		f 4 1 42 -22 -42 
		mu 0 4 1 4 5 2 
		f 4 2 43 -23 -43 
		mu 0 4 4 6 7 5 
		f 4 3 44 -24 -44 
		mu 0 4 6 8 9 7 
		f 4 4 45 -25 -45 
		mu 0 4 8 10 11 9 
		f 4 5 46 -26 -46 
		mu 0 4 10 12 13 11 
		f 4 6 47 -27 -47 
		mu 0 4 12 14 15 13 
		f 4 7 48 -28 -48 
		mu 0 4 14 16 17 15 
		f 4 8 49 -29 -49 
		mu 0 4 18 19 20 21 
		f 4 9 50 -30 -50 
		mu 0 4 19 22 23 20 
		f 4 10 51 -31 -51 
		mu 0 4 22 24 25 23 
		f 4 11 52 -32 -52 
		mu 0 4 24 26 27 25 
		f 4 12 53 -33 -53 
		mu 0 4 28 29 30 31 
		f 4 13 54 -34 -54 
		mu 0 4 29 32 33 30 
		f 4 14 55 -35 -55 
		mu 0 4 32 34 35 33 
		f 4 15 56 -36 -56 
		mu 0 4 34 36 37 35 
		f 4 16 57 -37 -57 
		mu 0 4 36 38 39 37 
		f 4 17 58 -38 -58 
		mu 0 4 38 40 41 39 
		f 4 18 59 -39 -59 
		mu 0 4 42 43 44 45 
		f 4 19 40 -40 -60 
		mu 0 4 43 46 47 44 
		f 3 -1 -61 61 
		mu 0 3 48 49 50 
		f 3 -2 -62 62 
		mu 0 3 51 48 50 
		f 3 -3 -63 63 
		mu 0 3 52 51 50 
		f 3 -4 -64 64 
		mu 0 3 53 52 50 
		f 3 -5 -65 65 
		mu 0 3 54 53 50 
		f 3 -6 -66 66 
		mu 0 3 55 54 50 
		f 3 -7 -67 67 
		mu 0 3 56 55 50 
		f 3 -8 -68 68 
		mu 0 3 57 56 50 
		f 3 -9 -69 69 
		mu 0 3 58 57 50 
		f 3 -10 -70 70 
		mu 0 3 59 58 50 
		f 3 -11 -71 71 
		mu 0 3 60 59 50 
		f 3 -12 -72 72 
		mu 0 3 61 60 50 
		f 3 -13 -73 73 
		mu 0 3 62 61 50 
		f 3 -14 -74 74 
		mu 0 3 63 62 50 
		f 3 -15 -75 75 
		mu 0 3 64 63 50 
		f 3 -16 -76 76 
		mu 0 3 65 64 50 
		f 3 -17 -77 77 
		mu 0 3 66 65 50 
		f 3 -18 -78 78 
		mu 0 3 67 66 50 
		f 3 -19 -79 79 
		mu 0 3 68 67 50 
		f 3 -20 -80 60 
		mu 0 3 49 68 50 
		f 3 20 81 -81 
		mu 0 3 69 70 71 
		f 3 21 82 -82 
		mu 0 3 70 72 71 
		f 3 22 83 -83 
		mu 0 3 72 73 71 
		f 3 23 84 -84 
		mu 0 3 73 74 71 
		f 3 24 85 -85 
		mu 0 3 74 75 71 
		f 3 25 86 -86 
		mu 0 3 75 76 71 
		f 3 26 87 -87 
		mu 0 3 76 77 71 
		f 3 27 88 -88 
		mu 0 3 77 78 71 
		f 3 28 89 -89 
		mu 0 3 78 79 71 
		f 3 29 90 -90 
		mu 0 3 79 80 71 
		f 3 30 91 -91 
		mu 0 3 80 81 71 
		f 3 31 92 -92 
		mu 0 3 81 82 71 
		f 3 32 93 -93 
		mu 0 3 82 83 71 
		f 3 33 94 -94 
		mu 0 3 83 84 71 
		f 3 34 95 -95 
		mu 0 3 84 85 71 
		f 3 35 96 -96 
		mu 0 3 85 86 71 
		f 3 36 97 -97 
		mu 0 3 86 87 71 
		f 3 37 98 -98 
		mu 0 3 87 88 71 
		f 3 38 99 -99 
		mu 0 3 88 89 71 
		f 3 39 80 -100 
		mu 0 3 89 69 71 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface167" -p "polySurface140";
createNode mesh -n "polySurfaceShape170" -p "polySurface167";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape332" -p "polySurface167";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.38756889 0.96427786 
		0.39902708 0.96427786 0.39902708 0.97575915 0.38756889 0.97575915 0.56050438 0.97919697 
		0.57196259 0.97919697 0.57196259 0.99458736 0.56050438 0.99458736 0.45672464 0.96313828 
		0.4681828 0.96313828 0.4681828 0.97461963 0.45672464 0.97461963 0.69890803 0.89842039 
		0.71036619 0.89842039 0.71036619 0.91381079 0.69890803 0.91381079 0.54319239 0.99458736 
		0.54319239 0.97919697 0.55467361 0.97919697 0.55467361 0.99458736 0.6815961 0.92001671 
		0.6815961 0.90462625 0.69307733 0.90462625 0.69307733 0.92001671;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -5.6685677 8.4062614 -18.96253 -4.8032951 
		8.4062614 -18.96253 -5.6685677 9.2732792 -18.96253 -4.8032951 9.2732792 -18.96253 
		-5.6685677 9.2732792 -20.124746 -4.8032951 9.2732792 -20.124746 -5.6685677 8.4062614 
		-20.124746 -4.8032951 8.4062614 -20.124746;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface168" -p "polySurface140";
createNode mesh -n "polySurfaceShape171" -p "polySurface168";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape333" -p "polySurface168";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.23915982 0.98108721 
		0.23915982 0.97787386 0.24005184 0.97787386 0.24005184 0.98108721 0.10765368 0.98820555 
		0.11086705 0.98820555 0.11086705 0.99141896 0.10765368 0.99141896 0.29287359 0.98108715 
		0.29287359 0.97787386 0.29376563 0.97787386 0.29376563 0.98108715 0.18359384 0.98820555 
		0.18680722 0.98820555 0.18680722 0.99141896 0.18359384 0.99141896 0.11691467 0.99141896 
		0.11691467 0.98820555 0.11780673 0.98820555 0.11780673 0.99141896 0.19285481 0.99141896 
		0.19285481 0.98820555 0.19374683 0.98820555 0.19374683 0.99141896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -5.3728838 9.2335854 -19.751795 -5.1302242 
		9.2335854 -19.751795 -5.3728838 9.3009472 -19.751795 -5.1302242 9.3009472 -19.751795 
		-5.3728838 9.3009472 -19.994455 -5.1302242 9.3009472 -19.994455 -5.3728838 9.2335854 
		-19.994455 -5.1302242 9.2335854 -19.994455;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface169" -p "polySurface140";
createNode mesh -n "polySurfaceShape172" -p "polySurface169";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape334" -p "polySurface169";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.37027997 0.96427786 
		0.38173813 0.96427786 0.38173813 0.97575915 0.37027997 0.97575915 0.52590346 0.97919697 
		0.53736162 0.97919697 0.53736162 0.99458742 0.52590346 0.99458742 0.43943569 0.96313828 
		0.45089388 0.96313828 0.45089388 0.97461963 0.43943569 0.97461963 0.66430718 0.90462625 
		0.67576534 0.90462625 0.67576534 0.92001671 0.66430718 0.92001671 0.50859141 0.97852868 
		0.50859141 0.96313828 0.5200727 0.96313828 0.5200727 0.97852868 0.64699513 0.92001671 
		0.64699513 0.90462625 0.65847641 0.90462625 0.65847641 0.92001671;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -5.756115 8.4062614 19.947876 -4.8908424 
		8.4062614 19.947876 -5.756115 9.2732792 19.947876 -4.8908424 9.2732792 19.947876 
		-5.756115 9.2732792 18.78566 -4.8908424 9.2732792 18.78566 -5.756115 8.4062614 18.78566 
		-4.8908424 8.4062614 18.78566;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface170" -p "polySurface140";
createNode mesh -n "polySurfaceShape173" -p "polySurface170";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape335" -p "polySurface170";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.24656861 0.98108697 
		0.24656861 0.97787368 0.24746063 0.97787368 0.24746063 0.98108697 0.25397742 0.97787368 
		0.25719076 0.97787368 0.25719076 0.98108715 0.25397742 0.98108715 0.30028239 0.98108715 
		0.30028239 0.97787386 0.30117443 0.97787386 0.30117443 0.98108715 0.20026363 0.98820555 
		0.203477 0.98820555 0.203477 0.9914189 0.20026363 0.9914189 0.26323846 0.98108703 
		0.26323846 0.97787368 0.2641305 0.97787368 0.2641305 0.98108703 0.12432348 0.99141896 
		0.12432348 0.98820555 0.1252155 0.98820555 0.1252155 0.99141896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -5.4604306 9.2335854 19.825813 -5.2177711 
		9.2335854 19.825813 -5.4604306 9.3009472 19.825813 -5.2177711 9.3009472 19.825813 
		-5.4604306 9.3009472 19.583153 -5.2177711 9.3009472 19.583153 -5.4604306 9.2335854 
		19.583153 -5.2177711 9.2335854 19.583153;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface171" -p "polySurface140";
createNode mesh -n "polySurfaceShape174" -p "polySurface171";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape336" -p "polySurface171";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 90 ".uvst[0].uvsp[0:89]" -type "float2" 0.83395147 0.5127278 
		0.83268911 0.5127278 0.83268911 0.49495202 0.83395147 0.49495202 0.83072281 0.5127278 
		0.83072281 0.49495202 0.8282451 0.5127278 0.8282451 0.49495202 0.82549864 0.5127278 
		0.82549864 0.49495202 0.82275212 0.5127278 0.82275212 0.49495202 0.82027453 0.5127278 
		0.82027453 0.49495202 0.81830817 0.5127278 0.81830817 0.49495202 0.81704575 0.5127278 
		0.81704575 0.49495202 0.88153952 0.55703086 0.87973279 0.55703086 0.87973279 0.53925514 
		0.88153952 0.53925514 0.87792605 0.55703086 0.87792605 0.53925514 0.87629622 0.55703086 
		0.87629622 0.53925514 0.87500268 0.55703086 0.87500268 0.53925514 0.85549498 0.54593074 
		0.85797262 0.54593074 0.85797262 0.56370646 0.85549498 0.56370646 0.86071914 0.54593074 
		0.86071914 0.56370646 0.86346561 0.54593074 0.86346561 0.56370646 0.86594331 0.54593074 
		0.86594331 0.56370646 0.86790961 0.54593074 0.86790961 0.56370646 0.86917198 0.54593074 
		0.86917198 0.56370646 0.84112453 0.52436167 0.84293115 0.52436167 0.84293115 0.54213744 
		0.84112453 0.54213744 0.84473795 0.52436167 0.84473795 0.54213744 0.78780866 0.51821858 
		0.78943861 0.51695609 0.79124522 0.52540898 0.78651524 0.52018476 0.7856847 0.5226624 
		0.7853986 0.52540898 0.7856847 0.52815545 0.78651524 0.53063315 0.78780866 0.53259945 
		0.78943861 0.53386188 0.79124522 0.53429687 0.79305202 0.53386188 0.79468191 0.53259945 
		0.79597533 0.53063315 0.79680586 0.52815545 0.79709196 0.52540898 0.79680586 0.5226624 
		0.79597533 0.52018476 0.79468191 0.51821858 0.79305202 0.51695609 0.79124522 0.51652116 
		0.84562433 0.5463658 0.84725416 0.54762822 0.84381759 0.55481869 0.8485477 0.54959446 
		0.84937817 0.55207217 0.84966433 0.55481869 0.84937817 0.55756515 0.8485477 0.5600428 
		0.84725416 0.56200904 0.84562433 0.56327152 0.84381759 0.56370652 0.84201086 0.56327152 
		0.84038097 0.56200904 0.83908755 0.5600428 0.83825707 0.55756515 0.83797085 0.55481869 
		0.83825707 0.55207217 0.83908755 0.54959446 0.84038097 0.54762822 0.84201086 0.5463658 
		0.84381759 0.54593074;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  -4.6297483 8.6862535 18.727106 -4.7250814 
		8.8093348 18.727106 -4.8735666 8.907012 18.727106 -5.060668 8.9697256 18.727106 -5.2680721 
		8.9913349 18.727106 -5.4754763 8.9697256 18.727106 -5.6625776 8.907012 18.727106 
		-5.8110623 8.8093348 18.727106 -5.9063954 8.6862535 18.727106 -5.9392452 8.5498171 
		18.727106 -5.9063954 8.4133806 18.727106 -5.8110623 8.2902994 18.727106 -5.6625776 
		8.1926222 18.727106 -5.4754758 8.1299086 18.727106 -5.2680721 8.1082993 18.727106 
		-5.0606685 8.1299086 18.727106 -4.8735666 8.1926222 18.727106 -4.7250819 8.2902994 
		18.727106 -4.6297488 8.4133806 18.727106 -4.5968995 8.5498171 18.727106 -4.6297483 
		8.6862535 20.069452 -4.7250814 8.8093348 20.069452 -4.8735666 8.907012 20.069452 
		-5.060668 8.9697256 20.069452 -5.2680721 8.9913349 20.069452 -5.4754763 8.9697256 
		20.069452 -5.6625776 8.907012 20.069452 -5.8110623 8.8093348 20.069452 -5.9063954 
		8.6862535 20.069452 -5.9392452 8.5498171 20.069452 -5.9063954 8.4133806 20.069452 
		-5.8110623 8.2902994 20.069452 -5.6625776 8.1926222 20.069452 -5.4754758 8.1299086 
		20.069452 -5.2680721 8.1082993 20.069452 -5.0606685 8.1299086 20.069452 -4.8735666 
		8.1926222 20.069452 -4.7250819 8.2902994 20.069452 -4.6297488 8.4133806 20.069452 
		-4.5968995 8.5498171 20.069452 -5.2680721 8.5498171 18.727106 -5.2680721 8.5498171 
		20.069452;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 10 0 
		10 11 0 11 12 0 12 13 0 13 14 0 
		14 15 0 15 16 0 16 17 0 17 18 0 
		18 19 0 19 0 0 20 21 0 21 22 0 
		22 23 0 23 24 0 24 25 0 25 26 0 
		26 27 0 27 28 0 28 29 0 29 30 0 
		30 31 0 31 32 0 32 33 0 33 34 0 
		34 35 0 35 36 0 36 37 0 37 38 0 
		38 39 0 39 20 0 0 20 1 1 21 1 
		2 22 1 3 23 1 4 24 1 5 25 1 
		6 26 1 7 27 1 8 28 1 9 29 1 
		10 30 1 11 31 1 12 32 1 13 33 1 
		14 34 1 15 35 1 16 36 1 17 37 1 
		18 38 1 19 39 1 40 0 1 40 1 1 
		40 2 1 40 3 1 40 4 1 40 5 1 
		40 6 1 40 7 1 40 8 1 40 9 1 
		40 10 1 40 11 1 40 12 1 40 13 1 
		40 14 1 40 15 1 40 16 1 40 17 1 
		40 18 1 40 19 1 20 41 1 21 41 1 
		22 41 1 23 41 1 24 41 1 25 41 1 
		26 41 1 27 41 1 28 41 1 29 41 1 
		30 41 1 31 41 1 32 41 1 33 41 1 
		34 41 1 35 41 1 36 41 1 37 41 1 
		38 41 1 39 41 1;
	setAttr -s 60 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41 
		mu 0 4 0 1 2 3 
		f 4 1 42 -22 -42 
		mu 0 4 1 4 5 2 
		f 4 2 43 -23 -43 
		mu 0 4 4 6 7 5 
		f 4 3 44 -24 -44 
		mu 0 4 6 8 9 7 
		f 4 4 45 -25 -45 
		mu 0 4 8 10 11 9 
		f 4 5 46 -26 -46 
		mu 0 4 10 12 13 11 
		f 4 6 47 -27 -47 
		mu 0 4 12 14 15 13 
		f 4 7 48 -28 -48 
		mu 0 4 14 16 17 15 
		f 4 8 49 -29 -49 
		mu 0 4 18 19 20 21 
		f 4 9 50 -30 -50 
		mu 0 4 19 22 23 20 
		f 4 10 51 -31 -51 
		mu 0 4 22 24 25 23 
		f 4 11 52 -32 -52 
		mu 0 4 24 26 27 25 
		f 4 12 53 -33 -53 
		mu 0 4 28 29 30 31 
		f 4 13 54 -34 -54 
		mu 0 4 29 32 33 30 
		f 4 14 55 -35 -55 
		mu 0 4 32 34 35 33 
		f 4 15 56 -36 -56 
		mu 0 4 34 36 37 35 
		f 4 16 57 -37 -57 
		mu 0 4 36 38 39 37 
		f 4 17 58 -38 -58 
		mu 0 4 38 40 41 39 
		f 4 18 59 -39 -59 
		mu 0 4 42 43 44 45 
		f 4 19 40 -40 -60 
		mu 0 4 43 46 47 44 
		f 3 -1 -61 61 
		mu 0 3 48 49 50 
		f 3 -2 -62 62 
		mu 0 3 51 48 50 
		f 3 -3 -63 63 
		mu 0 3 52 51 50 
		f 3 -4 -64 64 
		mu 0 3 53 52 50 
		f 3 -5 -65 65 
		mu 0 3 54 53 50 
		f 3 -6 -66 66 
		mu 0 3 55 54 50 
		f 3 -7 -67 67 
		mu 0 3 56 55 50 
		f 3 -8 -68 68 
		mu 0 3 57 56 50 
		f 3 -9 -69 69 
		mu 0 3 58 57 50 
		f 3 -10 -70 70 
		mu 0 3 59 58 50 
		f 3 -11 -71 71 
		mu 0 3 60 59 50 
		f 3 -12 -72 72 
		mu 0 3 61 60 50 
		f 3 -13 -73 73 
		mu 0 3 62 61 50 
		f 3 -14 -74 74 
		mu 0 3 63 62 50 
		f 3 -15 -75 75 
		mu 0 3 64 63 50 
		f 3 -16 -76 76 
		mu 0 3 65 64 50 
		f 3 -17 -77 77 
		mu 0 3 66 65 50 
		f 3 -18 -78 78 
		mu 0 3 67 66 50 
		f 3 -19 -79 79 
		mu 0 3 68 67 50 
		f 3 -20 -80 60 
		mu 0 3 49 68 50 
		f 3 20 81 -81 
		mu 0 3 69 70 71 
		f 3 21 82 -82 
		mu 0 3 70 72 71 
		f 3 22 83 -83 
		mu 0 3 72 73 71 
		f 3 23 84 -84 
		mu 0 3 73 74 71 
		f 3 24 85 -85 
		mu 0 3 74 75 71 
		f 3 25 86 -86 
		mu 0 3 75 76 71 
		f 3 26 87 -87 
		mu 0 3 76 77 71 
		f 3 27 88 -88 
		mu 0 3 77 78 71 
		f 3 28 89 -89 
		mu 0 3 78 79 71 
		f 3 29 90 -90 
		mu 0 3 79 80 71 
		f 3 30 91 -91 
		mu 0 3 80 81 71 
		f 3 31 92 -92 
		mu 0 3 81 82 71 
		f 3 32 93 -93 
		mu 0 3 82 83 71 
		f 3 33 94 -94 
		mu 0 3 83 84 71 
		f 3 34 95 -95 
		mu 0 3 84 85 71 
		f 3 35 96 -96 
		mu 0 3 85 86 71 
		f 3 36 97 -97 
		mu 0 3 86 87 71 
		f 3 37 98 -98 
		mu 0 3 87 88 71 
		f 3 38 99 -99 
		mu 0 3 88 89 71 
		f 3 39 80 -100 
		mu 0 3 89 69 71 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface172" -p "polySurface140";
createNode mesh -n "polySurfaceShape175" -p "polySurface172";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape337" -p "polySurface172";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.53030413 0.64690679 
		0.52843142 0.64598012 0.52843142 0.55375516 0.53030413 0.55468184 0.5265587 0.64690679 
		0.5265587 0.55468184 0.52578294 0.64914387 0.52578294 0.55691892 0.865273 0.418504 
		0.86604863 0.41626692 0.86604863 0.50849187 0.865273 0.51072896 0.86792141 0.4153403 
		0.86792141 0.50756526 0.86979413 0.41626692 0.86979413 0.50849187 0.87056988 0.418504 
		0.87056988 0.51072896 0.53107989 0.64914387 0.53107989 0.55691892 0.52843142 0.64914387 
		0.5265587 0.65138102 0.52843142 0.65230757 0.53030413 0.65138102 0.86979413 0.51296616 
		0.86792141 0.51389271 0.86792141 0.51072896 0.86604863 0.51296616;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 20.087339 -5.7384329 
		8.3426847 20.097685 -5.8798542 8.4126606 20.087339 -5.9384327 8.5815964 20.062363 
		-5.8798542 8.7505331 20.037386 -5.7384329 8.820509 20.027042 -5.5970116 8.7505331 
		20.037386 -5.5384331 8.5815964 20.062363 -5.5970116 1.4482385 19.057682 -5.7384329 
		1.3782616 19.068027 -5.8798542 1.4482385 19.057682 -5.9384327 1.6171738 19.032705 
		-5.8798542 1.7861112 19.007729 -5.7384329 1.8560861 18.997383 -5.5970116 1.7861112 
		19.007729 -5.5384331 1.6171738 19.032705 -5.7384329 8.5815964 20.062363 -5.7384329 
		1.6171738 19.032705;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface173" -p "polySurface140";
createNode mesh -n "polySurfaceShape176" -p "polySurface173";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape338" -p "polySurface173";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.51917648 0.65138102 
		0.51730376 0.65230757 0.51730376 0.56008261 0.51917648 0.55915606 0.51543105 0.65138102 
		0.51543105 0.55915606 0.51465529 0.64914387 0.51465529 0.55691892 0.85414541 0.418504 
		0.85492104 0.4207412 0.85492104 0.51296616 0.85414541 0.51072896 0.85679382 0.42166778 
		0.85679382 0.51389271 0.85866654 0.4207412 0.85866654 0.51296616 0.85944229 0.418504 
		0.85944229 0.51072896 0.51995224 0.64914387 0.51995224 0.55691892 0.85679382 0.4153403 
		0.85866654 0.41626692 0.85679382 0.418504 0.85492104 0.41626692 0.51730376 0.55691892 
		0.51543105 0.55468184 0.51730376 0.55375516 0.51917648 0.55468184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 17.935768 -5.7384329 
		8.820509 17.946114 -5.8798542 8.7505331 17.935768 -5.9384327 8.5815964 17.910791 
		-5.8798542 8.4126606 17.885815 -5.7384329 8.3426847 17.875469 -5.5970116 8.4126606 
		17.885815 -5.5384331 8.5815964 17.910791 -5.5970116 1.7861112 18.965425 -5.7384329 
		1.8560861 18.975771 -5.8798542 1.7861112 18.965425 -5.9384327 1.6171738 18.940449 
		-5.8798542 1.4482385 18.915474 -5.7384329 1.3782616 18.905128 -5.5970116 1.4482385 
		18.915474 -5.5384331 1.6171738 18.940449 -5.7384329 8.5815964 17.910791 -5.7384329 
		1.6171738 18.940449;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface174" -p "polySurface140";
createNode mesh -n "polySurfaceShape177" -p "polySurface174";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape339" -p "polySurface174";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.50804883 0.64690679 
		0.50617611 0.64598012 0.50617611 0.55375516 0.50804883 0.55468184 0.50430334 0.64690679 
		0.50430334 0.55468184 0.50352764 0.64914387 0.50352764 0.55691892 0.84301782 0.42517957 
		0.84379345 0.42294252 0.84379345 0.51516747 0.84301782 0.51740456 0.84566623 0.42201591 
		0.84566623 0.51424086 0.84753895 0.42294252 0.84753895 0.51516747 0.8483147 0.42517957 
		0.8483147 0.51740456 0.50882453 0.64914387 0.50882453 0.55691892 0.50617611 0.64914387 
		0.50430334 0.65138102 0.50617611 0.65230757 0.50804883 0.65138102 0.84753895 0.51964176 
		0.84566623 0.52056831 0.84566623 0.51740456 0.84379345 0.51964176;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 17.685129 -5.7384329 
		8.3426847 17.695475 -5.8798542 8.4126606 17.685129 -5.9384327 8.5815964 17.660152 
		-5.8798542 8.7505331 17.635178 -5.7384329 8.820509 17.624832 -5.5970116 8.7505331 
		17.635178 -5.5384331 8.5815964 17.660152 -5.5970116 1.4482385 16.655472 -5.7384329 
		1.3782616 16.665817 -5.8798542 1.4482385 16.655472 -5.9384327 1.6171738 16.630495 
		-5.8798542 1.7861112 16.605518 -5.7384329 1.8560861 16.595173 -5.5970116 1.7861112 
		16.605518 -5.5384331 1.6171738 16.630495 -5.7384329 8.5815964 17.660152 -5.7384329 
		1.6171738 16.630495;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface175" -p "polySurface140";
createNode mesh -n "polySurfaceShape178" -p "polySurface175";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape340" -p "polySurface175";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.49692118 0.65138102 
		0.49504843 0.65230757 0.49504843 0.56008261 0.49692118 0.55915606 0.49317572 0.65138102 
		0.49317572 0.55915606 0.49239996 0.64914387 0.49239996 0.55691892 0.83189023 0.39576983 
		0.83266586 0.39800704 0.83266586 0.49023199 0.83189023 0.48799479 0.83453864 0.39893362 
		0.83453864 0.49115857 0.83641136 0.39800704 0.83641136 0.49023199 0.83718711 0.39576983 
		0.83718711 0.48799479 0.49769691 0.64914387 0.49769691 0.55691892 0.83453864 0.39260617 
		0.83641136 0.39353275 0.83453864 0.39576983 0.83266586 0.39353275 0.49504843 0.55691892 
		0.49317572 0.55468184 0.49504843 0.55375516 0.49692118 0.55468184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 15.533558 -5.7384329 
		8.820509 15.543903 -5.8798542 8.7505331 15.533558 -5.9384327 8.5815964 15.508581 
		-5.8798542 8.4126606 15.483605 -5.7384329 8.3426847 15.47326 -5.5970116 8.4126606 
		15.483605 -5.5384331 8.5815964 15.508581 -5.5970116 1.7861112 16.563215 -5.7384329 
		1.8560861 16.573561 -5.8798542 1.7861112 16.563215 -5.9384327 1.6171738 16.538239 
		-5.8798542 1.4482385 16.513264 -5.7384329 1.3782616 16.502918 -5.5970116 1.4482385 
		16.513264 -5.5384331 1.6171738 16.538239 -5.7384329 8.5815964 15.508581 -5.7384329 
		1.6171738 16.538239;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface176" -p "polySurface140";
createNode mesh -n "polySurfaceShape179" -p "polySurface176";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape341" -p "polySurface176";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.48579353 0.64690679 
		0.48392078 0.64598012 0.48392078 0.55375516 0.48579353 0.55468184 0.48204803 0.64690679 
		0.48204803 0.55468184 0.48127231 0.64914387 0.48127231 0.55691892 0.82076263 0.39576983 
		0.82153827 0.39353275 0.82153827 0.48575771 0.82076263 0.48799479 0.82341105 0.39260617 
		0.82341105 0.48483112 0.82528377 0.39353275 0.82528377 0.48575771 0.82605952 0.39576983 
		0.82605952 0.48799479 0.48656923 0.64914387 0.48656923 0.55691892 0.48392078 0.64914387 
		0.48204803 0.65138102 0.48392078 0.65230757 0.48579353 0.65138102 0.82528377 0.49023199 
		0.82341105 0.49115857 0.82341105 0.48799479 0.82153827 0.49023199;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 15.063833 -5.7384329 
		8.3426847 15.074179 -5.8798542 8.4126606 15.063833 -5.9384327 8.5815964 15.038857 
		-5.8798542 8.7505331 15.01388 -5.7384329 8.820509 15.003534 -5.5970116 8.7505331 
		15.01388 -5.5384331 8.5815964 15.038857 -5.5970116 1.4482385 14.034175 -5.7384329 
		1.3782616 14.044521 -5.8798542 1.4482385 14.034175 -5.9384327 1.6171738 14.009199 
		-5.8798542 1.7861112 13.984222 -5.7384329 1.8560861 13.973877 -5.5970116 1.7861112 
		13.984222 -5.5384331 1.6171738 14.009199 -5.7384329 8.5815964 15.038857 -5.7384329 
		1.6171738 14.009199;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface177" -p "polySurface140";
createNode mesh -n "polySurfaceShape180" -p "polySurface177";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape342" -p "polySurface177";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.47466588 0.65138102 
		0.4727931 0.65230757 0.4727931 0.56008261 0.47466588 0.55915606 0.47092035 0.65138102 
		0.47092035 0.55915606 0.47014463 0.64914387 0.47014463 0.55691892 0.80963504 0.39576983 
		0.81041068 0.39800704 0.81041068 0.49023199 0.80963504 0.48799479 0.81228346 0.39893362 
		0.81228346 0.49115857 0.81415617 0.39800704 0.81415617 0.49023199 0.81493193 0.39576983 
		0.81493193 0.48799479 0.47544155 0.64914387 0.47544155 0.55691892 0.81228346 0.39260617 
		0.81415617 0.39353275 0.81228346 0.39576983 0.81041068 0.39353275 0.4727931 0.55691892 
		0.47092035 0.55468184 0.4727931 0.55375516 0.47466588 0.55468184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 12.912262 -5.7384329 
		8.820509 12.922607 -5.8798542 8.7505331 12.912262 -5.9384327 8.5815964 12.887285 
		-5.8798542 8.4126606 12.862309 -5.7384329 8.3426847 12.851963 -5.5970116 8.4126606 
		12.862309 -5.5384331 8.5815964 12.887285 -5.5970116 1.7861112 13.941919 -5.7384329 
		1.8560861 13.952265 -5.8798542 1.7861112 13.941919 -5.9384327 1.6171738 13.916943 
		-5.8798542 1.4482385 13.891967 -5.7384329 1.3782616 13.881621 -5.5970116 1.4482385 
		13.891967 -5.5384331 1.6171738 13.916943 -5.7384329 8.5815964 12.887285 -5.7384329 
		1.6171738 13.916943;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface178" -p "polySurface140";
createNode mesh -n "polySurfaceShape181" -p "polySurface178";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape343" -p "polySurface178";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.4635382 0.64690679 
		0.46166542 0.64598012 0.46166542 0.55375516 0.4635382 0.55468184 0.4597927 0.64690679 
		0.4597927 0.55468184 0.45901698 0.64914387 0.45901698 0.55691892 0.79850745 0.39576983 
		0.79928309 0.39353275 0.79928309 0.48575771 0.79850745 0.48799479 0.80115587 0.39260617 
		0.80115587 0.48483112 0.80302858 0.39353275 0.80302858 0.48575771 0.80380434 0.39576983 
		0.80380434 0.48799479 0.46431389 0.64914387 0.46431389 0.55691892 0.46166542 0.64914387 
		0.4597927 0.65138102 0.46166542 0.65230757 0.4635382 0.65138102 0.80302858 0.49023199 
		0.80115587 0.49115857 0.80115587 0.48799479 0.79928309 0.49023199;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 12.661623 -5.7384329 
		8.3426847 12.671968 -5.8798542 8.4126606 12.661623 -5.9384327 8.5815964 12.636646 
		-5.8798542 8.7505331 12.61167 -5.7384329 8.820509 12.601324 -5.5970116 8.7505331 
		12.61167 -5.5384331 8.5815964 12.636646 -5.5970116 1.4482385 11.631965 -5.7384329 
		1.3782616 11.642311 -5.8798542 1.4482385 11.631965 -5.9384327 1.6171738 11.606989 
		-5.8798542 1.7861112 11.582012 -5.7384329 1.8560861 11.571667 -5.5970116 1.7861112 
		11.582012 -5.5384331 1.6171738 11.606989 -5.7384329 8.5815964 12.636646 -5.7384329 
		1.6171738 11.606989;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface179" -p "polySurface140";
createNode mesh -n "polySurfaceShape182" -p "polySurface179";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape344" -p "polySurface179";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.45241055 0.65138102 
		0.45053777 0.65230757 0.45053777 0.56008261 0.45241055 0.55915606 0.44866505 0.65138102 
		0.44866505 0.55915606 0.44788933 0.64914387 0.44788933 0.55691892 0.78737986 0.39576983 
		0.7881555 0.39800704 0.7881555 0.49023199 0.78737986 0.48799479 0.79002827 0.39893362 
		0.79002827 0.49115857 0.79190099 0.39800704 0.79190099 0.49023199 0.79267675 0.39576983 
		0.79267675 0.48799479 0.45318621 0.64914387 0.45318621 0.55691892 0.79002827 0.39260617 
		0.79190099 0.39353275 0.79002827 0.39576983 0.7881555 0.39353275 0.45053777 0.55691892 
		0.44866505 0.55468184 0.45053777 0.55375516 0.45241055 0.55468184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 10.510052 -5.7384329 
		8.820509 10.520397 -5.8798542 8.7505331 10.510052 -5.9384327 8.5815964 10.485075 
		-5.8798542 8.4126606 10.460098 -5.7384329 8.3426847 10.449753 -5.5970116 8.4126606 
		10.460098 -5.5384331 8.5815964 10.485075 -5.5970116 1.7861112 11.539709 -5.7384329 
		1.8560861 11.550055 -5.8798542 1.7861112 11.539709 -5.9384327 1.6171738 11.514732 
		-5.8798542 1.4482385 11.489757 -5.7384329 1.3782616 11.47941 -5.5970116 1.4482385 
		11.489757 -5.5384331 1.6171738 11.514732 -5.7384329 8.5815964 10.485075 -5.7384329 
		1.6171738 11.514732;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface180" -p "polySurface140";
createNode mesh -n "polySurfaceShape183" -p "polySurface180";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape345" -p "polySurface180";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.4412829 0.64690679 
		0.43941012 0.64598012 0.43941012 0.55375516 0.4412829 0.55468184 0.43753737 0.64690679 
		0.43753737 0.55468184 0.43676168 0.64914387 0.43676168 0.55691892 0.77625227 0.39576983 
		0.7770279 0.39353275 0.7770279 0.48575771 0.77625227 0.48799479 0.77890068 0.39260617 
		0.77890068 0.48483112 0.7807734 0.39353275 0.7807734 0.48575771 0.78154916 0.39576983 
		0.78154916 0.48799479 0.44205856 0.64914387 0.44205856 0.55691892 0.43941012 0.64914387 
		0.43753737 0.65138102 0.43941012 0.65230757 0.4412829 0.65138102 0.7807734 0.49023199 
		0.77890068 0.49115857 0.77890068 0.48799479 0.7770279 0.49023199;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 10.24371 -5.7384329 
		8.3426847 10.254055 -5.8798542 8.4126606 10.24371 -5.9384327 8.5815964 10.218733 
		-5.8798542 8.7505331 10.193756 -5.7384329 8.820509 10.183412 -5.5970116 8.7505331 
		10.193756 -5.5384331 8.5815964 10.218733 -5.5970116 1.4482385 9.2140522 -5.7384329 
		1.3782616 9.2243977 -5.8798542 1.4482385 9.2140522 -5.9384327 1.6171738 9.1890755 
		-5.8798542 1.7861112 9.1640987 -5.7384329 1.8560861 9.1537533 -5.5970116 1.7861112 
		9.1640987 -5.5384331 1.6171738 9.1890755 -5.7384329 8.5815964 10.218733 -5.7384329 
		1.6171738 9.1890755;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface181" -p "polySurface140";
createNode mesh -n "polySurfaceShape184" -p "polySurface181";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape346" -p "polySurface181";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.43015525 0.65138102 
		0.42828247 0.65230757 0.42828247 0.56008261 0.43015525 0.55915606 0.42640972 0.65138102 
		0.42640972 0.55915606 0.425634 0.64914387 0.425634 0.55691892 0.76512468 0.39576983 
		0.76590031 0.39800704 0.76590031 0.49023199 0.76512468 0.48799479 0.76777309 0.39893362 
		0.76777309 0.49115857 0.76964581 0.39800704 0.76964581 0.49023199 0.77042156 0.39576983 
		0.77042156 0.48799479 0.43093091 0.64914387 0.43093091 0.55691892 0.76777309 0.39260617 
		0.76964581 0.39353275 0.76777309 0.39576983 0.76590031 0.39353275 0.42828247 0.55691892 
		0.42640972 0.55468184 0.42828247 0.55375516 0.43015525 0.55468184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 8.0921383 -5.7384329 
		8.820509 8.1024837 -5.8798542 8.7505331 8.0921383 -5.9384327 8.5815964 8.0671616 
		-5.8798542 8.4126606 8.0421858 -5.7384329 8.3426847 8.0318403 -5.5970116 8.4126606 
		8.0421858 -5.5384331 8.5815964 8.0671616 -5.5970116 1.7861112 9.1217966 -5.7384329 
		1.8560861 9.1321421 -5.8798542 1.7861112 9.1217966 -5.9384327 1.6171738 9.0968199 
		-5.8798542 1.4482385 9.0718431 -5.7384329 1.3782616 9.0614977 -5.5970116 1.4482385 
		9.0718431 -5.5384331 1.6171738 9.0968199 -5.7384329 8.5815964 8.0671616 -5.7384329 
		1.6171738 9.0968199;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface182" -p "polySurface140";
createNode mesh -n "polySurfaceShape185" -p "polySurface182";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape347" -p "polySurface182";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.41902757 0.64690679 
		0.41715479 0.64598012 0.41715479 0.55375516 0.41902757 0.55468184 0.41528207 0.64690679 
		0.41528207 0.55468184 0.41450635 0.64914387 0.41450635 0.55691892 0.75399709 0.39576977 
		0.75477278 0.39353269 0.75477278 0.48575765 0.75399709 0.4879947 0.75664556 0.39260611 
		0.75664556 0.48483104 0.75851828 0.39353269 0.75851828 0.48575765 0.75929397 0.39576977 
		0.75929397 0.4879947 0.41980326 0.64914387 0.41980326 0.55691892 0.41715479 0.64914387 
		0.41528207 0.65138102 0.41715479 0.65230757 0.41902757 0.65138102 0.75851828 0.49023193 
		0.75664556 0.49115852 0.75664556 0.4879947 0.75477278 0.49023193;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 7.8414993 -5.7384329 
		8.3426847 7.8518453 -5.8798542 8.4126606 7.8414993 -5.9384327 8.5815964 7.8165236 
		-5.8798542 8.7505331 7.7915468 -5.7384329 8.820509 7.7812014 -5.5970116 8.7505331 
		7.7915468 -5.5384331 8.5815964 7.8165236 -5.5970116 1.4482385 6.811842 -5.7384329 
		1.3782616 6.8221874 -5.8798542 1.4482385 6.811842 -5.9384327 1.6171738 6.7868652 
		-5.8798542 1.7861112 6.761889 -5.7384329 1.8560861 6.7515435 -5.5970116 1.7861112 
		6.761889 -5.5384331 1.6171738 6.7868652 -5.7384329 8.5815964 7.8165236 -5.7384329 
		1.6171738 6.7868652;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface183" -p "polySurface140";
createNode mesh -n "polySurfaceShape186" -p "polySurface183";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape348" -p "polySurface183";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.40789992 0.65138102 
		0.40602714 0.65230757 0.40602714 0.56008261 0.40789992 0.55915606 0.40415442 0.65138102 
		0.40415442 0.55915606 0.4033787 0.64914387 0.4033787 0.55691892 0.7428695 0.65926456 
		0.74364519 0.66150177 0.74364519 0.75372672 0.7428695 0.75148952 0.74551797 0.66242838 
		0.74551797 0.75465328 0.74739069 0.66150177 0.74739069 0.75372672 0.74816638 0.65926456 
		0.74816638 0.75148952 0.40867558 0.64914387 0.40867558 0.55691892 0.74551797 0.65610087 
		0.74739069 0.65702748 0.74551797 0.65926456 0.74364519 0.65702748 0.40602714 0.55691892 
		0.40415442 0.55468184 0.40602714 0.55375516 0.40789992 0.55468184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 5.6899281 -5.7384329 
		8.820509 5.7002735 -5.8798542 8.7505331 5.6899281 -5.9384327 8.5815964 5.6649518 
		-5.8798542 8.4126606 5.6399751 -5.7384329 8.3426847 5.6296296 -5.5970116 8.4126606 
		5.6399751 -5.5384331 8.5815964 5.6649518 -5.5970116 1.7861112 6.7195859 -5.7384329 
		1.8560861 6.7299318 -5.8798542 1.7861112 6.7195859 -5.9384327 1.6171738 6.6946096 
		-5.8798542 1.4482385 6.6696329 -5.7384329 1.3782616 6.6592875 -5.5970116 1.4482385 
		6.6696329 -5.5384331 1.6171738 6.6946096 -5.7384329 8.5815964 5.6649518 -5.7384329 
		1.6171738 6.6946096;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface184" -p "polySurface140";
createNode mesh -n "polySurfaceShape187" -p "polySurface184";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape349" -p "polySurface184";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.39677227 0.64690679 
		0.39489949 0.64598012 0.39489949 0.55375516 0.39677227 0.55468184 0.39302674 0.64690679 
		0.39302674 0.55468184 0.39225104 0.64914387 0.39225104 0.55691892 0.73174191 0.77766907 
		0.7325176 0.77543199 0.7325176 0.86765695 0.73174191 0.86989403 0.73439038 0.77450544 
		0.73439038 0.86673039 0.7362631 0.77543199 0.7362631 0.86765695 0.73703879 0.77766907 
		0.73703879 0.86989403 0.39754793 0.64914387 0.39754793 0.55691892 0.39489949 0.64914387 
		0.39302674 0.65138102 0.39489949 0.65230757 0.39677227 0.65138102 0.7362631 0.87213123 
		0.73439038 0.87305784 0.73439038 0.86989403 0.7325176 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 5.2202034 -5.7384329 
		8.3426847 5.2305489 -5.8798542 8.4126606 5.2202034 -5.9384327 8.5815964 5.1952267 
		-5.8798542 8.7505331 5.1702504 -5.7384329 8.820509 5.159905 -5.5970116 8.7505331 
		5.1702504 -5.5384331 8.5815964 5.1952267 -5.5970116 1.4482385 4.1905456 -5.7384329 
		1.3782616 4.200891 -5.8798542 1.4482385 4.1905456 -5.9384327 1.6171738 4.1655693 
		-5.8798542 1.7861112 4.1405926 -5.7384329 1.8560861 4.1302471 -5.5970116 1.7861112 
		4.1405926 -5.5384331 1.6171738 4.1655693 -5.7384329 8.5815964 5.1952267 -5.7384329 
		1.6171738 4.1655693;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface185" -p "polySurface140";
createNode mesh -n "polySurfaceShape188" -p "polySurface185";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape350" -p "polySurface185";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.38564461 0.65138102 
		0.38377184 0.65230757 0.38377184 0.56008261 0.38564461 0.55915606 0.38189909 0.65138102 
		0.38189909 0.55915606 0.38112336 0.64914387 0.38112336 0.55691892 0.72061431 0.77766907 
		0.72139001 0.77990627 0.72139001 0.87213123 0.72061431 0.86989403 0.72326279 0.78083289 
		0.72326279 0.87305784 0.72513551 0.77990627 0.72513551 0.87213123 0.7259112 0.77766907 
		0.7259112 0.86989403 0.38642028 0.64914387 0.38642028 0.55691892 0.72326279 0.77450544 
		0.72513551 0.77543199 0.72326279 0.77766907 0.72139001 0.77543199 0.38377184 0.55691892 
		0.38189909 0.55468184 0.38377184 0.55375516 0.38564461 0.55468184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 3.0686319 -5.7384329 
		8.820509 3.0789773 -5.8798542 8.7505331 3.0686319 -5.9384327 8.5815964 3.0436552 
		-5.8798542 8.4126606 3.0186789 -5.7384329 8.3426847 3.0083332 -5.5970116 8.4126606 
		3.0186789 -5.5384331 8.5815964 3.0436552 -5.5970116 1.7861112 4.0982895 -5.7384329 
		1.8560861 4.1086349 -5.8798542 1.7861112 4.0982895 -5.9384327 1.6171738 4.0733132 
		-5.8798542 1.4482385 4.0483365 -5.7384329 1.3782616 4.037991 -5.5970116 1.4482385 
		4.0483365 -5.5384331 1.6171738 4.0733132 -5.7384329 8.5815964 3.0436552 -5.7384329 
		1.6171738 4.0733132;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface186" -p "polySurface140";
createNode mesh -n "polySurfaceShape189" -p "polySurface186";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape351" -p "polySurface186";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.37451693 0.64804643 
		0.37264416 0.64711988 0.37264416 0.55489486 0.37451693 0.55582154 0.37077144 0.64804643 
		0.37077144 0.55582154 0.36999571 0.65028358 0.36999571 0.55805856 0.70948672 0.77766907 
		0.71026242 0.77543199 0.71026242 0.86765695 0.70948672 0.86989403 0.7121352 0.77450544 
		0.7121352 0.86673039 0.71400791 0.77543199 0.71400791 0.86765695 0.71478361 0.77766907 
		0.71478361 0.86989403 0.37529263 0.65028358 0.37529263 0.55805856 0.37264416 0.65028358 
		0.37077144 0.65252066 0.37264416 0.65344733 0.37451693 0.65252066 0.71400791 0.87213123 
		0.7121352 0.87305784 0.7121352 0.86989403 0.71026242 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 2.8179932 -5.7384329 
		8.3426847 2.8283386 -5.8798542 8.4126606 2.8179932 -5.9384327 8.5815964 2.7930164 
		-5.8798542 8.7505331 2.7680402 -5.7384329 8.820509 2.7576945 -5.5970116 8.7505331 
		2.7680402 -5.5384331 8.5815964 2.7930164 -5.5970116 1.4482385 1.7883351 -5.7384329 
		1.3782616 1.7986808 -5.8798542 1.4482385 1.7883351 -5.9384327 1.6171738 1.7633588 
		-5.8798542 1.7861112 1.7383823 -5.7384329 1.8560861 1.7280369 -5.5970116 1.7861112 
		1.7383823 -5.5384331 1.6171738 1.7633588 -5.7384329 8.5815964 2.7930164 -5.7384329 
		1.6171738 1.7633588;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface187" -p "polySurface140";
createNode mesh -n "polySurfaceShape190" -p "polySurface187";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape352" -p "polySurface187";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.36338928 0.65252066 
		0.36151651 0.65344733 0.36151651 0.56122237 0.36338928 0.5602957 0.35964379 0.65252066 
		0.35964379 0.5602957 0.35886806 0.65028358 0.35886806 0.55805856 0.69835913 0.77766907 
		0.69913483 0.77990627 0.69913483 0.87213123 0.69835913 0.86989403 0.7010076 0.78083289 
		0.7010076 0.87305784 0.70288032 0.77990627 0.70288032 0.87213123 0.70365602 0.77766907 
		0.70365602 0.86989403 0.36416495 0.65028358 0.36416495 0.55805856 0.7010076 0.77450544 
		0.70288032 0.77543199 0.7010076 0.77766907 0.69913483 0.77543199 0.36151651 0.55805856 
		0.35964379 0.55582154 0.36151651 0.55489486 0.36338928 0.55582154;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 0.66642141 -5.7384329 
		8.820509 0.67676687 -5.8798542 8.7505331 0.66642141 -5.9384327 8.5815964 0.64144516 
		-5.8798542 8.4126606 0.61646843 -5.7384329 8.3426847 0.60612297 -5.5970116 8.4126606 
		0.61646843 -5.5384331 8.5815964 0.64144516 -5.5970116 1.7861112 1.6960793 -5.7384329 
		1.8560861 1.7064247 -5.8798542 1.7861112 1.6960793 -5.9384327 1.6171738 1.6711028 
		-5.8798542 1.4482385 1.6461265 -5.7384329 1.3782616 1.6357806 -5.5970116 1.4482385 
		1.6461265 -5.5384331 1.6171738 1.6711028 -5.7384329 8.5815964 0.64144516 -5.7384329 
		1.6171738 1.6711028;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface188" -p "polySurface140";
createNode mesh -n "polySurfaceShape191" -p "polySurface188";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape353" -p "polySurface188";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.35226163 0.64804643 
		0.35038885 0.64711988 0.35038885 0.55489486 0.35226163 0.55582154 0.34851611 0.64804643 
		0.34851611 0.55582154 0.34774041 0.65028358 0.34774041 0.55805856 0.68723154 0.77766907 
		0.68800724 0.77543199 0.68800724 0.86765695 0.68723154 0.86989403 0.68988001 0.77450544 
		0.68988001 0.86673039 0.69175273 0.77543199 0.69175273 0.86765695 0.69252843 0.77766907 
		0.69252843 0.86989403 0.3530373 0.65028358 0.3530373 0.55805856 0.35038885 0.65028358 
		0.34851611 0.65252066 0.35038885 0.65344733 0.35226163 0.65252066 0.69175273 0.87213123 
		0.68988001 0.87305784 0.68988001 0.86989403 0.68800724 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -0.40398359 -5.7384329 
		8.3426847 -0.39363813 -5.8798542 8.4126606 -0.40398359 -5.9384327 8.5815964 -0.42896032 
		-5.8798542 8.7505331 -0.45393705 -5.7384329 8.820509 -0.46428204 -5.5970116 8.7505331 
		-0.45393705 -5.5384331 8.5815964 -0.42896032 -5.5970116 1.4482385 -1.4336417 -5.7384329 
		1.3782616 -1.423296 -5.8798542 1.4482385 -1.4336417 -5.9384327 1.6171738 -1.4586179 
		-5.8798542 1.7861112 -1.4835947 -5.7384329 1.8560861 -1.4939401 -5.5970116 1.7861112 
		-1.4835947 -5.5384331 1.6171738 -1.4586179 -5.7384329 8.5815964 -0.42896032 -5.7384329 
		1.6171738 -1.4586179;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface189" -p "polySurface140";
createNode mesh -n "polySurfaceShape192" -p "polySurface189";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape354" -p "polySurface189";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.34113392 0.65252066 
		0.3392612 0.65344733 0.3392612 0.56122237 0.34113392 0.5602957 0.33738846 0.65252066 
		0.33738846 0.5602957 0.33661273 0.65028358 0.33661273 0.55805856 0.67610395 0.77766907 
		0.67687964 0.77990627 0.67687964 0.87213123 0.67610395 0.86989403 0.67875242 0.78083289 
		0.67875242 0.87305784 0.68062514 0.77990627 0.68062514 0.87213123 0.68140084 0.77766907 
		0.68140084 0.86989403 0.34190965 0.65028358 0.34190965 0.55805856 0.67875242 0.77450544 
		0.68062514 0.77543199 0.67875242 0.77766907 0.67687964 0.77543199 0.3392612 0.55805856 
		0.33738846 0.55582154 0.3392612 0.55489486 0.34113392 0.55582154;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -2.5555553 -5.7384329 
		8.820509 -2.5452096 -5.8798542 8.7505331 -2.5555553 -5.9384327 8.5815964 -2.5805316 
		-5.8798542 8.4126606 -2.6055081 -5.7384329 8.3426847 -2.6158535 -5.5970116 8.4126606 
		-2.6055081 -5.5384331 8.5815964 -2.5805316 -5.5970116 1.7861112 -1.5258973 -5.7384329 
		1.8560861 -1.5155518 -5.8798542 1.7861112 -1.5258973 -5.9384327 1.6171738 -1.550874 
		-5.8798542 1.4482385 -1.5758502 -5.7384329 1.3782616 -1.5861959 -5.5970116 1.4482385 
		-1.5758502 -5.5384331 1.6171738 -1.550874 -5.7384329 8.5815964 -2.5805316 -5.7384329 
		1.6171738 -1.550874;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface190" -p "polySurface140";
createNode mesh -n "polySurfaceShape193" -p "polySurface190";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape355" -p "polySurface190";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.33000627 0.64804643 
		0.32813352 0.64711988 0.32813352 0.55489486 0.33000627 0.55582154 0.32626081 0.64804643 
		0.32626081 0.55582154 0.32548508 0.65028358 0.32548508 0.55805856 0.66497636 0.77766907 
		0.66575205 0.77543199 0.66575205 0.86765695 0.66497636 0.86989403 0.66762483 0.77450544 
		0.66762483 0.86673039 0.66949755 0.77543199 0.66949755 0.86765695 0.67027324 0.77766907 
		0.67027324 0.86989403 0.330782 0.65028358 0.330782 0.55805856 0.32813352 0.65028358 
		0.32626081 0.65252066 0.32813352 0.65344733 0.33000627 0.65252066 0.66949755 0.87213123 
		0.66762483 0.87305784 0.66762483 0.86989403 0.66575205 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -2.8061941 -5.7384329 
		8.3426847 -2.7958484 -5.8798542 8.4126606 -2.8061941 -5.9384327 8.5815964 -2.8311703 
		-5.8798542 8.7505331 -2.8561468 -5.7384329 8.820509 -2.8664923 -5.5970116 8.7505331 
		-2.8561468 -5.5384331 8.5815964 -2.8311703 -5.5970116 1.4482385 -3.8358517 -5.7384329 
		1.3782616 -3.8255062 -5.8798542 1.4482385 -3.8358517 -5.9384327 1.6171738 -3.8608284 
		-5.8798542 1.7861112 -3.8858047 -5.7384329 1.8560861 -3.8961501 -5.5970116 1.7861112 
		-3.8858047 -5.5384331 1.6171738 -3.8608284 -5.7384329 8.5815964 -2.8311703 -5.7384329 
		1.6171738 -3.8608284;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface191" -p "polySurface140";
createNode mesh -n "polySurfaceShape194" -p "polySurface191";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape356" -p "polySurface191";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31887862 0.65252066 
		0.31700587 0.65344733 0.31700587 0.56122237 0.31887862 0.5602957 0.31513315 0.65252066 
		0.31513315 0.5602957 0.31435743 0.65028358 0.31435743 0.55805856 0.65384877 0.77766907 
		0.65462446 0.77990627 0.65462446 0.87213123 0.65384877 0.86989403 0.65649724 0.78083289 
		0.65649724 0.87305784 0.65836996 0.77990627 0.65836996 0.87213123 0.65914565 0.77766907 
		0.65914565 0.86989403 0.31965432 0.65028358 0.31965432 0.55805856 0.65649724 0.77450544 
		0.65836996 0.77543199 0.65649724 0.77766907 0.65462446 0.77543199 0.31700587 0.55805856 
		0.31513315 0.55582154 0.31700587 0.55489486 0.31887862 0.55582154;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -4.9577656 -5.7384329 
		8.820509 -4.9474201 -5.8798542 8.7505331 -4.9577656 -5.9384327 8.5815964 -4.9827418 
		-5.8798542 8.4126606 -5.0077186 -5.7384329 8.3426847 -5.018064 -5.5970116 8.4126606 
		-5.0077186 -5.5384331 8.5815964 -4.9827418 -5.5970116 1.7861112 -3.9281077 -5.7384329 
		1.8560861 -3.917762 -5.8798542 1.7861112 -3.9281077 -5.9384327 1.6171738 -3.953084 
		-5.8798542 1.4482385 -3.9780607 -5.7384329 1.3782616 -3.9884062 -5.5970116 1.4482385 
		-3.9780607 -5.5384331 1.6171738 -3.953084 -5.7384329 8.5815964 -4.9827418 -5.7384329 
		1.6171738 -3.953084;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface192" -p "polySurface140";
createNode mesh -n "polySurfaceShape195" -p "polySurface192";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape357" -p "polySurface192";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.30775097 0.64804655 
		0.30587822 0.64711988 0.30587822 0.55489492 0.30775097 0.5558216 0.30400547 0.64804655 
		0.30400547 0.5558216 0.30322978 0.65028358 0.30322978 0.55805862 0.64272118 0.77766907 
		0.64349687 0.77543199 0.64349687 0.86765695 0.64272118 0.86989403 0.64536965 0.77450544 
		0.64536965 0.86673039 0.64724237 0.77543199 0.64724237 0.86765695 0.64801806 0.77766907 
		0.64801806 0.86989403 0.30852666 0.65028358 0.30852666 0.55805862 0.30587822 0.65028358 
		0.30400547 0.65252072 0.30587822 0.65344733 0.30775097 0.65252072 0.64724237 0.87213123 
		0.64536965 0.87305784 0.64536965 0.86989403 0.64349687 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -5.4274902 -5.7384329 
		8.3426847 -5.4171448 -5.8798542 8.4126606 -5.4274902 -5.9384327 8.5815964 -5.452467 
		-5.8798542 8.7505331 -5.4774432 -5.7384329 8.820509 -5.4877887 -5.5970116 8.7505331 
		-5.4774432 -5.5384331 8.5815964 -5.452467 -5.5970116 1.4482385 -6.4571481 -5.7384329 
		1.3782616 -6.4468026 -5.8798542 1.4482385 -6.4571481 -5.9384327 1.6171738 -6.4821243 
		-5.8798542 1.7861112 -6.5071011 -5.7384329 1.8560861 -6.5174465 -5.5970116 1.7861112 
		-6.5071011 -5.5384331 1.6171738 -6.4821243 -5.7384329 8.5815964 -5.452467 -5.7384329 
		1.6171738 -6.4821243;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface193" -p "polySurface140";
createNode mesh -n "polySurfaceShape196" -p "polySurface193";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape358" -p "polySurface193";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.29662329 0.65252072 
		0.29475057 0.65344733 0.29475057 0.56122237 0.29662329 0.56029576 0.29287782 0.65252072 
		0.29287782 0.56029576 0.2921021 0.65028358 0.2921021 0.55805862 0.63159359 0.77766907 
		0.63236928 0.77990627 0.63236928 0.87213123 0.63159359 0.86989403 0.63424206 0.78083289 
		0.63424206 0.87305784 0.63611478 0.77990627 0.63611478 0.87213123 0.63689047 0.77766907 
		0.63689047 0.86989403 0.29739901 0.65028358 0.29739901 0.55805862 0.63424206 0.77450544 
		0.63611478 0.77543199 0.63424206 0.77766907 0.63236928 0.77543199 0.29475057 0.55805862 
		0.29287782 0.5558216 0.29475057 0.55489492 0.29662329 0.5558216;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -7.5790615 -5.7384329 
		8.820509 -7.568716 -5.8798542 8.7505331 -7.5790615 -5.9384327 8.5815964 -7.6040382 
		-5.8798542 8.4126606 -7.629015 -5.7384329 8.3426847 -7.6393604 -5.5970116 8.4126606 
		-7.629015 -5.5384331 8.5815964 -7.6040382 -5.5970116 1.7861112 -6.5494041 -5.7384329 
		1.8560861 -6.5390587 -5.8798542 1.7861112 -6.5494041 -5.9384327 1.6171738 -6.5743804 
		-5.8798542 1.4482385 -6.5993571 -5.7384329 1.3782616 -6.6097026 -5.5970116 1.4482385 
		-6.5993571 -5.5384331 1.6171738 -6.5743804 -5.7384329 8.5815964 -7.6040382 -5.7384329 
		1.6171738 -6.5743804;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface194" -p "polySurface140";
createNode mesh -n "polySurfaceShape197" -p "polySurface194";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape359" -p "polySurface194";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.28549567 0.64804643 
		0.28362289 0.64711988 0.28362289 0.55489486 0.28549567 0.55582154 0.28175017 0.64804643 
		0.28175017 0.55582154 0.28097445 0.65028358 0.28097445 0.55805856 0.62046599 0.77766907 
		0.62124169 0.77543199 0.62124169 0.86765695 0.62046599 0.86989403 0.62311447 0.77450544 
		0.62311447 0.86673039 0.62498719 0.77543199 0.62498719 0.86765695 0.62576288 0.77766907 
		0.62576288 0.86989403 0.28627139 0.65028358 0.28627139 0.55805856 0.28362289 0.65028358 
		0.28175017 0.65252066 0.28362289 0.65344733 0.28549567 0.65252066 0.62498719 0.87213123 
		0.62311447 0.87305784 0.62311447 0.86989403 0.62124169 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -7.8297005 -5.7384329 
		8.3426847 -7.819355 -5.8798542 8.4126606 -7.8297005 -5.9384327 8.5815964 -7.8546772 
		-5.8798542 8.7505331 -7.8796535 -5.7384329 8.820509 -7.8899994 -5.5970116 8.7505331 
		-7.8796535 -5.5384331 8.5815964 -7.8546772 -5.5970116 1.4482385 -8.8593588 -5.7384329 
		1.3782616 -8.8490124 -5.8798542 1.4482385 -8.8593588 -5.9384327 1.6171738 -8.8843346 
		-5.8798542 1.7861112 -8.9093113 -5.7384329 1.8560861 -8.9196568 -5.5970116 1.7861112 
		-8.9093113 -5.5384331 1.6171738 -8.8843346 -5.7384329 8.5815964 -7.8546772 -5.7384329 
		1.6171738 -8.8843346;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface195" -p "polySurface140";
createNode mesh -n "polySurfaceShape198" -p "polySurface195";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape360" -p "polySurface195";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.27436805 0.65252066 
		0.2724953 0.65344733 0.2724953 0.56122237 0.27436805 0.5602957 0.27062255 0.65252066 
		0.27062255 0.5602957 0.26984686 0.65028358 0.26984686 0.55805856 0.6093384 0.77766907 
		0.6101141 0.77990627 0.6101141 0.87213123 0.6093384 0.86989403 0.61198688 0.78083289 
		0.61198688 0.87305784 0.61385959 0.77990627 0.61385959 0.87213123 0.61463529 0.77766907 
		0.61463529 0.86989403 0.27514377 0.65028358 0.27514377 0.55805856 0.61198688 0.77450544 
		0.61385959 0.77543199 0.61198688 0.77766907 0.6101141 0.77543199 0.2724953 0.55805856 
		0.27062255 0.55582154 0.2724953 0.55489486 0.27436805 0.55582154;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -9.9812717 -5.7384329 
		8.820509 -9.9709263 -5.8798542 8.7505331 -9.9812717 -5.9384327 8.5815964 -10.006248 
		-5.8798542 8.4126606 -10.031225 -5.7384329 8.3426847 -10.041571 -5.5970116 8.4126606 
		-10.031225 -5.5384331 8.5815964 -10.006248 -5.5970116 1.7861112 -8.9516144 -5.7384329 
		1.8560861 -8.9412689 -5.8798542 1.7861112 -8.9516144 -5.9384327 1.6171738 -8.9765911 
		-5.8798542 1.4482385 -9.0015669 -5.7384329 1.3782616 -9.0119133 -5.5970116 1.4482385 
		-9.0015669 -5.5384331 1.6171738 -8.9765911 -5.7384329 8.5815964 -10.006248 -5.7384329 
		1.6171738 -8.9765911;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface196" -p "polySurface140";
createNode mesh -n "polySurfaceShape199" -p "polySurface196";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape361" -p "polySurface196";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.26324043 0.64804643 
		0.26136768 0.64711988 0.26136768 0.55489486 0.26324043 0.55582154 0.25949493 0.64804643 
		0.25949493 0.55582154 0.25871924 0.65028358 0.25871924 0.55805856 0.59821081 0.77766907 
		0.59898651 0.77543199 0.59898651 0.86765695 0.59821081 0.86989403 0.60085928 0.77450544 
		0.60085928 0.86673039 0.602732 0.77543199 0.602732 0.86765695 0.6035077 0.77766907 
		0.6035077 0.86989403 0.26401615 0.65028358 0.26401615 0.55805856 0.26136768 0.65028358 
		0.25949493 0.65252066 0.26136768 0.65344733 0.26324043 0.65252066 0.602732 0.87213123 
		0.60085928 0.87305784 0.60085928 0.86989403 0.59898651 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -10.247614 -5.7384329 
		8.3426847 -10.237268 -5.8798542 8.4126606 -10.247614 -5.9384327 8.5815964 -10.272591 
		-5.8798542 8.7505331 -10.297567 -5.7384329 8.820509 -10.307912 -5.5970116 8.7505331 
		-10.297567 -5.5384331 8.5815964 -10.272591 -5.5970116 1.4482385 -11.277271 -5.7384329 
		1.3782616 -11.266926 -5.8798542 1.4482385 -11.277271 -5.9384327 1.6171738 -11.302248 
		-5.8798542 1.7861112 -11.327225 -5.7384329 1.8560861 -11.33757 -5.5970116 1.7861112 
		-11.327225 -5.5384331 1.6171738 -11.302248 -5.7384329 8.5815964 -10.272591 -5.7384329 
		1.6171738 -11.302248;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface197" -p "polySurface140";
createNode mesh -n "polySurfaceShape200" -p "polySurface197";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape362" -p "polySurface197";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.25211281 0.65252066 
		0.25024006 0.65344733 0.25024006 0.56122237 0.25211281 0.5602957 0.24836731 0.65252066 
		0.24836731 0.5602957 0.2475916 0.65028358 0.2475916 0.55805856 0.58708322 0.77766907 
		0.58785892 0.77990627 0.58785892 0.87213123 0.58708322 0.86989403 0.58973169 0.78083289 
		0.58973169 0.87305784 0.59160441 0.77990627 0.59160441 0.87213123 0.59238011 0.77766907 
		0.59238011 0.86989403 0.2528885 0.65028358 0.2528885 0.55805856 0.58973169 0.77450544 
		0.59160441 0.77543199 0.58973169 0.77766907 0.58785892 0.77543199 0.25024006 0.55805856 
		0.24836731 0.55582154 0.25024006 0.55489486 0.25211281 0.55582154;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -12.399185 -5.7384329 
		8.820509 -12.38884 -5.8798542 8.7505331 -12.399185 -5.9384327 8.5815964 -12.424162 
		-5.8798542 8.4126606 -12.449138 -5.7384329 8.3426847 -12.459483 -5.5970116 8.4126606 
		-12.449138 -5.5384331 8.5815964 -12.424162 -5.5970116 1.7861112 -11.369527 -5.7384329 
		1.8560861 -11.359181 -5.8798542 1.7861112 -11.369527 -5.9384327 1.6171738 -11.394504 
		-5.8798542 1.4482385 -11.41948 -5.7384329 1.3782616 -11.429826 -5.5970116 1.4482385 
		-11.41948 -5.5384331 1.6171738 -11.394504 -5.7384329 8.5815964 -12.424162 -5.7384329 
		1.6171738 -11.394504;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface198" -p "polySurface140";
createNode mesh -n "polySurfaceShape201" -p "polySurface198";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape363" -p "polySurface198";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.24098517 0.64804643 
		0.23911242 0.64711988 0.23911242 0.55489486 0.24098517 0.55582154 0.23723969 0.64804643 
		0.23723969 0.55582154 0.23646396 0.65028358 0.23646396 0.55805856 0.57595557 0.77766907 
		0.57673132 0.77543199 0.57673132 0.86765695 0.57595557 0.86989403 0.5786041 0.77450544 
		0.5786041 0.86673039 0.58047682 0.77543199 0.58047682 0.86765695 0.58125252 0.77766907 
		0.58125252 0.86989403 0.24176089 0.65028358 0.24176089 0.55805856 0.23911242 0.65028358 
		0.23723969 0.65252066 0.23911242 0.65344733 0.24098517 0.65252066 0.58047682 0.87213123 
		0.5786041 0.87305784 0.5786041 0.86989403 0.57673132 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -12.649824 -5.7384329 
		8.3426847 -12.639479 -5.8798542 8.4126606 -12.649824 -5.9384327 8.5815964 -12.6748 
		-5.8798542 8.7505331 -12.699777 -5.7384329 8.820509 -12.710122 -5.5970116 8.7505331 
		-12.699777 -5.5384331 8.5815964 -12.6748 -5.5970116 1.4482385 -13.679482 -5.7384329 
		1.3782616 -13.669136 -5.8798542 1.4482385 -13.679482 -5.9384327 1.6171738 -13.704458 
		-5.8798542 1.7861112 -13.729434 -5.7384329 1.8560861 -13.73978 -5.5970116 1.7861112 
		-13.729434 -5.5384331 1.6171738 -13.704458 -5.7384329 8.5815964 -12.6748 -5.7384329 
		1.6171738 -13.704458;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface199" -p "polySurface140";
createNode mesh -n "polySurfaceShape202" -p "polySurface199";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape364" -p "polySurface199";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.22985755 0.65252066 
		0.2279848 0.65344733 0.2279848 0.56122237 0.22985755 0.5602957 0.22611205 0.65252066 
		0.22611205 0.5602957 0.22533634 0.65028358 0.22533634 0.55805856 0.56482798 0.77766907 
		0.56560373 0.77990627 0.56560373 0.87213123 0.56482798 0.86989403 0.56747651 0.78083289 
		0.56747651 0.87305784 0.56934923 0.77990627 0.56934923 0.87213123 0.57012492 0.77766907 
		0.57012492 0.86989403 0.23063326 0.65028358 0.23063326 0.55805856 0.56747651 0.77450544 
		0.56934923 0.77543199 0.56747651 0.77766907 0.56560373 0.77543199 0.2279848 0.55805856 
		0.22611205 0.55582154 0.2279848 0.55489486 0.22985755 0.55582154;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -14.801395 -5.7384329 
		8.820509 -14.79105 -5.8798542 8.7505331 -14.801395 -5.9384327 8.5815964 -14.826372 
		-5.8798542 8.4126606 -14.851348 -5.7384329 8.3426847 -14.861693 -5.5970116 8.4126606 
		-14.851348 -5.5384331 8.5815964 -14.826372 -5.5970116 1.7861112 -13.771738 -5.7384329 
		1.8560861 -13.761392 -5.8798542 1.7861112 -13.771738 -5.9384327 1.6171738 -13.796714 
		-5.8798542 1.4482385 -13.821691 -5.7384329 1.3782616 -13.832036 -5.5970116 1.4482385 
		-13.821691 -5.5384331 1.6171738 -13.796714 -5.7384329 8.5815964 -14.826372 -5.7384329 
		1.6171738 -13.796714;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface200" -p "polySurface140";
createNode mesh -n "polySurfaceShape203" -p "polySurface200";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape365" -p "polySurface200";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.21872993 0.64804655 
		0.21685717 0.64711988 0.21685717 0.55489492 0.21872993 0.5558216 0.21498443 0.64804655 
		0.21498443 0.5558216 0.21420872 0.65028358 0.21420872 0.55805862 0.55370039 0.77766907 
		0.55447614 0.77543199 0.55447614 0.86765695 0.55370039 0.86989403 0.55634892 0.77450544 
		0.55634892 0.86673039 0.55822164 0.77543199 0.55822164 0.86765695 0.55899733 0.77766907 
		0.55899733 0.86989403 0.21950564 0.65028358 0.21950564 0.55805862 0.21685717 0.65028358 
		0.21498443 0.65252072 0.21685717 0.65344733 0.21872993 0.65252072 0.55822164 0.87213123 
		0.55634892 0.87305784 0.55634892 0.86989403 0.55447614 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -15.27112 -5.7384329 
		8.3426847 -15.260775 -5.8798542 8.4126606 -15.27112 -5.9384327 8.5815964 -15.296097 
		-5.8798542 8.7505331 -15.321074 -5.7384329 8.820509 -15.331419 -5.5970116 8.7505331 
		-15.321074 -5.5384331 8.5815964 -15.296097 -5.5970116 1.4482385 -16.300777 -5.7384329 
		1.3782616 -16.290432 -5.8798542 1.4482385 -16.300777 -5.9384327 1.6171738 -16.325754 
		-5.8798542 1.7861112 -16.350731 -5.7384329 1.8560861 -16.361076 -5.5970116 1.7861112 
		-16.350731 -5.5384331 1.6171738 -16.325754 -5.7384329 8.5815964 -15.296097 -5.7384329 
		1.6171738 -16.325754;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface201" -p "polySurface140";
createNode mesh -n "polySurfaceShape204" -p "polySurface201";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape366" -p "polySurface201";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.20760231 0.66285247 
		0.20572954 0.66377902 0.20572954 0.57155406 0.20760231 0.57062751 0.20385681 0.66285247 
		0.20385681 0.57062751 0.2030811 0.66061532 0.2030811 0.56839037 0.54257274 0.77766907 
		0.54334849 0.77990627 0.54334849 0.87213123 0.54257274 0.86989403 0.54522127 0.78083289 
		0.54522127 0.87305784 0.54709399 0.77990627 0.54709399 0.87213123 0.54786968 0.77766907 
		0.54786968 0.86989403 0.20837802 0.66061532 0.20837802 0.56839037 0.54522127 0.77450544 
		0.54709399 0.77543199 0.54522127 0.77766907 0.54334849 0.77543199 0.20572954 0.56839037 
		0.20385681 0.56615329 0.20572954 0.56522661 0.20760231 0.56615329;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -17.422691 -5.7384329 
		8.820509 -17.412346 -5.8798542 8.7505331 -17.422691 -5.9384327 8.5815964 -17.447668 
		-5.8798542 8.4126606 -17.472645 -5.7384329 8.3426847 -17.48299 -5.5970116 8.4126606 
		-17.472645 -5.5384331 8.5815964 -17.447668 -5.5970116 1.7861112 -16.393034 -5.7384329 
		1.8560861 -16.382689 -5.8798542 1.7861112 -16.393034 -5.9384327 1.6171738 -16.418011 
		-5.8798542 1.4482385 -16.442987 -5.7384329 1.3782616 -16.453333 -5.5970116 1.4482385 
		-16.442987 -5.5384331 1.6171738 -16.418011 -5.7384329 8.5815964 -17.447668 -5.7384329 
		1.6171738 -16.418011;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface202" -p "polySurface140";
createNode mesh -n "polySurfaceShape205" -p "polySurface202";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape367" -p "polySurface202";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.19647467 0.65837824 
		0.19460192 0.65745157 0.19460192 0.56522661 0.19647467 0.56615329 0.19272919 0.65837824 
		0.19272919 0.56615329 0.19195347 0.66061532 0.19195347 0.56839037 0.53144509 0.77766907 
		0.53222084 0.77543199 0.53222084 0.86765695 0.53144509 0.86989403 0.53409356 0.77450544 
		0.53409356 0.86673039 0.53596634 0.77543199 0.53596634 0.86765695 0.53674203 0.77766907 
		0.53674203 0.86989403 0.19725038 0.66061532 0.19725038 0.56839037 0.19460192 0.66061532 
		0.19272919 0.66285247 0.19460192 0.66377902 0.19647467 0.66285247 0.53596634 0.87213123 
		0.53409356 0.87305784 0.53409356 0.86989403 0.53222084 0.87213123;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.4126606 -17.67333 -5.7384329 
		8.3426847 -17.662985 -5.8798542 8.4126606 -17.67333 -5.9384327 8.5815964 -17.698307 
		-5.8798542 8.7505331 -17.723284 -5.7384329 8.820509 -17.733629 -5.5970116 8.7505331 
		-17.723284 -5.5384331 8.5815964 -17.698307 -5.5970116 1.4482385 -18.702988 -5.7384329 
		1.3782616 -18.692642 -5.8798542 1.4482385 -18.702988 -5.9384327 1.6171738 -18.727964 
		-5.8798542 1.7861112 -18.752941 -5.7384329 1.8560861 -18.763287 -5.5970116 1.7861112 
		-18.752941 -5.5384331 1.6171738 -18.727964 -5.7384329 8.5815964 -17.698307 -5.7384329 
		1.6171738 -18.727964;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface203" -p "polySurface140";
createNode mesh -n "polySurfaceShape206" -p "polySurface203";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape368" -p "polySurface203";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.18534705 0.66285253 
		0.1834743 0.66377908 0.1834743 0.57155412 0.18534705 0.57062757 0.18160155 0.66285253 
		0.18160155 0.57062757 0.18082584 0.66061538 0.18082584 0.56839043 0.52031744 0.76161039 
		0.52109319 0.76384759 0.52109319 0.85607255 0.52031744 0.85383534 0.52296591 0.7647742 
		0.52296591 0.85699916 0.52483869 0.76384759 0.52483869 0.85607255 0.52561438 0.76161039 
		0.52561438 0.85383534 0.18612276 0.66061538 0.18612276 0.56839043 0.52296591 0.75844675 
		0.52483869 0.75937331 0.52296591 0.76161039 0.52109319 0.75937331 0.1834743 0.56839043 
		0.18160155 0.56615335 0.1834743 0.56522667 0.18534705 0.56615335;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 8.7505331 -19.824902 -5.7384329 
		8.820509 -19.814556 -5.8798542 8.7505331 -19.824902 -5.9384327 8.5815964 -19.849878 
		-5.8798542 8.4126606 -19.874855 -5.7384329 8.3426847 -19.885201 -5.5970116 8.4126606 
		-19.874855 -5.5384331 8.5815964 -19.849878 -5.5970116 1.7861112 -18.795244 -5.7384329 
		1.8560861 -18.784899 -5.8798542 1.7861112 -18.795244 -5.9384327 1.6171738 -18.820221 
		-5.8798542 1.4482385 -18.845198 -5.7384329 1.3782616 -18.855543 -5.5970116 1.4482385 
		-18.845198 -5.5384331 1.6171738 -18.820221 -5.7384329 8.5815964 -19.849878 -5.7384329 
		1.6171738 -18.820221;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface204" -p "polySurface140";
createNode mesh -n "polySurfaceShape207" -p "polySurface204";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape369" -p "polySurface204";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.51371098 0.85159826 
		0.51183826 0.85067165 0.51183826 0.75844675 0.51371098 0.75937331 0.50996554 0.85159826 
		0.50996554 0.75937331 0.50918978 0.85383546 0.50918978 0.76161039 0.16969822 0.56839043 
		0.17047393 0.56615329 0.17047393 0.65837824 0.16969822 0.66061538 0.17234667 0.56522667 
		0.17234667 0.65745163 0.17421943 0.56615329 0.17421943 0.65837824 0.17499514 0.56839043 
		0.17499514 0.66061538 0.51448673 0.85383546 0.51448673 0.76161039 0.51183826 0.85383546 
		0.50996554 0.85607255 0.51183826 0.85699916 0.51371098 0.85607255 0.17421943 0.66285247 
		0.17234667 0.66377908 0.17234667 0.66061538 0.17047393 0.66285247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -19.92458 -5.7384329 
		1.9621159 -19.934925 -5.8798542 1.8921403 -19.92458 -5.9384327 1.723204 -19.899603 
		-5.8798542 1.5542678 -19.874626 -5.7384329 1.4842919 -19.864281 -5.5970116 1.5542678 
		-19.874626 -5.5384331 1.723204 -19.899603 -5.5970116 8.8565626 -18.894922 -5.7384329 
		8.9265404 -18.905268 -5.8798542 8.8565626 -18.894922 -5.9384327 8.6876278 -18.869946 
		-5.8798542 8.5186901 -18.844969 -5.7384329 8.4487152 -18.834623 -5.5970116 8.5186901 
		-18.844969 -5.5384331 8.6876278 -18.869946 -5.7384329 1.723204 -19.899603 -5.7384329 
		8.6876278 -18.869946;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface205" -p "polySurface140";
createNode mesh -n "polySurfaceShape208" -p "polySurface205";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape370" -p "polySurface205";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.50258332 0.85607255 
		0.50071061 0.85699916 0.50071061 0.7647742 0.50258332 0.76384759 0.49883786 0.85607255 
		0.49883786 0.76384759 0.49806213 0.85383546 0.49806213 0.76161039 0.1585706 0.56839037 
		0.15934631 0.57062745 0.15934631 0.66285235 0.1585706 0.66061532 0.16121905 0.57155406 
		0.16121905 0.66377902 0.16309181 0.57062745 0.16309181 0.66285235 0.16386752 0.56839037 
		0.16386752 0.66061532 0.50335908 0.85383546 0.50335908 0.76161039 0.16121905 0.56522661 
		0.16309181 0.56615323 0.16121905 0.56839037 0.15934631 0.56615323 0.50071061 0.76161039 
		0.49883786 0.75937331 0.50071061 0.75844675 0.50258332 0.75937331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -17.773008 -5.7384329 
		1.4842919 -17.783354 -5.8798542 1.5542678 -17.773008 -5.9384327 1.723204 -17.748032 
		-5.8798542 1.8921403 -17.723055 -5.7384329 1.9621159 -17.712709 -5.5970116 1.8921403 
		-17.723055 -5.5384331 1.723204 -17.748032 -5.5970116 8.5186901 -18.802666 -5.7384329 
		8.4487152 -18.813011 -5.8798542 8.5186901 -18.802666 -5.9384327 8.6876278 -18.777689 
		-5.8798542 8.8565626 -18.752714 -5.7384329 8.9265404 -18.742367 -5.5970116 8.8565626 
		-18.752714 -5.5384331 8.6876278 -18.777689 -5.7384329 1.723204 -17.748032 -5.7384329 
		8.6876278 -18.777689;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface206" -p "polySurface140";
createNode mesh -n "polySurfaceShape209" -p "polySurface206";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape371" -p "polySurface206";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.49145567 0.85159826 
		0.48958296 0.85067165 0.48958296 0.75844675 0.49145567 0.75937331 0.48771021 0.85159826 
		0.48771021 0.75937331 0.48693445 0.85383546 0.48693445 0.76161039 0.14744297 0.56839037 
		0.14821868 0.56615323 0.14821868 0.65837818 0.14744297 0.66061532 0.15009142 0.56522661 
		0.15009142 0.65745157 0.15196417 0.56615323 0.15196417 0.65837818 0.15273988 0.56839037 
		0.15273988 0.66061532 0.4922314 0.85383546 0.4922314 0.76161039 0.48958296 0.85383546 
		0.48771021 0.85607255 0.48958296 0.85699916 0.49145567 0.85607255 0.15196417 0.66285235 
		0.15009142 0.66377902 0.15009142 0.66061532 0.14821868 0.66285235;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -17.522369 -5.7384329 
		1.9621159 -17.532715 -5.8798542 1.8921403 -17.522369 -5.9384327 1.723204 -17.497393 
		-5.8798542 1.5542678 -17.472416 -5.7384329 1.4842919 -17.46207 -5.5970116 1.5542678 
		-17.472416 -5.5384331 1.723204 -17.497393 -5.5970116 8.8565626 -16.492712 -5.7384329 
		8.9265404 -16.503057 -5.8798542 8.8565626 -16.492712 -5.9384327 8.6876278 -16.467735 
		-5.8798542 8.5186901 -16.442759 -5.7384329 8.4487152 -16.432413 -5.5970116 8.5186901 
		-16.442759 -5.5384331 8.6876278 -16.467735 -5.7384329 1.723204 -17.497393 -5.7384329 
		8.6876278 -16.467735;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface207" -p "polySurface140";
createNode mesh -n "polySurfaceShape210" -p "polySurface207";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape372" -p "polySurface207";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.48032802 0.85607255 
		0.47845525 0.85699916 0.47845525 0.7647742 0.48032802 0.76384759 0.47658253 0.85607255 
		0.47658253 0.76384759 0.4758068 0.85383546 0.4758068 0.76161039 0.13631535 0.56839043 
		0.13709106 0.57062751 0.13709106 0.66285247 0.13631535 0.66061538 0.1389638 0.57155412 
		0.1389638 0.66377908 0.14083655 0.57062751 0.14083655 0.66285247 0.14161226 0.56839043 
		0.14161226 0.66061538 0.48110372 0.85383546 0.48110372 0.76161039 0.1389638 0.56522667 
		0.14083655 0.56615329 0.1389638 0.56839043 0.13709106 0.56615329 0.47845525 0.76161039 
		0.47658253 0.75937331 0.47845525 0.75844675 0.48032802 0.75937331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -15.370798 -5.7384329 
		1.4842919 -15.381144 -5.8798542 1.5542678 -15.370798 -5.9384327 1.723204 -15.345821 
		-5.8798542 1.8921403 -15.320846 -5.7384329 1.9621159 -15.3105 -5.5970116 1.8921403 
		-15.320846 -5.5384331 1.723204 -15.345821 -5.5970116 8.5186901 -16.400455 -5.7384329 
		8.4487152 -16.410801 -5.8798542 8.5186901 -16.400455 -5.9384327 8.6876278 -16.375479 
		-5.8798542 8.8565626 -16.350502 -5.7384329 8.9265404 -16.340157 -5.5970116 8.8565626 
		-16.350502 -5.5384331 8.6876278 -16.375479 -5.7384329 1.723204 -15.345821 -5.7384329 
		8.6876278 -16.375479;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface208" -p "polySurface140";
createNode mesh -n "polySurfaceShape211" -p "polySurface208";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape373" -p "polySurface208";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.46920037 0.85159826 
		0.46732759 0.85067165 0.46732759 0.75844675 0.46920037 0.75937331 0.46545488 0.85159826 
		0.46545488 0.75937331 0.46467915 0.85383546 0.46467915 0.76161039 0.12518771 0.56839043 
		0.12596342 0.56615329 0.12596342 0.65837824 0.12518771 0.66061538 0.12783615 0.56522667 
		0.12783615 0.65745163 0.12970892 0.56615329 0.12970892 0.65837824 0.13048463 0.56839043 
		0.13048463 0.66061538 0.46997604 0.85383546 0.46997604 0.76161039 0.46732759 0.85383546 
		0.46545488 0.85607255 0.46732759 0.85699916 0.46920037 0.85607255 0.12970892 0.66285247 
		0.12783615 0.66377908 0.12783615 0.66061538 0.12596342 0.66285247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -14.901073 -5.7384329 
		1.9621159 -14.911419 -5.8798542 1.8921403 -14.901073 -5.9384327 1.723204 -14.876097 
		-5.8798542 1.5542678 -14.85112 -5.7384329 1.4842919 -14.840775 -5.5970116 1.5542678 
		-14.85112 -5.5384331 1.723204 -14.876097 -5.5970116 8.8565626 -13.871415 -5.7384329 
		8.9265404 -13.881762 -5.8798542 8.8565626 -13.871415 -5.9384327 8.6876278 -13.846439 
		-5.8798542 8.5186901 -13.821463 -5.7384329 8.4487152 -13.811117 -5.5970116 8.5186901 
		-13.821463 -5.5384331 8.6876278 -13.846439 -5.7384329 1.723204 -14.876097 -5.7384329 
		8.6876278 -13.846439;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface209" -p "polySurface140";
createNode mesh -n "polySurfaceShape212" -p "polySurface209";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape374" -p "polySurface209";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.45807272 0.85607255 
		0.45619994 0.85699916 0.45619994 0.7647742 0.45807272 0.76384759 0.4543272 0.85607255 
		0.4543272 0.76384759 0.4535515 0.85383546 0.4535515 0.76161039 0.11406007 0.56839037 
		0.11483578 0.57062745 0.11483578 0.66285235 0.11406007 0.66061532 0.11670852 0.57155406 
		0.11670852 0.66377902 0.11858128 0.57062745 0.11858128 0.66285235 0.11935699 0.56839037 
		0.11935699 0.66061532 0.45884839 0.85383546 0.45884839 0.76161039 0.11670852 0.56522661 
		0.11858128 0.56615323 0.11670852 0.56839037 0.11483578 0.56615323 0.45619994 0.76161039 
		0.4543272 0.75937331 0.45619994 0.75844675 0.45807272 0.75937331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -12.749502 -5.7384329 
		1.4842919 -12.759848 -5.8798542 1.5542678 -12.749502 -5.9384327 1.723204 -12.724525 
		-5.8798542 1.8921403 -12.699549 -5.7384329 1.9621159 -12.689203 -5.5970116 1.8921403 
		-12.699549 -5.5384331 1.723204 -12.724525 -5.5970116 8.5186901 -13.77916 -5.7384329 
		8.4487152 -13.789505 -5.8798542 8.5186901 -13.77916 -5.9384327 8.6876278 -13.754183 
		-5.8798542 8.8565626 -13.729207 -5.7384329 8.9265404 -13.718862 -5.5970116 8.8565626 
		-13.729207 -5.5384331 8.6876278 -13.754183 -5.7384329 1.723204 -12.724525 -5.7384329 
		8.6876278 -13.754183;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface210" -p "polySurface140";
createNode mesh -n "polySurfaceShape213" -p "polySurface210";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape375" -p "polySurface210";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.44694504 0.85159826 
		0.44507229 0.85067165 0.44507229 0.75844675 0.44694504 0.75937331 0.44319955 0.85159826 
		0.44319955 0.75937331 0.44242382 0.85383546 0.44242382 0.76161039 0.10293244 0.56839043 
		0.10370815 0.56615329 0.10370815 0.65837824 0.10293244 0.66061538 0.10558089 0.56522667 
		0.10558089 0.65745163 0.10745364 0.56615329 0.10745364 0.65837824 0.10822935 0.56839043 
		0.10822935 0.66061538 0.44772074 0.85383546 0.44772074 0.76161039 0.44507229 0.85383546 
		0.44319955 0.85607255 0.44507229 0.85699916 0.44694504 0.85607255 0.10745364 0.66285247 
		0.10558089 0.66377908 0.10558089 0.66061538 0.10370815 0.66285247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -12.498863 -5.7384329 
		1.9621159 -12.509209 -5.8798542 1.8921403 -12.498863 -5.9384327 1.723204 -12.473886 
		-5.8798542 1.5542678 -12.44891 -5.7384329 1.4842919 -12.438564 -5.5970116 1.5542678 
		-12.44891 -5.5384331 1.723204 -12.473886 -5.5970116 8.8565626 -11.469205 -5.7384329 
		8.9265404 -11.479551 -5.8798542 8.8565626 -11.469205 -5.9384327 8.6876278 -11.444229 
		-5.8798542 8.5186901 -11.419252 -5.7384329 8.4487152 -11.408907 -5.5970116 8.5186901 
		-11.419252 -5.5384331 8.6876278 -11.444229 -5.7384329 1.723204 -12.473886 -5.7384329 
		8.6876278 -11.444229;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface211" -p "polySurface140";
createNode mesh -n "polySurfaceShape214" -p "polySurface211";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape376" -p "polySurface211";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.43581739 0.85607255 
		0.43394461 0.85699916 0.43394461 0.7647742 0.43581739 0.76384759 0.43207189 0.85607255 
		0.43207189 0.76384759 0.43129617 0.85383546 0.43129617 0.76161039 0.091804802 0.56839043 
		0.09258052 0.57062751 0.09258052 0.66285247 0.091804802 0.66061538 0.094453253 0.57155412 
		0.094453253 0.66377908 0.096326008 0.57062751 0.096326008 0.66285247 0.097101726 
		0.56839043 0.097101726 0.66061538 0.43659309 0.85383546 0.43659309 0.76161039 0.094453253 
		0.56522667 0.096326008 0.56615329 0.094453253 0.56839043 0.09258052 0.56615329 0.43394461 
		0.76161039 0.43207189 0.75937331 0.43394461 0.75844675 0.43581739 0.75937331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -10.347292 -5.7384329 
		1.4842919 -10.357637 -5.8798542 1.5542678 -10.347292 -5.9384327 1.723204 -10.322315 
		-5.8798542 1.8921403 -10.297338 -5.7384329 1.9621159 -10.286993 -5.5970116 1.8921403 
		-10.297338 -5.5384331 1.723204 -10.322315 -5.5970116 8.5186901 -11.376949 -5.7384329 
		8.4487152 -11.387295 -5.8798542 8.5186901 -11.376949 -5.9384327 8.6876278 -11.351973 
		-5.8798542 8.8565626 -11.326997 -5.7384329 8.9265404 -11.31665 -5.5970116 8.8565626 
		-11.326997 -5.5384331 8.6876278 -11.351973 -5.7384329 1.723204 -10.322315 -5.7384329 
		8.6876278 -11.351973;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface212" -p "polySurface140";
createNode mesh -n "polySurfaceShape215" -p "polySurface212";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape377" -p "polySurface212";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.42468974 0.85159826 
		0.42281696 0.85067165 0.42281696 0.75844675 0.42468974 0.75937331 0.42094424 0.85159826 
		0.42094424 0.75937331 0.42016852 0.85383546 0.42016852 0.76161039 0.080677174 0.56839037 
		0.081452884 0.56615323 0.081452884 0.65837818 0.080677174 0.66061532 0.083325624 
		0.56522661 0.083325624 0.65745157 0.08519838 0.56615323 0.08519838 0.65837818 0.08597409 
		0.56839037 0.08597409 0.66061532 0.4254654 0.85383546 0.4254654 0.76161039 0.42281696 
		0.85383546 0.42094424 0.85607255 0.42281696 0.85699916 0.42468974 0.85607255 0.08519838 
		0.66285235 0.083325624 0.66377902 0.083325624 0.66061532 0.081452884 0.66285235;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -10.08095 -5.7384329 
		1.9621159 -10.091295 -5.8798542 1.8921403 -10.08095 -5.9384327 1.723204 -10.055973 
		-5.8798542 1.5542678 -10.030996 -5.7384329 1.4842919 -10.020652 -5.5970116 1.5542678 
		-10.030996 -5.5384331 1.723204 -10.055973 -5.5970116 8.8565626 -9.0512924 -5.7384329 
		8.9265404 -9.0616379 -5.8798542 8.8565626 -9.0512924 -5.9384327 8.6876278 -9.0263157 
		-5.8798542 8.5186901 -9.001339 -5.7384329 8.4487152 -8.9909935 -5.5970116 8.5186901 
		-9.001339 -5.5384331 8.6876278 -9.0263157 -5.7384329 1.723204 -10.055973 -5.7384329 
		8.6876278 -9.0263157;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface213" -p "polySurface140";
createNode mesh -n "polySurfaceShape216" -p "polySurface213";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape378" -p "polySurface213";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.41356209 0.85607255 
		0.41168931 0.85699916 0.41168931 0.7647742 0.41356209 0.76384759 0.40981656 0.85607255 
		0.40981656 0.76384759 0.40904087 0.85383546 0.40904087 0.76161039 0.069549538 0.56839037 
		0.070325248 0.57062745 0.070325248 0.66285235 0.069549538 0.66061532 0.072197989 
		0.57155406 0.072197989 0.66377902 0.074070744 0.57062745 0.074070744 0.66285235 0.074846454 
		0.56839037 0.074846454 0.66061532 0.41433775 0.85383546 0.41433775 0.76161039 0.072197989 
		0.56522661 0.074070744 0.56615323 0.072197989 0.56839037 0.070325248 0.56615323 0.41168931 
		0.76161039 0.40981656 0.75937331 0.41168931 0.75844675 0.41356209 0.75937331;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -7.9293785 -5.7384329 
		1.4842919 -7.939724 -5.8798542 1.5542678 -7.9293785 -5.9384327 1.723204 -7.9044023 
		-5.8798542 1.8921403 -7.879426 -5.7384329 1.9621159 -7.8690805 -5.5970116 1.8921403 
		-7.879426 -5.5384331 1.723204 -7.9044023 -5.5970116 8.5186901 -8.9590368 -5.7384329 
		8.4487152 -8.9693823 -5.8798542 8.5186901 -8.9590368 -5.9384327 8.6876278 -8.9340601 
		-5.8798542 8.8565626 -8.9090834 -5.7384329 8.9265404 -8.8987379 -5.5970116 8.8565626 
		-8.9090834 -5.5384331 8.6876278 -8.9340601 -5.7384329 1.723204 -7.9044023 -5.7384329 
		8.6876278 -8.9340601;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface214" -p "polySurface140";
createNode mesh -n "polySurfaceShape217" -p "polySurface214";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape379" -p "polySurface214";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.40243441 0.85159826 
		0.40056166 0.85067165 0.40056166 0.75844675 0.40243441 0.75937331 0.39868891 0.85159826 
		0.39868891 0.75937331 0.39791319 0.85383546 0.39791319 0.76161039 0.058421925 0.56839037 
		0.059197634 0.56615323 0.059197634 0.65837818 0.058421925 0.66061532 0.061070371 
		0.56522661 0.061070371 0.65745157 0.062943131 0.56615323 0.062943131 0.65837818 0.06371884 
		0.56839037 0.06371884 0.66061532 0.4032101 0.85383546 0.4032101 0.76161039 0.40056166 
		0.85383546 0.39868891 0.85607255 0.40056166 0.85699916 0.40243441 0.85607255 0.062943131 
		0.66285235 0.061070371 0.66377902 0.061070371 0.66061532 0.059197634 0.66285235;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -7.6787395 -5.7384329 
		1.9621159 -7.6890855 -5.8798542 1.8921403 -7.6787395 -5.9384327 1.723204 -7.6537638 
		-5.8798542 1.5542678 -7.628787 -5.7384329 1.4842919 -7.6184416 -5.5970116 1.5542678 
		-7.628787 -5.5384331 1.723204 -7.6537638 -5.5970116 8.8565626 -6.6490822 -5.7384329 
		8.9265404 -6.6594276 -5.8798542 8.8565626 -6.6490822 -5.9384327 8.6876278 -6.6241055 
		-5.8798542 8.5186901 -6.5991292 -5.7384329 8.4487152 -6.5887837 -5.5970116 8.5186901 
		-6.5991292 -5.5384331 8.6876278 -6.6241055 -5.7384329 1.723204 -7.6537638 -5.7384329 
		8.6876278 -6.6241055;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface215" -p "polySurface140";
createNode mesh -n "polySurfaceShape218" -p "polySurface215";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape380" -p "polySurface215";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.39130676 0.85721213 
		0.38943398 0.85813874 0.38943398 0.76591378 0.39130676 0.76498723 0.38756126 0.85721213 
		0.38756126 0.76498723 0.38678554 0.8549751 0.38678554 0.76275003 0.047294281 0.56839043 
		0.048069995 0.57062751 0.048069995 0.66285247 0.047294281 0.66061538 0.049942732 
		0.57155412 0.049942732 0.66377908 0.051815487 0.57062751 0.051815487 0.66285247 0.052591197 
		0.56839043 0.052591197 0.66061538 0.39208245 0.8549751 0.39208245 0.76275003 0.049942732 
		0.56522667 0.051815487 0.56615329 0.049942732 0.56839043 0.048069995 0.56615329 0.38943398 
		0.76275003 0.38756126 0.76051295 0.38943398 0.75958633 0.39130676 0.76051295;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -5.5271683 -5.7384329 
		1.4842919 -5.5375137 -5.8798542 1.5542678 -5.5271683 -5.9384327 1.723204 -5.502192 
		-5.8798542 1.8921403 -5.4772153 -5.7384329 1.9621159 -5.4668698 -5.5970116 1.8921403 
		-5.4772153 -5.5384331 1.723204 -5.502192 -5.5970116 8.5186901 -6.5568261 -5.7384329 
		8.4487152 -6.5671721 -5.8798542 8.5186901 -6.5568261 -5.9384327 8.6876278 -6.5318499 
		-5.8798542 8.8565626 -6.5068731 -5.7384329 8.9265404 -6.4965277 -5.5970116 8.8565626 
		-6.5068731 -5.5384331 8.6876278 -6.5318499 -5.7384329 1.723204 -5.502192 -5.7384329 
		8.6876278 -6.5318499;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface216" -p "polySurface140";
createNode mesh -n "polySurfaceShape219" -p "polySurface216";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape381" -p "polySurface216";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.38017911 0.8527379 
		0.37830633 0.85181129 0.37830633 0.75958633 0.38017911 0.76051295 0.37643361 0.8527379 
		0.37643361 0.76051295 0.37565789 0.8549751 0.37565789 0.76275003 0.036166657 0.56839043 
		0.036942367 0.56615329 0.036942367 0.65837824 0.036166657 0.66061538 0.038815107 
		0.56522667 0.038815107 0.65745163 0.040687863 0.56615329 0.040687863 0.65837824 0.041463573 
		0.56839043 0.041463573 0.66061538 0.38095477 0.8549751 0.38095477 0.76275003 0.37830633 
		0.8549751 0.37643361 0.85721213 0.37830633 0.85813874 0.38017911 0.85721213 0.040687863 
		0.66285247 0.038815107 0.66377908 0.038815107 0.66061538 0.036942367 0.66285247;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -5.0574436 -5.7384329 
		1.9621159 -5.0677891 -5.8798542 1.8921403 -5.0574436 -5.9384327 1.723204 -5.0324669 
		-5.8798542 1.5542678 -5.0074906 -5.7384329 1.4842919 -4.9971452 -5.5970116 1.5542678 
		-5.0074906 -5.5384331 1.723204 -5.0324669 -5.5970116 8.8565626 -4.0277858 -5.7384329 
		8.9265404 -4.0381312 -5.8798542 8.8565626 -4.0277858 -5.9384327 8.6876278 -4.0028095 
		-5.8798542 8.5186901 -3.9778328 -5.7384329 8.4487152 -3.9674873 -5.5970116 8.5186901 
		-3.9778328 -5.5384331 8.6876278 -4.0028095 -5.7384329 1.723204 -5.0324669 -5.7384329 
		8.6876278 -4.0028095;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface217" -p "polySurface140";
createNode mesh -n "polySurfaceShape220" -p "polySurface217";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape382" -p "polySurface217";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.36905146 0.85721213 
		0.36717868 0.85813874 0.36717868 0.76591378 0.36905146 0.76498723 0.36530593 0.85721213 
		0.36530593 0.76498723 0.36453024 0.8549751 0.36453024 0.76275003 0.025039032 0.56839037 
		0.025814744 0.57062745 0.025814744 0.66285235 0.025039032 0.66061532 0.027687483 
		0.57155406 0.027687483 0.66377902 0.029560236 0.57062745 0.029560236 0.66285235 0.030335948 
		0.56839037 0.030335948 0.66061532 0.36982712 0.8549751 0.36982712 0.76275003 0.027687483 
		0.56522661 0.029560236 0.56615323 0.027687483 0.56839037 0.025814744 0.56615323 0.36717868 
		0.76275003 0.36530593 0.76051295 0.36717868 0.75958633 0.36905146 0.76051295;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -2.9058721 -5.7384329 
		1.4842919 -2.9162176 -5.8798542 1.5542678 -2.9058721 -5.9384327 1.723204 -2.8808954 
		-5.8798542 1.8921403 -2.8559191 -5.7384329 1.9621159 -2.8455734 -5.5970116 1.8921403 
		-2.8559191 -5.5384331 1.723204 -2.8808954 -5.5970116 8.5186901 -3.9355297 -5.7384329 
		8.4487152 -3.9458754 -5.8798542 8.5186901 -3.9355297 -5.9384327 8.6876278 -3.9105535 
		-5.8798542 8.8565626 -3.8855767 -5.7384329 8.9265404 -3.8752313 -5.5970116 8.8565626 
		-3.8855767 -5.5384331 8.6876278 -3.9105535 -5.7384329 1.723204 -2.8808954 -5.7384329 
		8.6876278 -3.9105535;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface218" -p "polySurface140";
createNode mesh -n "polySurfaceShape221" -p "polySurface218";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape383" -p "polySurface218";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.35792378 0.8527379 
		0.35605103 0.85181129 0.35605103 0.75958633 0.35792378 0.76051295 0.35417828 0.8527379 
		0.35417828 0.76051295 0.35340255 0.8549751 0.35340255 0.76275003 0.013911407 0.56839037 
		0.014687118 0.56615323 0.014687118 0.65837818 0.013911407 0.66061532 0.016559856 
		0.56522661 0.016559856 0.65745157 0.018432612 0.56615323 0.018432612 0.65837818 0.019208323 
		0.56839037 0.019208323 0.66061532 0.35869947 0.8549751 0.35869947 0.76275003 0.35605103 
		0.8549751 0.35417828 0.85721213 0.35605103 0.85813874 0.35792378 0.85721213 0.018432612 
		0.66285235 0.016559856 0.66377902 0.016559856 0.66061532 0.014687118 0.66285235;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 -2.6552334 -5.7384329 
		1.9621159 -2.6655788 -5.8798542 1.8921403 -2.6552334 -5.9384327 1.723204 -2.6302567 
		-5.8798542 1.5542678 -2.6052804 -5.7384329 1.4842919 -2.5949347 -5.5970116 1.5542678 
		-2.6052804 -5.5384331 1.723204 -2.6302567 -5.5970116 8.8565626 -1.6255753 -5.7384329 
		8.9265404 -1.635921 -5.8798542 8.8565626 -1.6255753 -5.9384327 8.6876278 -1.6005991 
		-5.8798542 8.5186901 -1.5756226 -5.7384329 8.4487152 -1.5652771 -5.5970116 8.5186901 
		-1.5756226 -5.5384331 8.6876278 -1.6005991 -5.7384329 1.723204 -2.6302567 -5.7384329 
		8.6876278 -1.6005991;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface219" -p "polySurface140";
createNode mesh -n "polySurfaceShape222" -p "polySurface219";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape384" -p "polySurface219";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.34679613 0.85721213 
		0.34492335 0.85813874 0.34492335 0.76591378 0.34679613 0.76498723 0.34305063 0.85721213 
		0.34305063 0.76498723 0.3422749 0.8549751 0.3422749 0.76275003 0.0027837818 0.56839037 
		0.0035594935 0.57062745 0.0035594935 0.66285235 0.0027837818 0.66061532 0.0054322318 
		0.57155406 0.0054322318 0.66377902 0.0073049869 0.57062745 0.0073049869 0.66285235 
		0.0080806985 0.56839037 0.0080806985 0.66061532 0.34757182 0.8549751 0.34757182 0.76275003 
		0.0054322318 0.56522661 0.0073049869 0.56615323 0.0054322318 0.56839037 0.0035594935 
		0.56615323 0.34492335 0.76275003 0.34305063 0.76051295 0.34492335 0.75958633 0.34679613 
		0.76051295;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 -0.50366163 -5.7384329 
		1.4842919 -0.51400709 -5.8798542 1.5542678 -0.50366163 -5.9384327 1.723204 -0.47868538 
		-5.8798542 1.8921403 -0.45370865 -5.7384329 1.9621159 -0.44336319 -5.5970116 1.8921403 
		-0.45370865 -5.5384331 1.723204 -0.47868538 -5.5970116 8.5186901 -1.5333195 -5.7384329 
		8.4487152 -1.5436649 -5.8798542 8.5186901 -1.5333195 -5.9384327 8.6876278 -1.508343 
		-5.8798542 8.8565626 -1.4833667 -5.7384329 8.9265404 -1.4730208 -5.5970116 8.8565626 
		-1.4833667 -5.5384331 8.6876278 -1.508343 -5.7384329 1.723204 -0.47868538 -5.7384329 
		8.6876278 -1.508343;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface220" -p "polySurface140";
createNode mesh -n "polySurfaceShape223" -p "polySurface220";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape385" -p "polySurface220";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.33566844 0.8527379 
		0.3337957 0.85181129 0.3337957 0.75958633 0.33566844 0.76051295 0.33192295 0.8527379 
		0.33192295 0.76051295 0.33114725 0.8549751 0.33114725 0.76275003 0.0018931457 0.67073613 
		0.0026688573 0.66849899 0.0026688573 0.76072395 0.0018931457 0.76296115 0.0045415959 
		0.66757238 0.0045415959 0.75979733 0.0064143511 0.66849899 0.0064143511 0.76072395 
		0.0071900627 0.67073613 0.0071900627 0.76296115 0.33644414 0.8549751 0.33644414 0.76275003 
		0.3337957 0.8549751 0.33192295 0.85721213 0.3337957 0.85813874 0.33566844 0.85721213 
		0.0064143511 0.76519823 0.0045415959 0.76612478 0.0045415959 0.76296115 0.0026688573 
		0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 0.56674337 -5.7384329 
		1.9621159 0.55639791 -5.8798542 1.8921403 0.56674337 -5.9384327 1.723204 0.5917201 
		-5.8798542 1.5542678 0.61669683 -5.7384329 1.4842919 0.62704182 -5.5970116 1.5542678 
		0.61669683 -5.5384331 1.723204 0.5917201 -5.5970116 8.8565626 1.5964015 -5.7384329 
		8.9265404 1.5860558 -5.8798542 8.8565626 1.5964015 -5.9384327 8.6876278 1.6213777 
		-5.8798542 8.5186901 1.6463544 -5.7384329 8.4487152 1.6566999 -5.5970116 8.5186901 
		1.6463544 -5.5384331 8.6876278 1.6213777 -5.7384329 1.723204 0.5917201 -5.7384329 
		8.6876278 1.6213777;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface221" -p "polySurface140";
createNode mesh -n "polySurfaceShape224" -p "polySurface221";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape386" -p "polySurface221";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.32454079 0.85721231 
		0.32266805 0.85813886 0.32266805 0.76591396 0.32454079 0.76498735 0.3207953 0.85721231 
		0.3207953 0.76498735 0.3200196 0.85497522 0.3200196 0.76275015 0.013191565 0.67073613 
		0.013967277 0.67297328 0.013967277 0.76519823 0.013191565 0.76296115 0.015840014 
		0.67389989 0.015840014 0.76612478 0.01771277 0.67297328 0.01771277 0.76519823 0.018488482 
		0.67073613 0.018488482 0.76296115 0.32531649 0.85497522 0.32531649 0.76275015 0.015840014 
		0.66757238 0.01771277 0.66849899 0.015840014 0.67073613 0.013967277 0.66849899 0.32266805 
		0.76275015 0.3207953 0.76051307 0.32266805 0.75958645 0.32454079 0.76051307;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 2.7183151 -5.7384329 
		1.4842919 2.7079694 -5.8798542 1.5542678 2.7183151 -5.9384327 1.723204 2.7432914 
		-5.8798542 1.8921403 2.7682679 -5.7384329 1.9621159 2.7786133 -5.5970116 1.8921403 
		2.7682679 -5.5384331 1.723204 2.7432914 -5.5970116 8.5186901 1.688657 -5.7384329 
		8.4487152 1.6783116 -5.8798542 8.5186901 1.688657 -5.9384327 8.6876278 1.7136338 
		-5.8798542 8.8565626 1.73861 -5.7384329 8.9265404 1.7489557 -5.5970116 8.8565626 
		1.73861 -5.5384331 8.6876278 1.7136338 -5.7384329 1.723204 2.7432914 -5.7384329 8.6876278 
		1.7136338;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface222" -p "polySurface140";
createNode mesh -n "polySurfaceShape225" -p "polySurface222";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape387" -p "polySurface222";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31341311 0.85273802 
		0.3115404 0.85181141 0.3115404 0.75958645 0.31341311 0.76051307 0.30966765 0.85273802 
		0.30966765 0.76051307 0.30889192 0.85497522 0.30889192 0.76275015 0.026156949 0.67073613 
		0.02693266 0.66849899 0.02693266 0.76072395 0.026156949 0.76296115 0.028805399 0.66757238 
		0.028805399 0.75979733 0.030678155 0.66849899 0.030678155 0.76072395 0.031453867 
		0.67073613 0.031453867 0.76296115 0.31418884 0.85497522 0.31418884 0.76275015 0.3115404 
		0.85497522 0.30966765 0.85721231 0.3115404 0.85813886 0.31341311 0.85721231 0.030678155 
		0.76519823 0.028805399 0.76612478 0.028805399 0.76296115 0.02693266 0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 2.9689538 -5.7384329 
		1.9621159 2.9586082 -5.8798542 1.8921403 2.9689538 -5.9384327 1.723204 2.9939301 
		-5.8798542 1.5542678 3.0189066 -5.7384329 1.4842919 3.0292521 -5.5970116 1.5542678 
		3.0189066 -5.5384331 1.723204 2.9939301 -5.5970116 8.8565626 3.9986115 -5.7384329 
		8.9265404 3.988266 -5.8798542 8.8565626 3.9986115 -5.9384327 8.6876278 4.0235882 
		-5.8798542 8.5186901 4.0485644 -5.7384329 8.4487152 4.0589099 -5.5970116 8.5186901 
		4.0485644 -5.5384331 8.6876278 4.0235882 -5.7384329 1.723204 2.9939301 -5.7384329 
		8.6876278 4.0235882;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface223" -p "polySurface140";
createNode mesh -n "polySurfaceShape226" -p "polySurface223";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape388" -p "polySurface223";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.30228546 0.85721231 
		0.30041271 0.85813886 0.30041271 0.76591396 0.30228546 0.76498735 0.29854 0.85721231 
		0.29854 0.76498735 0.29776427 0.85497522 0.29776427 0.76275015 0.039122351 0.67073613 
		0.03989806 0.67297328 0.03989806 0.76519823 0.039122351 0.76296115 0.041770801 0.67389989 
		0.041770801 0.76612478 0.043643557 0.67297328 0.043643557 0.76519823 0.044419266 
		0.67073613 0.044419266 0.76296115 0.30306119 0.85497522 0.30306119 0.76275015 0.041770801 
		0.66757238 0.043643557 0.66849899 0.041770801 0.67073613 0.03989806 0.66849899 0.30041271 
		0.76275015 0.29854 0.76051307 0.30041271 0.75958645 0.30228546 0.76051307;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 5.1205254 -5.7384329 
		1.4842919 5.1101799 -5.8798542 1.5542678 5.1205254 -5.9384327 1.723204 5.1455016 
		-5.8798542 1.8921403 5.1704783 -5.7384329 1.9621159 5.1808238 -5.5970116 1.8921403 
		5.1704783 -5.5384331 1.723204 5.1455016 -5.5970116 8.5186901 4.0908675 -5.7384329 
		8.4487152 4.0805216 -5.8798542 8.5186901 4.0908675 -5.9384327 8.6876278 4.1158438 
		-5.8798542 8.8565626 4.1408205 -5.7384329 8.9265404 4.151166 -5.5970116 8.8565626 
		4.1408205 -5.5384331 8.6876278 4.1158438 -5.7384329 1.723204 5.1455016 -5.7384329 
		8.6876278 4.1158438;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface224" -p "polySurface140";
createNode mesh -n "polySurfaceShape227" -p "polySurface224";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape389" -p "polySurface224";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.29115781 0.85273802 
		0.28928506 0.85181141 0.28928506 0.75958645 0.29115781 0.76051307 0.28741232 0.85273802 
		0.28741232 0.76051307 0.28663662 0.85497522 0.28663662 0.76275015 0.052087735 0.67073613 
		0.052863445 0.66849899 0.052863445 0.76072395 0.052087735 0.76296115 0.054736186 
		0.66757238 0.054736186 0.75979733 0.056608938 0.66849899 0.056608938 0.76072395 0.057384651 
		0.67073613 0.057384651 0.76296115 0.29193351 0.85497522 0.29193351 0.76275015 0.28928506 
		0.85497522 0.28741232 0.85721231 0.28928506 0.85813886 0.29115781 0.85721231 0.056608938 
		0.76519823 0.054736186 0.76612478 0.054736186 0.76296115 0.052863445 0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 5.59025 -5.7384329 
		1.9621159 5.5799046 -5.8798542 1.8921403 5.59025 -5.9384327 1.723204 5.6152267 -5.8798542 
		1.5542678 5.640203 -5.7384329 1.4842919 5.6505485 -5.5970116 1.5542678 5.640203 -5.5384331 
		1.723204 5.6152267 -5.5970116 8.8565626 6.6199079 -5.7384329 8.9265404 6.6095624 
		-5.8798542 8.8565626 6.6199079 -5.9384327 8.6876278 6.6448841 -5.8798542 8.5186901 
		6.6698608 -5.7384329 8.4487152 6.6802063 -5.5970116 8.5186901 6.6698608 -5.5384331 
		8.6876278 6.6448841 -5.7384329 1.723204 5.6152267 -5.7384329 8.6876278 6.6448841;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface225" -p "polySurface140";
createNode mesh -n "polySurfaceShape228" -p "polySurface225";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape390" -p "polySurface225";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.28003019 0.85721213 
		0.27815741 0.85813874 0.27815741 0.76591378 0.28003019 0.76498723 0.27628466 0.85721213 
		0.27628466 0.76498723 0.27550897 0.8549751 0.27550897 0.76275003 0.065053113 0.67073613 
		0.065828823 0.67297328 0.065828823 0.76519823 0.065053113 0.76296115 0.067701563 
		0.67389989 0.067701563 0.76612478 0.069574319 0.67297328 0.069574319 0.76519823 0.070350029 
		0.67073613 0.070350029 0.76296115 0.28080589 0.8549751 0.28080589 0.76275003 0.067701563 
		0.66757238 0.069574319 0.66849899 0.067701563 0.67073613 0.065828823 0.66849899 0.27815741 
		0.76275003 0.27628466 0.76051295 0.27815741 0.75958633 0.28003019 0.76051295;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 7.7418213 -5.7384329 
		1.4842919 7.7314758 -5.8798542 1.5542678 7.7418213 -5.9384327 1.723204 7.766798 -5.8798542 
		1.8921403 7.7917747 -5.7384329 1.9621159 7.8021202 -5.5970116 1.8921403 7.7917747 
		-5.5384331 1.723204 7.766798 -5.5970116 8.5186901 6.7121639 -5.7384329 8.4487152 
		6.7018185 -5.8798542 8.5186901 6.7121639 -5.9384327 8.6876278 6.7371402 -5.8798542 
		8.8565626 6.7621169 -5.7384329 8.9265404 6.7724624 -5.5970116 8.8565626 6.7621169 
		-5.5384331 8.6876278 6.7371402 -5.7384329 1.723204 7.766798 -5.7384329 8.6876278 
		6.7371402;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface226" -p "polySurface140";
createNode mesh -n "polySurfaceShape229" -p "polySurface226";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape391" -p "polySurface226";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.26890257 0.8527379 
		0.26702979 0.85181129 0.26702979 0.75958633 0.26890257 0.76051295 0.26515707 0.8527379 
		0.26515707 0.76051295 0.26438135 0.8549751 0.26438135 0.76275003 0.078018501 0.67073613 
		0.078794211 0.66849899 0.078794211 0.76072395 0.078018501 0.76296115 0.080666952 
		0.66757238 0.080666952 0.75979733 0.082539707 0.66849899 0.082539707 0.76072395 0.083315417 
		0.67073613 0.083315417 0.76296115 0.26967826 0.8549751 0.26967826 0.76275003 0.26702979 
		0.8549751 0.26515707 0.85721213 0.26702979 0.85813874 0.26890257 0.85721213 0.082539707 
		0.76519823 0.080666952 0.76612478 0.080666952 0.76296115 0.078794211 0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 7.9924603 -5.7384329 
		1.9621159 7.9821148 -5.8798542 1.8921403 7.9924603 -5.9384327 1.723204 8.017437 -5.8798542 
		1.5542678 8.0424137 -5.7384329 1.4842919 8.0527592 -5.5970116 1.5542678 8.0424137 
		-5.5384331 1.723204 8.017437 -5.5970116 8.8565626 9.0221186 -5.7384329 8.9265404 
		9.0117722 -5.8798542 8.8565626 9.0221186 -5.9384327 8.6876278 9.0470943 -5.8798542 
		8.5186901 9.0720711 -5.7384329 8.4487152 9.0824165 -5.5970116 8.5186901 9.0720711 
		-5.5384331 8.6876278 9.0470943 -5.7384329 1.723204 8.017437 -5.7384329 8.6876278 
		9.0470943;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface227" -p "polySurface140";
createNode mesh -n "polySurfaceShape230" -p "polySurface227";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape392" -p "polySurface227";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.25777492 0.85721213 
		0.25590217 0.85813874 0.25590217 0.76591378 0.25777492 0.76498723 0.25402945 0.85721213 
		0.25402945 0.76498723 0.25325373 0.8549751 0.25325373 0.76275003 0.090983897 0.67073613 
		0.091759607 0.67297328 0.091759607 0.76519823 0.090983897 0.76296115 0.093632348 
		0.67389989 0.093632348 0.76612478 0.095505103 0.67297328 0.095505103 0.76519823 0.096280813 
		0.67073613 0.096280813 0.76296115 0.25855064 0.8549751 0.25855064 0.76275003 0.093632348 
		0.66757238 0.095505103 0.66849899 0.093632348 0.67073613 0.091759607 0.66849899 0.25590217 
		0.76275003 0.25402945 0.76051295 0.25590217 0.75958633 0.25777492 0.76051295;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 10.144032 -5.7384329 
		1.4842919 10.133686 -5.8798542 1.5542678 10.144032 -5.9384327 1.723204 10.169008 
		-5.8798542 1.8921403 10.193985 -5.7384329 1.9621159 10.20433 -5.5970116 1.8921403 
		10.193985 -5.5384331 1.723204 10.169008 -5.5970116 8.5186901 9.1143742 -5.7384329 
		8.4487152 9.1040287 -5.8798542 8.5186901 9.1143742 -5.9384327 8.6876278 9.1393509 
		-5.8798542 8.8565626 9.1643267 -5.7384329 8.9265404 9.1746731 -5.5970116 8.8565626 
		9.1643267 -5.5384331 8.6876278 9.1393509 -5.7384329 1.723204 10.169008 -5.7384329 
		8.6876278 9.1393509;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface228" -p "polySurface140";
createNode mesh -n "polySurfaceShape231" -p "polySurface228";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape393" -p "polySurface228";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.24664731 0.8527379 
		0.24477455 0.85181129 0.24477455 0.75958633 0.24664731 0.76051295 0.24290182 0.8527379 
		0.24290182 0.76051295 0.24212611 0.8549751 0.24212611 0.76275003 0.10394929 0.67073613 
		0.104725 0.66849899 0.104725 0.76072395 0.10394929 0.76296115 0.10659774 0.66757238 
		0.10659774 0.75979733 0.10847049 0.66849899 0.10847049 0.76072395 0.1092462 0.67073613 
		0.1092462 0.76296115 0.24742302 0.8549751 0.24742302 0.76275003 0.24477455 0.8549751 
		0.24290182 0.85721213 0.24477455 0.85813874 0.24664731 0.85721213 0.10847049 0.76519823 
		0.10659774 0.76612478 0.10659774 0.76296115 0.104725 0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 10.410374 -5.7384329 
		1.9621159 10.400028 -5.8798542 1.8921403 10.410374 -5.9384327 1.723204 10.43535 -5.8798542 
		1.5542678 10.460327 -5.7384329 1.4842919 10.470672 -5.5970116 1.5542678 10.460327 
		-5.5384331 1.723204 10.43535 -5.5970116 8.8565626 11.440031 -5.7384329 8.9265404 
		11.429686 -5.8798542 8.8565626 11.440031 -5.9384327 8.6876278 11.465008 -5.8798542 
		8.5186901 11.489985 -5.7384329 8.4487152 11.50033 -5.5970116 8.5186901 11.489985 
		-5.5384331 8.6876278 11.465008 -5.7384329 1.723204 10.43535 -5.7384329 8.6876278 
		11.465008;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface229" -p "polySurface140";
createNode mesh -n "polySurfaceShape232" -p "polySurface229";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape394" -p "polySurface229";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.23551968 0.85721231 
		0.23364693 0.85813886 0.23364693 0.76591396 0.23551968 0.76498735 0.2317742 0.85721231 
		0.2317742 0.76498735 0.23099847 0.85497522 0.23099847 0.76275015 0.11691468 0.67073613 
		0.11769039 0.67297328 0.11769039 0.76519823 0.11691468 0.76296115 0.11956313 0.67389989 
		0.11956313 0.76612478 0.12143589 0.67297328 0.12143589 0.76519823 0.1222116 0.67073613 
		0.1222116 0.76296115 0.23629539 0.85497522 0.23629539 0.76275015 0.11956313 0.66757238 
		0.12143589 0.66849899 0.11956313 0.67073613 0.11769039 0.66849899 0.23364693 0.76275015 
		0.2317742 0.76051307 0.23364693 0.75958645 0.23551968 0.76051307;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 12.561945 -5.7384329 
		1.4842919 12.5516 -5.8798542 1.5542678 12.561945 -5.9384327 1.723204 12.586922 -5.8798542 
		1.8921403 12.611897 -5.7384329 1.9621159 12.622243 -5.5970116 1.8921403 12.611897 
		-5.5384331 1.723204 12.586922 -5.5970116 8.5186901 11.532287 -5.7384329 8.4487152 
		11.521941 -5.8798542 8.5186901 11.532287 -5.9384327 8.6876278 11.557263 -5.8798542 
		8.8565626 11.58224 -5.7384329 8.9265404 11.592586 -5.5970116 8.8565626 11.58224 -5.5384331 
		8.6876278 11.557263 -5.7384329 1.723204 12.586922 -5.7384329 8.6876278 11.557263;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface230" -p "polySurface140";
createNode mesh -n "polySurfaceShape233" -p "polySurface230";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape395" -p "polySurface230";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.22439206 0.85273802 
		0.22251931 0.85181141 0.22251931 0.75958645 0.22439206 0.76051307 0.22064656 0.85273802 
		0.22064656 0.76051307 0.21987085 0.85497522 0.21987085 0.76275015 0.12988007 0.67073613 
		0.13065578 0.66849899 0.13065578 0.76072395 0.12988007 0.76296115 0.13252853 0.66757238 
		0.13252853 0.75979733 0.13440128 0.66849899 0.13440128 0.76072395 0.13517699 0.67073613 
		0.13517699 0.76296115 0.22516777 0.85497522 0.22516777 0.76275015 0.22251931 0.85497522 
		0.22064656 0.85721231 0.22251931 0.85813886 0.22439206 0.85721231 0.13440128 0.76519823 
		0.13252853 0.76612478 0.13252853 0.76296115 0.13065578 0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 12.812584 -5.7384329 
		1.9621159 12.802238 -5.8798542 1.8921403 12.812584 -5.9384327 1.723204 12.83756 -5.8798542 
		1.5542678 12.862536 -5.7384329 1.4842919 12.872882 -5.5970116 1.5542678 12.862536 
		-5.5384331 1.723204 12.83756 -5.5970116 8.8565626 13.842241 -5.7384329 8.9265404 
		13.831896 -5.8798542 8.8565626 13.842241 -5.9384327 8.6876278 13.867218 -5.8798542 
		8.5186901 13.892194 -5.7384329 8.4487152 13.90254 -5.5970116 8.5186901 13.892194 
		-5.5384331 8.6876278 13.867218 -5.7384329 1.723204 12.83756 -5.7384329 8.6876278 
		13.867218;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface231" -p "polySurface140";
createNode mesh -n "polySurfaceShape234" -p "polySurface231";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape396" -p "polySurface231";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.21326444 0.867544 
		0.21139167 0.86847061 0.21139167 0.77624565 0.21326444 0.77531904 0.20951894 0.867544 
		0.20951894 0.77531904 0.20874323 0.86530691 0.20874323 0.77308184 0.14284547 0.67073613 
		0.14362119 0.67297328 0.14362119 0.76519823 0.14284547 0.76296115 0.14549392 0.67389989 
		0.14549392 0.76612478 0.14736667 0.67297328 0.14736667 0.76519823 0.14814238 0.67073613 
		0.14814238 0.76296115 0.21404015 0.86530691 0.21404015 0.77308184 0.14549392 0.66757238 
		0.14736667 0.66849899 0.14549392 0.67073613 0.14362119 0.66849899 0.21139167 0.77308184 
		0.20951894 0.77084476 0.21139167 0.7699182 0.21326444 0.77084476;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 14.964155 -5.7384329 
		1.4842919 14.95381 -5.8798542 1.5542678 14.964155 -5.9384327 1.723204 14.989132 -5.8798542 
		1.8921403 15.014108 -5.7384329 1.9621159 15.024453 -5.5970116 1.8921403 15.014108 
		-5.5384331 1.723204 14.989132 -5.5970116 8.5186901 13.934498 -5.7384329 8.4487152 
		13.924151 -5.8798542 8.5186901 13.934498 -5.9384327 8.6876278 13.959474 -5.8798542 
		8.8565626 13.98445 -5.7384329 8.9265404 13.994796 -5.5970116 8.8565626 13.98445 -5.5384331 
		8.6876278 13.959474 -5.7384329 1.723204 14.989132 -5.7384329 8.6876278 13.959474;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface232" -p "polySurface140";
createNode mesh -n "polySurfaceShape235" -p "polySurface232";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape397" -p "polySurface232";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.20213681 0.86306971 
		0.20026405 0.8621431 0.20026405 0.7699182 0.20213681 0.77084476 0.19839132 0.86306971 
		0.19839132 0.77084476 0.19761561 0.86530691 0.19761561 0.77308184 0.15581086 0.67073613 
		0.15658657 0.66849899 0.15658657 0.76072395 0.15581086 0.76296115 0.15845931 0.66757238 
		0.15845931 0.75979733 0.16033207 0.66849899 0.16033207 0.76072395 0.16110778 0.67073613 
		0.16110778 0.76296115 0.20291252 0.86530691 0.20291252 0.77308184 0.20026405 0.86530691 
		0.19839132 0.867544 0.20026405 0.86847061 0.20213681 0.867544 0.16033207 0.76519823 
		0.15845931 0.76612478 0.15845931 0.76296115 0.15658657 0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 15.43388 -5.7384329 
		1.9621159 15.423534 -5.8798542 1.8921403 15.43388 -5.9384327 1.723204 15.458857 -5.8798542 
		1.5542678 15.483833 -5.7384329 1.4842919 15.494179 -5.5970116 1.5542678 15.483833 
		-5.5384331 1.723204 15.458857 -5.5970116 8.8565626 16.463537 -5.7384329 8.9265404 
		16.453192 -5.8798542 8.8565626 16.463537 -5.9384327 8.6876278 16.488514 -5.8798542 
		8.5186901 16.513491 -5.7384329 8.4487152 16.523836 -5.5970116 8.5186901 16.513491 
		-5.5384331 8.6876278 16.488514 -5.7384329 1.723204 15.458857 -5.7384329 8.6876278 
		16.488514;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface233" -p "polySurface140";
createNode mesh -n "polySurfaceShape236" -p "polySurface233";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape398" -p "polySurface233";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.19100918 0.867544 
		0.18913643 0.86847061 0.18913643 0.77624565 0.19100918 0.77531904 0.18726368 0.867544 
		0.18726368 0.77531904 0.18648797 0.86530691 0.18648797 0.77308184 0.16877626 0.67073613 
		0.16955197 0.67297328 0.16955197 0.76519823 0.16877626 0.76296115 0.1714247 0.67389989 
		0.1714247 0.76612478 0.17329746 0.67297328 0.17329746 0.76519823 0.17407317 0.67073613 
		0.17407317 0.76296115 0.19178489 0.86530691 0.19178489 0.77308184 0.1714247 0.66757238 
		0.17329746 0.66849899 0.1714247 0.67073613 0.16955197 0.66849899 0.18913643 0.77308184 
		0.18726368 0.77084476 0.18913643 0.7699182 0.19100918 0.77084476;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 17.585451 -5.7384329 
		1.4842919 17.575106 -5.8798542 1.5542678 17.585451 -5.9384327 1.723204 17.610428 
		-5.8798542 1.8921403 17.635405 -5.7384329 1.9621159 17.64575 -5.5970116 1.8921403 
		17.635405 -5.5384331 1.723204 17.610428 -5.5970116 8.5186901 16.555794 -5.7384329 
		8.4487152 16.545448 -5.8798542 8.5186901 16.555794 -5.9384327 8.6876278 16.58077 
		-5.8798542 8.8565626 16.605747 -5.7384329 8.9265404 16.616093 -5.5970116 8.8565626 
		16.605747 -5.5384331 8.6876278 16.58077 -5.7384329 1.723204 17.610428 -5.7384329 
		8.6876278 16.58077;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface234" -p "polySurface140";
createNode mesh -n "polySurfaceShape237" -p "polySurface234";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape399" -p "polySurface234";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.17988156 0.86306971 
		0.17800881 0.8621431 0.17800881 0.7699182 0.17988156 0.77084476 0.17613606 0.86306971 
		0.17613606 0.77084476 0.17536035 0.86530691 0.17536035 0.77308184 0.18174164 0.67073613 
		0.18251735 0.66849899 0.18251735 0.76072395 0.18174164 0.76296115 0.1843901 0.66757238 
		0.1843901 0.75979733 0.18626285 0.66849899 0.18626285 0.76072395 0.18703856 0.67073613 
		0.18703856 0.76296115 0.18065727 0.86530691 0.18065727 0.77308184 0.17800881 0.86530691 
		0.17613606 0.867544 0.17800881 0.86847061 0.17988156 0.867544 0.18626285 0.76519823 
		0.1843901 0.76612478 0.1843901 0.76296115 0.18251735 0.76519823;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.8921403 17.83609 -5.7384329 
		1.9621159 17.825745 -5.8798542 1.8921403 17.83609 -5.9384327 1.723204 17.861067 -5.8798542 
		1.5542678 17.886044 -5.7384329 1.4842919 17.896389 -5.5970116 1.5542678 17.886044 
		-5.5384331 1.723204 17.861067 -5.5970116 8.8565626 18.865747 -5.7384329 8.9265404 
		18.855402 -5.8798542 8.8565626 18.865747 -5.9384327 8.6876278 18.890724 -5.8798542 
		8.5186901 18.915701 -5.7384329 8.4487152 18.926046 -5.5970116 8.5186901 18.915701 
		-5.5384331 8.6876278 18.890724 -5.7384329 1.723204 17.861067 -5.7384329 8.6876278 
		18.890724;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface235" -p "polySurface140";
createNode mesh -n "polySurfaceShape238" -p "polySurface235";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape400" -p "polySurface235";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.16875394 0.867544 
		0.16688117 0.86847061 0.16688117 0.77624565 0.16875394 0.77531904 0.16500844 0.867544 
		0.16500844 0.77531904 0.16423273 0.86530691 0.16423273 0.77308184 0.19470704 0.67073613 
		0.19548276 0.67297328 0.19548276 0.76519823 0.19470704 0.76296115 0.19735549 0.67389989 
		0.19735549 0.76612478 0.19922824 0.67297328 0.19922824 0.76519823 0.20000397 0.67073613 
		0.20000397 0.76296115 0.16952965 0.86530691 0.16952965 0.77308184 0.19735549 0.66757238 
		0.19922824 0.66849899 0.19735549 0.67073613 0.19548276 0.66849899 0.16688117 0.77308184 
		0.16500844 0.77084476 0.16688117 0.7699182 0.16875394 0.77084476;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  -5.5970116 1.5542678 19.987661 -5.7384329 
		1.4842919 19.977316 -5.8798542 1.5542678 19.987661 -5.9384327 1.723204 20.012638 
		-5.8798542 1.8921403 20.037615 -5.7384329 1.9621159 20.04796 -5.5970116 1.8921403 
		20.037615 -5.5384331 1.723204 20.012638 -5.5970116 8.5186901 18.958004 -5.7384329 
		8.4487152 18.947659 -5.8798542 8.5186901 18.958004 -5.9384327 8.6876278 18.982981 
		-5.8798542 8.8565626 19.007957 -5.7384329 8.9265404 19.018303 -5.5970116 8.8565626 
		19.007957 -5.5384331 8.6876278 18.982981 -5.7384329 1.723204 20.012638 -5.7384329 
		8.6876278 18.982981;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface236" -p "polySurface140";
createNode mesh -n "polySurfaceShape239" -p "polySurface236";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape401" -p "polySurface236";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.21219361 0.76072401 
		0.21032088 0.75979733 0.21032088 0.66757238 0.21219361 0.66849905 0.20844814 0.76072401 
		0.20844814 0.66849905 0.20767243 0.76296115 0.20767243 0.67073613 0.15310512 0.77308184 
		0.15388083 0.77084476 0.15388083 0.86306971 0.15310512 0.86530679 0.15575357 0.7699182 
		0.15575357 0.8621431 0.1576263 0.77084476 0.1576263 0.86306971 0.15840203 0.77308184 
		0.15840203 0.86530679 0.21296933 0.76296115 0.21296933 0.67073613 0.21032088 0.76296115 
		0.20844814 0.76519823 0.21032088 0.76612478 0.21219361 0.76519823 0.1576263 0.867544 
		0.15575357 0.86847061 0.15575357 0.86530679 0.15388083 0.867544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 20.087339 5.6834698 
		8.3426847 20.097685 5.5420485 8.4126606 20.087339 5.48347 8.5815964 20.062363 5.5420485 
		8.7505331 20.037386 5.6834698 8.820509 20.027042 5.8248911 8.7505331 20.037386 5.8834696 
		8.5815964 20.062363 5.8248911 1.4482385 19.057682 5.6834698 1.3782616 19.068027 5.5420485 
		1.4482385 19.057682 5.48347 1.6171738 19.032705 5.5420485 1.7861112 19.007729 5.6834698 
		1.8560861 18.997383 5.8248911 1.7861112 19.007729 5.8834696 1.6171738 19.032705 5.6834698 
		8.5815964 20.062363 5.6834698 1.6171738 19.032705;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface237" -p "polySurface140";
createNode mesh -n "polySurfaceShape240" -p "polySurface237";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape402" -p "polySurface237";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.225159 0.75486648 
		0.22328626 0.75579309 0.22328626 0.66356814 0.225159 0.66264158 0.22141352 0.75486648 
		0.22141352 0.66264158 0.22063781 0.75262946 0.22063781 0.66040444 0.14197752 0.77308184 
		0.14275323 0.77531904 0.14275323 0.867544 0.14197752 0.86530679 0.14462596 0.77624565 
		0.14462596 0.86847061 0.1464987 0.77531904 0.1464987 0.867544 0.1472744 0.77308184 
		0.1472744 0.86530679 0.22593471 0.75262946 0.22593471 0.66040444 0.14462596 0.7699182 
		0.1464987 0.77084476 0.14462596 0.77308184 0.14275323 0.77084476 0.22328626 0.66040444 
		0.22141352 0.65816736 0.22328626 0.65724069 0.225159 0.65816736;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 17.935768 5.6834698 
		8.820509 17.946114 5.5420485 8.7505331 17.935768 5.48347 8.5815964 17.910791 5.5420485 
		8.4126606 17.885815 5.6834698 8.3426847 17.875469 5.8248911 8.4126606 17.885815 5.8834696 
		8.5815964 17.910791 5.8248911 1.7861112 18.965425 5.6834698 1.8560861 18.975771 5.5420485 
		1.7861112 18.965425 5.48347 1.6171738 18.940449 5.5420485 1.4482385 18.915474 5.6834698 
		1.3782616 18.905128 5.8248911 1.4482385 18.915474 5.8834696 1.6171738 18.940449 5.6834698 
		8.5815964 17.910791 5.6834698 1.6171738 18.940449;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface238" -p "polySurface140";
createNode mesh -n "polySurfaceShape241" -p "polySurface238";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape403" -p "polySurface238";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.23812439 0.75039226 
		0.23625165 0.74946564 0.23625165 0.65724063 0.23812439 0.6581673 0.2343789 0.75039226 
		0.2343789 0.6581673 0.23360319 0.75262928 0.23360319 0.66040438 0.1308499 0.77308184 
		0.13162561 0.77084476 0.13162561 0.86306971 0.1308499 0.86530679 0.13349836 0.7699182 
		0.13349836 0.8621431 0.13537109 0.77084476 0.13537109 0.86306971 0.1361468 0.77308184 
		0.1361468 0.86530679 0.2389001 0.75262928 0.2389001 0.66040438 0.23625165 0.75262928 
		0.2343789 0.75486642 0.23625165 0.75579309 0.23812439 0.75486642 0.13537109 0.867544 
		0.13349836 0.86847061 0.13349836 0.86530679 0.13162561 0.867544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 17.685129 5.6834698 
		8.3426847 17.695475 5.5420485 8.4126606 17.685129 5.48347 8.5815964 17.660152 5.5420485 
		8.7505331 17.635178 5.6834698 8.820509 17.624832 5.8248911 8.7505331 17.635178 5.8834696 
		8.5815964 17.660152 5.8248911 1.4482385 16.655472 5.6834698 1.3782616 16.665817 5.5420485 
		1.4482385 16.655472 5.48347 1.6171738 16.630495 5.5420485 1.7861112 16.605518 5.6834698 
		1.8560861 16.595173 5.8248911 1.7861112 16.605518 5.8834696 1.6171738 16.630495 5.6834698 
		8.5815964 17.660152 5.6834698 1.6171738 16.630495;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface239" -p "polySurface140";
createNode mesh -n "polySurfaceShape242" -p "polySurface239";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape404" -p "polySurface239";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.25108981 0.75486642 
		0.24921706 0.75579309 0.24921706 0.66356814 0.25108981 0.66264147 0.24734433 0.75486642 
		0.24734433 0.66264147 0.24656861 0.75262928 0.24656861 0.66040438 0.11972228 0.77308184 
		0.12049799 0.77531904 0.12049799 0.867544 0.11972228 0.86530679 0.12237073 0.77624565 
		0.12237073 0.86847061 0.12424347 0.77531904 0.12424347 0.867544 0.12501918 0.77308184 
		0.12501918 0.86530679 0.25186551 0.75262928 0.25186551 0.66040438 0.12237073 0.7699182 
		0.12424347 0.77084476 0.12237073 0.77308184 0.12049799 0.77084476 0.24921706 0.66040438 
		0.24734433 0.6581673 0.24921706 0.65724063 0.25108981 0.6581673;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 15.533558 5.6834698 
		8.820509 15.543903 5.5420485 8.7505331 15.533558 5.48347 8.5815964 15.508581 5.5420485 
		8.4126606 15.483605 5.6834698 8.3426847 15.47326 5.8248911 8.4126606 15.483605 5.8834696 
		8.5815964 15.508581 5.8248911 1.7861112 16.563215 5.6834698 1.8560861 16.573561 5.5420485 
		1.7861112 16.563215 5.48347 1.6171738 16.538239 5.5420485 1.4482385 16.513264 5.6834698 
		1.3782616 16.502918 5.8248911 1.4482385 16.513264 5.8834696 1.6171738 16.538239 5.6834698 
		8.5815964 15.508581 5.6834698 1.6171738 16.538239;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface240" -p "polySurface140";
createNode mesh -n "polySurfaceShape243" -p "polySurface240";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape405" -p "polySurface240";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.26405519 0.75039226 
		0.26218244 0.74946564 0.26218244 0.65724063 0.26405519 0.6581673 0.2603097 0.75039226 
		0.2603097 0.6581673 0.259534 0.75262928 0.259534 0.66040438 0.10859466 0.77308184 
		0.10937037 0.77084476 0.10937037 0.86306971 0.10859466 0.86530679 0.11124311 0.7699182 
		0.11124311 0.8621431 0.11311584 0.77084476 0.11311584 0.86306971 0.11389156 0.77308184 
		0.11389156 0.86530679 0.26483089 0.75262928 0.26483089 0.66040438 0.26218244 0.75262928 
		0.2603097 0.75486642 0.26218244 0.75579309 0.26405519 0.75486642 0.11311584 0.867544 
		0.11124311 0.86847061 0.11124311 0.86530679 0.10937037 0.867544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 15.063833 5.6834698 
		8.3426847 15.074179 5.5420485 8.4126606 15.063833 5.48347 8.5815964 15.038857 5.5420485 
		8.7505331 15.01388 5.6834698 8.820509 15.003534 5.8248911 8.7505331 15.01388 5.8834696 
		8.5815964 15.038857 5.8248911 1.4482385 14.034175 5.6834698 1.3782616 14.044521 5.5420485 
		1.4482385 14.034175 5.48347 1.6171738 14.009199 5.5420485 1.7861112 13.984222 5.6834698 
		1.8560861 13.973877 5.8248911 1.7861112 13.984222 5.8834696 1.6171738 14.009199 5.6834698 
		8.5815964 15.038857 5.6834698 1.6171738 14.009199;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface241" -p "polySurface140";
createNode mesh -n "polySurfaceShape244" -p "polySurface241";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape406" -p "polySurface241";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.27702057 0.75486642 
		0.27514783 0.75579309 0.27514783 0.66356814 0.27702057 0.66264147 0.27327511 0.75486642 
		0.27327511 0.66264147 0.27249938 0.75262928 0.27249938 0.66040438 0.097467043 0.77308184 
		0.09824276 0.77531904 0.09824276 0.867544 0.097467043 0.86530679 0.10011549 0.77624565 
		0.10011549 0.86847061 0.10198823 0.77531904 0.10198823 0.867544 0.10276394 0.77308184 
		0.10276394 0.86530679 0.27779627 0.75262928 0.27779627 0.66040438 0.10011549 0.7699182 
		0.10198823 0.77084476 0.10011549 0.77308184 0.09824276 0.77084476 0.27514783 0.66040438 
		0.27327511 0.6581673 0.27514783 0.65724063 0.27702057 0.6581673;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 12.912262 5.6834698 
		8.820509 12.922607 5.5420485 8.7505331 12.912262 5.48347 8.5815964 12.887285 5.5420485 
		8.4126606 12.862309 5.6834698 8.3426847 12.851963 5.8248911 8.4126606 12.862309 5.8834696 
		8.5815964 12.887285 5.8248911 1.7861112 13.941919 5.6834698 1.8560861 13.952265 5.5420485 
		1.7861112 13.941919 5.48347 1.6171738 13.916943 5.5420485 1.4482385 13.891967 5.6834698 
		1.3782616 13.881621 5.8248911 1.4482385 13.891967 5.8834696 1.6171738 13.916943 5.6834698 
		8.5815964 12.887285 5.6834698 1.6171738 13.916943;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface242" -p "polySurface140";
createNode mesh -n "polySurfaceShape245" -p "polySurface242";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape407" -p "polySurface242";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.28998598 0.75039232 
		0.28811324 0.74946564 0.28811324 0.65724069 0.28998598 0.65816736 0.28624052 0.75039232 
		0.28624052 0.65816736 0.28546479 0.75262946 0.28546479 0.66040444 0.086339436 0.77308184 
		0.087115146 0.77084476 0.087115146 0.86306971 0.086339436 0.86530679 0.088987887 
		0.7699182 0.088987887 0.8621431 0.090860628 0.77084476 0.090860628 0.86306971 0.091636337 
		0.77308184 0.091636337 0.86530679 0.29076171 0.75262946 0.29076171 0.66040444 0.28811324 
		0.75262946 0.28624052 0.75486648 0.28811324 0.75579309 0.28998598 0.75486648 0.090860628 
		0.867544 0.088987887 0.86847061 0.088987887 0.86530679 0.087115146 0.867544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 12.661623 5.6834698 
		8.3426847 12.671968 5.5420485 8.4126606 12.661623 5.48347 8.5815964 12.636646 5.5420485 
		8.7505331 12.61167 5.6834698 8.820509 12.601324 5.8248911 8.7505331 12.61167 5.8834696 
		8.5815964 12.636646 5.8248911 1.4482385 11.631965 5.6834698 1.3782616 11.642311 5.5420485 
		1.4482385 11.631965 5.48347 1.6171738 11.606989 5.5420485 1.7861112 11.582012 5.6834698 
		1.8560861 11.571667 5.8248911 1.7861112 11.582012 5.8834696 1.6171738 11.606989 5.6834698 
		8.5815964 12.636646 5.6834698 1.6171738 11.606989;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface243" -p "polySurface140";
createNode mesh -n "polySurfaceShape246" -p "polySurface243";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape408" -p "polySurface243";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.30295137 0.75486648 
		0.30107862 0.75579309 0.30107862 0.66356814 0.30295137 0.66264158 0.2992059 0.75486648 
		0.2992059 0.66264158 0.29843017 0.75262946 0.29843017 0.66040444 0.075211816 0.77308184 
		0.075987525 0.77531904 0.075987525 0.867544 0.075211816 0.86530679 0.077860266 0.77624565 
		0.077860266 0.86847061 0.079732999 0.77531904 0.079732999 0.867544 0.080508709 0.77308184 
		0.080508709 0.86530679 0.30372709 0.75262946 0.30372709 0.66040444 0.077860266 0.7699182 
		0.079732999 0.77084476 0.077860266 0.77308184 0.075987525 0.77084476 0.30107862 0.66040444 
		0.2992059 0.65816736 0.30107862 0.65724069 0.30295137 0.65816736;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 10.510052 5.6834698 
		8.820509 10.520397 5.5420485 8.7505331 10.510052 5.48347 8.5815964 10.485075 5.5420485 
		8.4126606 10.460098 5.6834698 8.3426847 10.449753 5.8248911 8.4126606 10.460098 5.8834696 
		8.5815964 10.485075 5.8248911 1.7861112 11.539709 5.6834698 1.8560861 11.550055 5.5420485 
		1.7861112 11.539709 5.48347 1.6171738 11.514732 5.5420485 1.4482385 11.489757 5.6834698 
		1.3782616 11.47941 5.8248911 1.4482385 11.489757 5.8834696 1.6171738 11.514732 5.6834698 
		8.5815964 10.485075 5.6834698 1.6171738 11.514732;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface244" -p "polySurface140";
createNode mesh -n "polySurfaceShape247" -p "polySurface244";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape409" -p "polySurface244";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31591675 0.75039232 
		0.31404403 0.74946564 0.31404403 0.65724069 0.31591675 0.65816736 0.31217128 0.75039232 
		0.31217128 0.65816736 0.31139556 0.75262946 0.31139556 0.66040444 0.064084187 0.77308184 
		0.064859897 0.77084476 0.064859897 0.86306971 0.064084187 0.86530679 0.066732638 
		0.7699182 0.066732638 0.8621431 0.068605378 0.77084476 0.068605378 0.86306971 0.069381088 
		0.77308184 0.069381088 0.86530679 0.31669247 0.75262946 0.31669247 0.66040444 0.31404403 
		0.75262946 0.31217128 0.75486648 0.31404403 0.75579309 0.31591675 0.75486648 0.068605378 
		0.867544 0.066732638 0.86847061 0.066732638 0.86530679 0.064859897 0.867544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 10.24371 5.6834698 8.3426847 
		10.254055 5.5420485 8.4126606 10.24371 5.48347 8.5815964 10.218733 5.5420485 8.7505331 
		10.193756 5.6834698 8.820509 10.183412 5.8248911 8.7505331 10.193756 5.8834696 8.5815964 
		10.218733 5.8248911 1.4482385 9.2140522 5.6834698 1.3782616 9.2243977 5.5420485 1.4482385 
		9.2140522 5.48347 1.6171738 9.1890755 5.5420485 1.7861112 9.1640987 5.6834698 1.8560861 
		9.1537533 5.8248911 1.7861112 9.1640987 5.8834696 1.6171738 9.1890755 5.6834698 8.5815964 
		10.218733 5.6834698 1.6171738 9.1890755;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface245" -p "polySurface140";
createNode mesh -n "polySurfaceShape248" -p "polySurface245";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape410" -p "polySurface245";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.32888213 0.75486642 
		0.32700941 0.75579309 0.32700941 0.66356814 0.32888213 0.66264147 0.32513666 0.75486642 
		0.32513666 0.66264147 0.32436094 0.75262928 0.32436094 0.66040438 0.052956596 0.77308184 
		0.053732306 0.77531904 0.053732306 0.867544 0.052956596 0.86530679 0.055605046 0.77624565 
		0.055605046 0.86847061 0.057477783 0.77531904 0.057477783 0.867544 0.058253497 0.77308184 
		0.058253497 0.86530679 0.32965785 0.75262928 0.32965785 0.66040438 0.055605046 0.7699182 
		0.057477783 0.77084476 0.055605046 0.77308184 0.053732306 0.77084476 0.32700941 0.66040438 
		0.32513666 0.6581673 0.32700941 0.65724063 0.32888213 0.6581673;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 8.0921383 5.6834698 
		8.820509 8.1024837 5.5420485 8.7505331 8.0921383 5.48347 8.5815964 8.0671616 5.5420485 
		8.4126606 8.0421858 5.6834698 8.3426847 8.0318403 5.8248911 8.4126606 8.0421858 5.8834696 
		8.5815964 8.0671616 5.8248911 1.7861112 9.1217966 5.6834698 1.8560861 9.1321421 5.5420485 
		1.7861112 9.1217966 5.48347 1.6171738 9.0968199 5.5420485 1.4482385 9.0718431 5.6834698 
		1.3782616 9.0614977 5.8248911 1.4482385 9.0718431 5.8834696 1.6171738 9.0968199 5.6834698 
		8.5815964 8.0671616 5.6834698 1.6171738 9.0968199;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface246" -p "polySurface140";
createNode mesh -n "polySurfaceShape249" -p "polySurface246";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape411" -p "polySurface246";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.34184757 0.75039226 
		0.33997482 0.74946564 0.33997482 0.65724063 0.34184757 0.6581673 0.33810207 0.75039226 
		0.33810207 0.6581673 0.33732638 0.75262928 0.33732638 0.66040438 0.041828971 0.77308184 
		0.042604681 0.77084476 0.042604681 0.86306971 0.041828971 0.86530679 0.044477422 
		0.7699182 0.044477422 0.8621431 0.046350159 0.77084476 0.046350159 0.86306971 0.047125872 
		0.77308184 0.047125872 0.86530679 0.34262326 0.75262928 0.34262326 0.66040438 0.33997482 
		0.75262928 0.33810207 0.75486642 0.33997482 0.75579309 0.34184757 0.75486642 0.046350159 
		0.867544 0.044477422 0.86847061 0.044477422 0.86530679 0.042604681 0.867544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 7.8414993 5.6834698 
		8.3426847 7.8518453 5.5420485 8.4126606 7.8414993 5.48347 8.5815964 7.8165236 5.5420485 
		8.7505331 7.7915468 5.6834698 8.820509 7.7812014 5.8248911 8.7505331 7.7915468 5.8834696 
		8.5815964 7.8165236 5.8248911 1.4482385 6.811842 5.6834698 1.3782616 6.8221874 5.5420485 
		1.4482385 6.811842 5.48347 1.6171738 6.7868652 5.5420485 1.7861112 6.761889 5.6834698 
		1.8560861 6.7515435 5.8248911 1.7861112 6.761889 5.8834696 1.6171738 6.7868652 5.6834698 
		8.5815964 7.8165236 5.6834698 1.6171738 6.7868652;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface247" -p "polySurface140";
createNode mesh -n "polySurfaceShape250" -p "polySurface247";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape412" -p "polySurface247";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.35481295 0.75486642 
		0.3529402 0.75579309 0.3529402 0.66356814 0.35481295 0.66264147 0.35106745 0.75486642 
		0.35106745 0.66264147 0.35029176 0.75262928 0.35029176 0.66040438 0.030701347 0.77308184 
		0.031477056 0.77531904 0.031477056 0.867544 0.030701347 0.86530679 0.033349797 0.77624565 
		0.033349797 0.86847061 0.035222534 0.77531904 0.035222534 0.867544 0.035998248 0.77308184 
		0.035998248 0.86530679 0.35558864 0.75262928 0.35558864 0.66040438 0.033349797 0.7699182 
		0.035222534 0.77084476 0.033349797 0.77308184 0.031477056 0.77084476 0.3529402 0.66040438 
		0.35106745 0.6581673 0.3529402 0.65724063 0.35481295 0.6581673;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 5.6899281 5.6834698 
		8.820509 5.7002735 5.5420485 8.7505331 5.6899281 5.48347 8.5815964 5.6649518 5.5420485 
		8.4126606 5.6399751 5.6834698 8.3426847 5.6296296 5.8248911 8.4126606 5.6399751 5.8834696 
		8.5815964 5.6649518 5.8248911 1.7861112 6.7195859 5.6834698 1.8560861 6.7299318 5.5420485 
		1.7861112 6.7195859 5.48347 1.6171738 6.6946096 5.5420485 1.4482385 6.6696329 5.6834698 
		1.3782616 6.6592875 5.8248911 1.4482385 6.6696329 5.8834696 1.6171738 6.6946096 5.6834698 
		8.5815964 5.6649518 5.6834698 1.6171738 6.6946096;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface248" -p "polySurface140";
createNode mesh -n "polySurfaceShape251" -p "polySurface248";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape413" -p "polySurface248";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.36777833 0.75039226 
		0.36590558 0.74946564 0.36590558 0.65724063 0.36777833 0.6581673 0.36403283 0.75039226 
		0.36403283 0.6581673 0.36325714 0.75262928 0.36325714 0.66040438 0.019573754 0.77308184 
		0.020349465 0.77084476 0.020349465 0.86306971 0.019573754 0.86530679 0.022222204 
		0.7699182 0.022222204 0.8621431 0.024094943 0.77084476 0.024094943 0.86306971 0.024870655 
		0.77308184 0.024870655 0.86530679 0.36855403 0.75262928 0.36855403 0.66040438 0.36590558 
		0.75262928 0.36403283 0.75486642 0.36590558 0.75579309 0.36777833 0.75486642 0.024094943 
		0.867544 0.022222204 0.86847061 0.022222204 0.86530679 0.020349465 0.867544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 5.2202034 5.6834698 
		8.3426847 5.2305489 5.5420485 8.4126606 5.2202034 5.48347 8.5815964 5.1952267 5.5420485 
		8.7505331 5.1702504 5.6834698 8.820509 5.159905 5.8248911 8.7505331 5.1702504 5.8834696 
		8.5815964 5.1952267 5.8248911 1.4482385 4.1905456 5.6834698 1.3782616 4.200891 5.5420485 
		1.4482385 4.1905456 5.48347 1.6171738 4.1655693 5.5420485 1.7861112 4.1405926 5.6834698 
		1.8560861 4.1302471 5.8248911 1.7861112 4.1405926 5.8834696 1.6171738 4.1655693 5.6834698 
		8.5815964 5.1952267 5.6834698 1.6171738 4.1655693;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface249" -p "polySurface140";
createNode mesh -n "polySurfaceShape252" -p "polySurface249";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape414" -p "polySurface249";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.38074371 0.75486642 
		0.37887096 0.75579309 0.37887096 0.66356814 0.38074371 0.66264147 0.37699825 0.75486642 
		0.37699825 0.66264147 0.37622252 0.75262928 0.37622252 0.66040438 0.00844613 0.77308184 
		0.0092218416 0.77531904 0.0092218416 0.867544 0.00844613 0.86530679 0.011094579 0.77624565 
		0.011094579 0.86847061 0.012967318 0.77531904 0.012967318 0.867544 0.01374303 0.77308184 
		0.01374303 0.86530679 0.38151941 0.75262928 0.38151941 0.66040438 0.011094579 0.7699182 
		0.012967318 0.77084476 0.011094579 0.77308184 0.0092218416 0.77084476 0.37887096 
		0.66040438 0.37699825 0.6581673 0.37887096 0.65724063 0.38074371 0.6581673;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 3.0686319 5.6834698 
		8.820509 3.0789773 5.5420485 8.7505331 3.0686319 5.48347 8.5815964 3.0436552 5.5420485 
		8.4126606 3.0186789 5.6834698 8.3426847 3.0083332 5.8248911 8.4126606 3.0186789 5.8834696 
		8.5815964 3.0436552 5.8248911 1.7861112 4.0982895 5.6834698 1.8560861 4.1086349 5.5420485 
		1.7861112 4.0982895 5.48347 1.6171738 4.0733132 5.5420485 1.4482385 4.0483365 5.6834698 
		1.3782616 4.037991 5.8248911 1.4482385 4.0483365 5.8834696 1.6171738 4.0733132 5.6834698 
		8.5815964 3.0436552 5.6834698 1.6171738 4.0733132;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface250" -p "polySurface140";
createNode mesh -n "polySurfaceShape253" -p "polySurface250";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape415" -p "polySurface250";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.39370909 0.74925256 
		0.39183635 0.74832588 0.39183635 0.65610093 0.39370909 0.6570276 0.38996363 0.74925256 
		0.38996363 0.6570276 0.3891879 0.7514897 0.3891879 0.65926468 0.0018931457 0.8754276 
		0.0026688573 0.87319058 0.0026688573 0.96541548 0.0018931457 0.96765256 0.0045415959 
		0.87226397 0.0045415959 0.96448892 0.0064143343 0.87319058 0.0064143343 0.96541548 
		0.0071900459 0.8754276 0.0071900459 0.96765256 0.39448482 0.7514897 0.39448482 0.65926468 
		0.39183635 0.7514897 0.38996363 0.75372678 0.39183635 0.75465339 0.39370909 0.75372678 
		0.0064143343 0.96988976 0.0045415959 0.97081637 0.0045415959 0.96765256 0.0026688573 
		0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 2.8179932 5.6834698 
		8.3426847 2.8283386 5.5420485 8.4126606 2.8179932 5.48347 8.5815964 2.7930164 5.5420485 
		8.7505331 2.7680402 5.6834698 8.820509 2.7576945 5.8248911 8.7505331 2.7680402 5.8834696 
		8.5815964 2.7930164 5.8248911 1.4482385 1.7883351 5.6834698 1.3782616 1.7986808 5.5420485 
		1.4482385 1.7883351 5.48347 1.6171738 1.7633588 5.5420485 1.7861112 1.7383823 5.6834698 
		1.8560861 1.7280369 5.8248911 1.7861112 1.7383823 5.8834696 1.6171738 1.7633588 5.6834698 
		8.5815964 2.7930164 5.6834698 1.6171738 1.7633588;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface251" -p "polySurface140";
createNode mesh -n "polySurfaceShape254" -p "polySurface251";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape416" -p "polySurface251";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.4066745 0.75372678 
		0.40480179 0.75465339 0.40480179 0.66242844 0.4066745 0.66150182 0.40292904 0.75372678 
		0.40292904 0.66150182 0.40215331 0.7514897 0.40215331 0.65926468 0.013191565 0.8754276 
		0.013967277 0.8776648 0.013967277 0.96988976 0.013191565 0.96765256 0.015840014 0.87859142 
		0.015840014 0.97081637 0.017712753 0.8776648 0.017712753 0.96988976 0.018488465 0.8754276 
		0.018488465 0.96765256 0.40745023 0.7514897 0.40745023 0.65926468 0.015840014 0.87226397 
		0.017712753 0.87319058 0.015840014 0.8754276 0.013967277 0.87319058 0.40480179 0.65926468 
		0.40292904 0.6570276 0.40480179 0.65610093 0.4066745 0.6570276;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 0.66642141 5.6834698 
		8.820509 0.67676687 5.5420485 8.7505331 0.66642141 5.48347 8.5815964 0.64144516 5.5420485 
		8.4126606 0.61646843 5.6834698 8.3426847 0.60612297 5.8248911 8.4126606 0.61646843 
		5.8834696 8.5815964 0.64144516 5.8248911 1.7861112 1.6960793 5.6834698 1.8560861 
		1.7064247 5.5420485 1.7861112 1.6960793 5.48347 1.6171738 1.6711028 5.5420485 1.4482385 
		1.6461265 5.6834698 1.3782616 1.6357806 5.8248911 1.4482385 1.6461265 5.8834696 1.6171738 
		1.6711028 5.6834698 8.5815964 0.64144516 5.6834698 1.6171738 1.6711028;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface252" -p "polySurface140";
createNode mesh -n "polySurfaceShape255" -p "polySurface252";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape417" -p "polySurface252";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.41963989 0.74925256 
		0.41776717 0.74832588 0.41776717 0.65610093 0.41963989 0.6570276 0.41589442 0.74925256 
		0.41589442 0.6570276 0.41511869 0.7514897 0.41511869 0.65926468 0.026156949 0.8754276 
		0.02693266 0.87319058 0.02693266 0.96541548 0.026156949 0.96765256 0.028805399 0.87226397 
		0.028805399 0.96448892 0.030678138 0.87319058 0.030678138 0.96541548 0.031453848 
		0.8754276 0.031453848 0.96765256 0.42041561 0.7514897 0.42041561 0.65926468 0.41776717 
		0.7514897 0.41589442 0.75372678 0.41776717 0.75465339 0.41963989 0.75372678 0.030678138 
		0.96988976 0.028805399 0.97081637 0.028805399 0.96765256 0.02693266 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -0.40398359 5.6834698 
		8.3426847 -0.39363813 5.5420485 8.4126606 -0.40398359 5.48347 8.5815964 -0.42896032 
		5.5420485 8.7505331 -0.45393705 5.6834698 8.820509 -0.46428204 5.8248911 8.7505331 
		-0.45393705 5.8834696 8.5815964 -0.42896032 5.8248911 1.4482385 -1.4336417 5.6834698 
		1.3782616 -1.423296 5.5420485 1.4482385 -1.4336417 5.48347 1.6171738 -1.4586179 5.5420485 
		1.7861112 -1.4835947 5.6834698 1.8560861 -1.4939401 5.8248911 1.7861112 -1.4835947 
		5.8834696 1.6171738 -1.4586179 5.6834698 8.5815964 -0.42896032 5.6834698 1.6171738 
		-1.4586179;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface253" -p "polySurface140";
createNode mesh -n "polySurfaceShape256" -p "polySurface253";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape418" -p "polySurface253";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.43260527 0.75372678 
		0.43073255 0.75465339 0.43073255 0.66242844 0.43260527 0.66150182 0.4288598 0.75372678 
		0.4288598 0.66150182 0.42808408 0.7514897 0.42808408 0.65926468 0.039122332 0.8754276 
		0.039898045 0.8776648 0.039898045 0.96988976 0.039122332 0.96765256 0.041770782 0.87859142 
		0.041770782 0.97081637 0.043643523 0.8776648 0.043643523 0.96988976 0.044419233 0.8754276 
		0.044419233 0.96765256 0.43338099 0.7514897 0.43338099 0.65926468 0.041770782 0.87226397 
		0.043643523 0.87319058 0.041770782 0.8754276 0.039898045 0.87319058 0.43073255 0.65926468 
		0.4288598 0.6570276 0.43073255 0.65610093 0.43260527 0.6570276;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -2.5555553 5.6834698 
		8.820509 -2.5452096 5.5420485 8.7505331 -2.5555553 5.48347 8.5815964 -2.5805316 5.5420485 
		8.4126606 -2.6055081 5.6834698 8.3426847 -2.6158535 5.8248911 8.4126606 -2.6055081 
		5.8834696 8.5815964 -2.5805316 5.8248911 1.7861112 -1.5258973 5.6834698 1.8560861 
		-1.5155518 5.5420485 1.7861112 -1.5258973 5.48347 1.6171738 -1.550874 5.5420485 1.4482385 
		-1.5758502 5.6834698 1.3782616 -1.5861959 5.8248911 1.4482385 -1.5758502 5.8834696 
		1.6171738 -1.550874 5.6834698 8.5815964 -2.5805316 5.6834698 1.6171738 -1.550874;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface254" -p "polySurface140";
createNode mesh -n "polySurfaceShape257" -p "polySurface254";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape419" -p "polySurface254";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.44557068 0.74925256 
		0.44369793 0.74832588 0.44369793 0.65610093 0.44557068 0.6570276 0.44182518 0.74925256 
		0.44182518 0.6570276 0.44104949 0.7514897 0.44104949 0.65926468 0.05208775 0.8754276 
		0.052863464 0.87319058 0.052863464 0.96541548 0.05208775 0.96765256 0.054736201 0.87226397 
		0.054736201 0.96448892 0.056608938 0.87319058 0.056608938 0.96541548 0.057384651 
		0.8754276 0.057384651 0.96765256 0.44634637 0.7514897 0.44634637 0.65926468 0.44369793 
		0.7514897 0.44182518 0.75372678 0.44369793 0.75465339 0.44557068 0.75372678 0.056608938 
		0.96988976 0.054736201 0.97081637 0.054736201 0.96765256 0.052863464 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -2.8061941 5.6834698 
		8.3426847 -2.7958484 5.5420485 8.4126606 -2.8061941 5.48347 8.5815964 -2.8311703 
		5.5420485 8.7505331 -2.8561468 5.6834698 8.820509 -2.8664923 5.8248911 8.7505331 
		-2.8561468 5.8834696 8.5815964 -2.8311703 5.8248911 1.4482385 -3.8358517 5.6834698 
		1.3782616 -3.8255062 5.5420485 1.4482385 -3.8358517 5.48347 1.6171738 -3.8608284 
		5.5420485 1.7861112 -3.8858047 5.6834698 1.8560861 -3.8961501 5.8248911 1.7861112 
		-3.8858047 5.8834696 1.6171738 -3.8608284 5.6834698 8.5815964 -2.8311703 5.6834698 
		1.6171738 -3.8608284;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface255" -p "polySurface140";
createNode mesh -n "polySurfaceShape258" -p "polySurface255";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape420" -p "polySurface255";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.45853609 0.75372678 
		0.45666334 0.75465339 0.45666334 0.66242844 0.45853609 0.66150182 0.45479059 0.75372678 
		0.45479059 0.66150182 0.4540149 0.7514897 0.4540149 0.65926468 0.065053135 0.8754276 
		0.065828845 0.8776648 0.065828845 0.96988976 0.065053135 0.96765256 0.067701586 0.87859142 
		0.067701586 0.97081637 0.069574326 0.8776648 0.069574326 0.96988976 0.070350036 0.8754276 
		0.070350036 0.96765256 0.45931178 0.7514897 0.45931178 0.65926468 0.067701586 0.87226397 
		0.069574326 0.87319058 0.067701586 0.8754276 0.065828845 0.87319058 0.45666334 0.65926468 
		0.45479059 0.6570276 0.45666334 0.65610093 0.45853609 0.6570276;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -4.9577656 5.6834698 
		8.820509 -4.9474201 5.5420485 8.7505331 -4.9577656 5.48347 8.5815964 -4.9827418 5.5420485 
		8.4126606 -5.0077186 5.6834698 8.3426847 -5.018064 5.8248911 8.4126606 -5.0077186 
		5.8834696 8.5815964 -4.9827418 5.8248911 1.7861112 -3.9281077 5.6834698 1.8560861 
		-3.917762 5.5420485 1.7861112 -3.9281077 5.48347 1.6171738 -3.953084 5.5420485 1.4482385 
		-3.9780607 5.6834698 1.3782616 -3.9884062 5.8248911 1.4482385 -3.9780607 5.8834696 
		1.6171738 -3.953084 5.6834698 8.5815964 -4.9827418 5.6834698 1.6171738 -3.953084;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface256" -p "polySurface140";
createNode mesh -n "polySurfaceShape259" -p "polySurface256";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape421" -p "polySurface256";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.47150147 0.74925256 
		0.46962872 0.74832588 0.46962872 0.65610093 0.47150147 0.6570276 0.46775597 0.74925256 
		0.46775597 0.6570276 0.46698028 0.7514897 0.46698028 0.65926468 0.078018516 0.8754276 
		0.078794234 0.87319058 0.078794234 0.96541548 0.078018516 0.96765256 0.080666967 
		0.87226397 0.080666967 0.96448892 0.082539707 0.87319058 0.082539707 0.96541548 0.083315417 
		0.8754276 0.083315417 0.96765256 0.47227716 0.7514897 0.47227716 0.65926468 0.46962872 
		0.7514897 0.46775597 0.75372678 0.46962872 0.75465339 0.47150147 0.75372678 0.082539707 
		0.96988976 0.080666967 0.97081637 0.080666967 0.96765256 0.078794234 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -5.4274902 5.6834698 
		8.3426847 -5.4171448 5.5420485 8.4126606 -5.4274902 5.48347 8.5815964 -5.452467 5.5420485 
		8.7505331 -5.4774432 5.6834698 8.820509 -5.4877887 5.8248911 8.7505331 -5.4774432 
		5.8834696 8.5815964 -5.452467 5.8248911 1.4482385 -6.4571481 5.6834698 1.3782616 
		-6.4468026 5.5420485 1.4482385 -6.4571481 5.48347 1.6171738 -6.4821243 5.5420485 
		1.7861112 -6.5071011 5.6834698 1.8560861 -6.5174465 5.8248911 1.7861112 -6.5071011 
		5.8834696 1.6171738 -6.4821243 5.6834698 8.5815964 -5.452467 5.6834698 1.6171738 
		-6.4821243;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface257" -p "polySurface140";
createNode mesh -n "polySurfaceShape260" -p "polySurface257";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape422" -p "polySurface257";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.48446685 0.75372678 
		0.4825941 0.75465339 0.4825941 0.66242844 0.48446685 0.66150182 0.48072138 0.75372678 
		0.48072138 0.66150182 0.47994566 0.7514897 0.47994566 0.65926468 0.090983905 0.8754276 
		0.091759615 0.8776648 0.091759615 0.96988976 0.090983905 0.96765256 0.093632355 0.87859142 
		0.093632355 0.97081637 0.095505089 0.8776648 0.095505089 0.96988976 0.096280806 0.8754276 
		0.096280806 0.96765256 0.48524255 0.7514897 0.48524255 0.65926468 0.093632355 0.87226397 
		0.095505089 0.87319058 0.093632355 0.8754276 0.091759615 0.87319058 0.4825941 0.65926468 
		0.48072138 0.6570276 0.4825941 0.65610093 0.48446685 0.6570276;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -7.5790615 5.6834698 
		8.820509 -7.568716 5.5420485 8.7505331 -7.5790615 5.48347 8.5815964 -7.6040382 5.5420485 
		8.4126606 -7.629015 5.6834698 8.3426847 -7.6393604 5.8248911 8.4126606 -7.629015 
		5.8834696 8.5815964 -7.6040382 5.8248911 1.7861112 -6.5494041 5.6834698 1.8560861 
		-6.5390587 5.5420485 1.7861112 -6.5494041 5.48347 1.6171738 -6.5743804 5.5420485 
		1.4482385 -6.5993571 5.6834698 1.3782616 -6.6097026 5.8248911 1.4482385 -6.5993571 
		5.8834696 1.6171738 -6.5743804 5.6834698 8.5815964 -7.6040382 5.6834698 1.6171738 
		-6.5743804;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface258" -p "polySurface140";
createNode mesh -n "polySurfaceShape261" -p "polySurface258";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape423" -p "polySurface258";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.49743223 0.74925256 
		0.49555948 0.74832588 0.49555948 0.65610093 0.49743223 0.6570276 0.49368677 0.74925256 
		0.49368677 0.6570276 0.49291104 0.7514897 0.49291104 0.65926468 0.10394929 0.8754276 
		0.104725 0.87319058 0.104725 0.96541548 0.10394929 0.96765256 0.10659774 0.87226397 
		0.10659774 0.96448892 0.10847048 0.87319058 0.10847048 0.96541548 0.10924619 0.8754276 
		0.10924619 0.96765256 0.49820796 0.7514897 0.49820796 0.65926468 0.49555948 0.7514897 
		0.49368677 0.75372678 0.49555948 0.75465339 0.49743223 0.75372678 0.10847048 0.96988976 
		0.10659774 0.97081637 0.10659774 0.96765256 0.104725 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -7.8297005 5.6834698 
		8.3426847 -7.819355 5.5420485 8.4126606 -7.8297005 5.48347 8.5815964 -7.8546772 5.5420485 
		8.7505331 -7.8796535 5.6834698 8.820509 -7.8899994 5.8248911 8.7505331 -7.8796535 
		5.8834696 8.5815964 -7.8546772 5.8248911 1.4482385 -8.8593588 5.6834698 1.3782616 
		-8.8490124 5.5420485 1.4482385 -8.8593588 5.48347 1.6171738 -8.8843346 5.5420485 
		1.7861112 -8.9093113 5.6834698 1.8560861 -8.9196568 5.8248911 1.7861112 -8.9093113 
		5.8834696 1.6171738 -8.8843346 5.6834698 8.5815964 -7.8546772 5.6834698 1.6171738 
		-8.8843346;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface259" -p "polySurface140";
createNode mesh -n "polySurfaceShape262" -p "polySurface259";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape424" -p "polySurface259";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.51039761 0.75372678 
		0.50852489 0.75465339 0.50852489 0.66242844 0.51039761 0.66150182 0.50665212 0.75372678 
		0.50665212 0.66150182 0.50587642 0.7514897 0.50587642 0.65926468 0.11691469 0.8754276 
		0.1176904 0.8776648 0.1176904 0.96988976 0.11691469 0.96765256 0.11956314 0.87859142 
		0.11956314 0.97081637 0.12143587 0.8776648 0.12143587 0.96988976 0.12221159 0.8754276 
		0.12221159 0.96765256 0.51117331 0.7514897 0.51117331 0.65926468 0.11956314 0.87226397 
		0.12143587 0.87319058 0.11956314 0.8754276 0.1176904 0.87319058 0.50852489 0.65926468 
		0.50665212 0.6570276 0.50852489 0.65610093 0.51039761 0.6570276;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -9.9812717 5.6834698 
		8.820509 -9.9709263 5.5420485 8.7505331 -9.9812717 5.48347 8.5815964 -10.006248 5.5420485 
		8.4126606 -10.031225 5.6834698 8.3426847 -10.041571 5.8248911 8.4126606 -10.031225 
		5.8834696 8.5815964 -10.006248 5.8248911 1.7861112 -8.9516144 5.6834698 1.8560861 
		-8.9412689 5.5420485 1.7861112 -8.9516144 5.48347 1.6171738 -8.9765911 5.5420485 
		1.4482385 -9.0015669 5.6834698 1.3782616 -9.0119133 5.8248911 1.4482385 -9.0015669 
		5.8834696 1.6171738 -8.9765911 5.6834698 8.5815964 -10.006248 5.6834698 1.6171738 
		-8.9765911;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface260" -p "polySurface140";
createNode mesh -n "polySurfaceShape263" -p "polySurface260";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape425" -p "polySurface260";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.52336305 0.74925256 
		0.52149028 0.74832588 0.52149028 0.65610093 0.52336305 0.6570276 0.51961756 0.74925256 
		0.51961756 0.6570276 0.51884186 0.7514897 0.51884186 0.65926468 0.12988009 0.8754276 
		0.1306558 0.87319058 0.1306558 0.96541548 0.12988009 0.96765256 0.13252854 0.87226397 
		0.13252854 0.96448892 0.13440128 0.87319058 0.13440128 0.96541548 0.13517699 0.8754276 
		0.13517699 0.96765256 0.52413875 0.7514897 0.52413875 0.65926468 0.52149028 0.7514897 
		0.51961756 0.75372678 0.52149028 0.75465339 0.52336305 0.75372678 0.13440128 0.96988976 
		0.13252854 0.97081637 0.13252854 0.96765256 0.1306558 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -10.247614 5.6834698 
		8.3426847 -10.237268 5.5420485 8.4126606 -10.247614 5.48347 8.5815964 -10.272591 
		5.5420485 8.7505331 -10.297567 5.6834698 8.820509 -10.307912 5.8248911 8.7505331 
		-10.297567 5.8834696 8.5815964 -10.272591 5.8248911 1.4482385 -11.277271 5.6834698 
		1.3782616 -11.266926 5.5420485 1.4482385 -11.277271 5.48347 1.6171738 -11.302248 
		5.5420485 1.7861112 -11.327225 5.6834698 1.8560861 -11.33757 5.8248911 1.7861112 
		-11.327225 5.8834696 1.6171738 -11.302248 5.6834698 8.5815964 -10.272591 5.6834698 
		1.6171738 -11.302248;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface261" -p "polySurface140";
createNode mesh -n "polySurfaceShape264" -p "polySurface261";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape426" -p "polySurface261";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.53632843 0.76978546 
		0.53445566 0.77071208 0.53445566 0.67848712 0.53632843 0.67756051 0.53258294 0.76978546 
		0.53258294 0.67756051 0.53180724 0.76754838 0.53180724 0.67532337 0.14284547 0.8754276 
		0.14362119 0.8776648 0.14362119 0.96988976 0.14284547 0.96765256 0.14549392 0.87859142 
		0.14549392 0.97081637 0.14736666 0.8776648 0.14736666 0.96988976 0.14814237 0.8754276 
		0.14814237 0.96765256 0.53710413 0.76754838 0.53710413 0.67532337 0.14549392 0.87226397 
		0.14736666 0.87319058 0.14549392 0.8754276 0.14362119 0.87319058 0.53445566 0.67532337 
		0.53258294 0.67308629 0.53445566 0.67215961 0.53632843 0.67308629;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -12.399185 5.6834698 
		8.820509 -12.38884 5.5420485 8.7505331 -12.399185 5.48347 8.5815964 -12.424162 5.5420485 
		8.4126606 -12.449138 5.6834698 8.3426847 -12.459483 5.8248911 8.4126606 -12.449138 
		5.8834696 8.5815964 -12.424162 5.8248911 1.7861112 -11.369527 5.6834698 1.8560861 
		-11.359181 5.5420485 1.7861112 -11.369527 5.48347 1.6171738 -11.394504 5.5420485 
		1.4482385 -11.41948 5.6834698 1.3782616 -11.429826 5.8248911 1.4482385 -11.41948 
		5.8834696 1.6171738 -11.394504 5.6834698 8.5815964 -12.424162 5.6834698 1.6171738 
		-11.394504;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface262" -p "polySurface140";
createNode mesh -n "polySurfaceShape265" -p "polySurface262";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape427" -p "polySurface262";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.54929382 0.76531124 
		0.54742104 0.76438457 0.54742104 0.67215961 0.54929382 0.67308629 0.54554832 0.76531124 
		0.54554832 0.67308629 0.54477262 0.76754838 0.54477262 0.67532337 0.15581086 0.8754276 
		0.15658657 0.87319058 0.15658657 0.96541548 0.15581086 0.96765256 0.15845931 0.87226397 
		0.15845931 0.96448892 0.16033204 0.87319058 0.16033204 0.96541548 0.16110776 0.8754276 
		0.16110776 0.96765256 0.55006951 0.76754838 0.55006951 0.67532337 0.54742104 0.76754838 
		0.54554832 0.76978546 0.54742104 0.77071208 0.54929382 0.76978546 0.16033204 0.96988976 
		0.15845931 0.97081637 0.15845931 0.96765256 0.15658657 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -12.649824 5.6834698 
		8.3426847 -12.639479 5.5420485 8.4126606 -12.649824 5.48347 8.5815964 -12.6748 5.5420485 
		8.7505331 -12.699777 5.6834698 8.820509 -12.710122 5.8248911 8.7505331 -12.699777 
		5.8834696 8.5815964 -12.6748 5.8248911 1.4482385 -13.679482 5.6834698 1.3782616 -13.669136 
		5.5420485 1.4482385 -13.679482 5.48347 1.6171738 -13.704458 5.5420485 1.7861112 -13.729434 
		5.6834698 1.8560861 -13.73978 5.8248911 1.7861112 -13.729434 5.8834696 1.6171738 
		-13.704458 5.6834698 8.5815964 -12.6748 5.6834698 1.6171738 -13.704458;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface263" -p "polySurface140";
createNode mesh -n "polySurfaceShape266" -p "polySurface263";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape428" -p "polySurface263";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.56225914 0.76978546 
		0.56038648 0.77071208 0.56038648 0.67848712 0.56225914 0.67756051 0.5585137 0.76978546 
		0.5585137 0.67756051 0.55773801 0.76754838 0.55773801 0.67532337 0.16877626 0.8754276 
		0.16955197 0.8776648 0.16955197 0.96988976 0.16877626 0.96765256 0.1714247 0.87859142 
		0.1714247 0.97081637 0.17329745 0.8776648 0.17329745 0.96988976 0.17407316 0.8754276 
		0.17407316 0.96765256 0.56303489 0.76754838 0.56303489 0.67532337 0.1714247 0.87226397 
		0.17329745 0.87319058 0.1714247 0.8754276 0.16955197 0.87319058 0.56038648 0.67532337 
		0.5585137 0.67308629 0.56038648 0.67215961 0.56225914 0.67308629;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -14.801395 5.6834698 
		8.820509 -14.79105 5.5420485 8.7505331 -14.801395 5.48347 8.5815964 -14.826372 5.5420485 
		8.4126606 -14.851348 5.6834698 8.3426847 -14.861693 5.8248911 8.4126606 -14.851348 
		5.8834696 8.5815964 -14.826372 5.8248911 1.7861112 -13.771738 5.6834698 1.8560861 
		-13.761392 5.5420485 1.7861112 -13.771738 5.48347 1.6171738 -13.796714 5.5420485 
		1.4482385 -13.821691 5.6834698 1.3782616 -13.832036 5.8248911 1.4482385 -13.821691 
		5.8834696 1.6171738 -13.796714 5.6834698 8.5815964 -14.826372 5.6834698 1.6171738 
		-13.796714;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface264" -p "polySurface140";
createNode mesh -n "polySurfaceShape267" -p "polySurface264";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape429" -p "polySurface264";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57522458 0.76531124 
		0.5733518 0.76438457 0.5733518 0.67215961 0.57522458 0.67308629 0.57147914 0.76531124 
		0.57147914 0.67308629 0.57070339 0.76754838 0.57070339 0.67532337 0.18174164 0.8754276 
		0.18251735 0.87319058 0.18251735 0.96541548 0.18174164 0.96765256 0.1843901 0.87226397 
		0.1843901 0.96448892 0.18626283 0.87319058 0.18626283 0.96541548 0.18703854 0.8754276 
		0.18703854 0.96765256 0.57600027 0.76754838 0.57600027 0.67532337 0.5733518 0.76754838 
		0.57147914 0.76978546 0.5733518 0.77071208 0.57522458 0.76978546 0.18626283 0.96988976 
		0.1843901 0.97081637 0.1843901 0.96765256 0.18251735 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -15.27112 5.6834698 
		8.3426847 -15.260775 5.5420485 8.4126606 -15.27112 5.48347 8.5815964 -15.296097 5.5420485 
		8.7505331 -15.321074 5.6834698 8.820509 -15.331419 5.8248911 8.7505331 -15.321074 
		5.8834696 8.5815964 -15.296097 5.8248911 1.4482385 -16.300777 5.6834698 1.3782616 
		-16.290432 5.5420485 1.4482385 -16.300777 5.48347 1.6171738 -16.325754 5.5420485 
		1.7861112 -16.350731 5.6834698 1.8560861 -16.361076 5.8248911 1.7861112 -16.350731 
		5.8834696 1.6171738 -16.325754 5.6834698 8.5815964 -15.296097 5.6834698 1.6171738 
		-16.325754;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface265" -p "polySurface140";
createNode mesh -n "polySurfaceShape268" -p "polySurface265";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape430" -p "polySurface265";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.5881899 0.76978546 
		0.58631724 0.77071208 0.58631724 0.67848712 0.5881899 0.67756051 0.58444446 0.76978546 
		0.58444446 0.67756051 0.58366877 0.76754838 0.58366877 0.67532337 0.19470704 0.8754276 
		0.19548276 0.8776648 0.19548276 0.96988976 0.19470704 0.96765256 0.19735549 0.87859142 
		0.19735549 0.97081637 0.19922823 0.8776648 0.19922823 0.96988976 0.20000394 0.8754276 
		0.20000394 0.96765256 0.58896565 0.76754838 0.58896565 0.67532337 0.19735549 0.87226397 
		0.19922823 0.87319058 0.19735549 0.8754276 0.19548276 0.87319058 0.58631724 0.67532337 
		0.58444446 0.67308629 0.58631724 0.67215961 0.5881899 0.67308629;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -17.422691 5.6834698 
		8.820509 -17.412346 5.5420485 8.7505331 -17.422691 5.48347 8.5815964 -17.447668 5.5420485 
		8.4126606 -17.472645 5.6834698 8.3426847 -17.48299 5.8248911 8.4126606 -17.472645 
		5.8834696 8.5815964 -17.447668 5.8248911 1.7861112 -16.393034 5.6834698 1.8560861 
		-16.382689 5.5420485 1.7861112 -16.393034 5.48347 1.6171738 -16.418011 5.5420485 
		1.4482385 -16.442987 5.6834698 1.3782616 -16.453333 5.8248911 1.4482385 -16.442987 
		5.8834696 1.6171738 -16.418011 5.6834698 8.5815964 -17.447668 5.6834698 1.6171738 
		-16.418011;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface266" -p "polySurface140";
createNode mesh -n "polySurfaceShape269" -p "polySurface266";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape431" -p "polySurface266";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.6011554 0.76531124 
		0.59928256 0.76438457 0.59928256 0.67215961 0.6011554 0.67308629 0.5974099 0.76531124 
		0.5974099 0.67308629 0.59663415 0.76754838 0.59663415 0.67532337 0.20767243 0.8754276 
		0.20844814 0.87319058 0.20844814 0.96541548 0.20767243 0.96765256 0.21032088 0.87226397 
		0.21032088 0.96448892 0.21219361 0.87319058 0.21219361 0.96541548 0.21296933 0.8754276 
		0.21296933 0.96765256 0.60193104 0.76754838 0.60193104 0.67532337 0.59928256 0.76754838 
		0.5974099 0.76978546 0.59928256 0.77071208 0.6011554 0.76978546 0.21219361 0.96988976 
		0.21032088 0.97081637 0.21032088 0.96765256 0.20844814 0.96988976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.4126606 -17.67333 5.6834698 
		8.3426847 -17.662985 5.5420485 8.4126606 -17.67333 5.48347 8.5815964 -17.698307 5.5420485 
		8.7505331 -17.723284 5.6834698 8.820509 -17.733629 5.8248911 8.7505331 -17.723284 
		5.8834696 8.5815964 -17.698307 5.8248911 1.4482385 -18.702988 5.6834698 1.3782616 
		-18.692642 5.5420485 1.4482385 -18.702988 5.48347 1.6171738 -18.727964 5.5420485 
		1.7861112 -18.752941 5.6834698 1.8560861 -18.763287 5.8248911 1.7861112 -18.752941 
		5.8834696 1.6171738 -18.727964 5.6834698 8.5815964 -17.698307 5.6834698 1.6171738 
		-18.727964;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface267" -p "polySurface140";
createNode mesh -n "polySurfaceShape270" -p "polySurface267";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape432" -p "polySurface267";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.61412084 0.76978546 
		0.612248 0.77071208 0.612248 0.67848712 0.61412084 0.67756051 0.61037534 0.76978546 
		0.61037534 0.67756051 0.60959959 0.76754838 0.60959959 0.67532337 0.22063781 0.86509591 
		0.22141352 0.86733311 0.22141352 0.95955807 0.22063781 0.95732087 0.22328626 0.86825973 
		0.22328626 0.96048468 0.225159 0.86733311 0.225159 0.95955807 0.22593471 0.86509591 
		0.22593471 0.95732087 0.61489648 0.76754838 0.61489648 0.67532337 0.22328626 0.86193222 
		0.225159 0.86285883 0.22328626 0.86509591 0.22141352 0.86285883 0.612248 0.67532337 
		0.61037534 0.67308629 0.612248 0.67215961 0.61412084 0.67308629;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 8.7505331 -19.824902 5.6834698 
		8.820509 -19.814556 5.5420485 8.7505331 -19.824902 5.48347 8.5815964 -19.849878 5.5420485 
		8.4126606 -19.874855 5.6834698 8.3426847 -19.885201 5.8248911 8.4126606 -19.874855 
		5.8834696 8.5815964 -19.849878 5.8248911 1.7861112 -18.795244 5.6834698 1.8560861 
		-18.784899 5.5420485 1.7861112 -18.795244 5.48347 1.6171738 -18.820221 5.5420485 
		1.4482385 -18.845198 5.6834698 1.3782616 -18.855543 5.8248911 1.4482385 -18.845198 
		5.8834696 1.6171738 -18.820221 5.6834698 8.5815964 -19.849878 5.6834698 1.6171738 
		-18.820221;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface268" -p "polySurface140";
createNode mesh -n "polySurfaceShape271" -p "polySurface268";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape433" -p "polySurface268";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.23812439 0.95508379 
		0.23625165 0.95415717 0.23625165 0.86193222 0.23812439 0.86285883 0.2343789 0.95508379 
		0.2343789 0.86285883 0.23360319 0.95732099 0.23360319 0.86509591 0.62256497 0.67532337 
		0.62334067 0.67308623 0.62334067 0.76531118 0.62256497 0.76754838 0.62521344 0.67215961 
		0.62521344 0.76438457 0.62708616 0.67308623 0.62708616 0.76531118 0.62786186 0.67532337 
		0.62786186 0.76754838 0.2389001 0.95732099 0.2389001 0.86509591 0.23625165 0.95732099 
		0.2343789 0.95955807 0.23625165 0.96048468 0.23812439 0.95955807 0.62708616 0.76978546 
		0.62521344 0.77071208 0.62521344 0.76754838 0.62334067 0.76978546;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -19.92458 5.6834698 
		1.9621159 -19.934925 5.5420485 1.8921403 -19.92458 5.48347 1.723204 -19.899603 5.5420485 
		1.5542678 -19.874626 5.6834698 1.4842919 -19.864281 5.8248911 1.5542678 -19.874626 
		5.8834696 1.723204 -19.899603 5.8248911 8.8565626 -18.894922 5.6834698 8.9265404 
		-18.905268 5.5420485 8.8565626 -18.894922 5.48347 8.6876278 -18.869946 5.5420485 
		8.5186901 -18.844969 5.6834698 8.4487152 -18.834623 5.8248911 8.5186901 -18.844969 
		5.8834696 8.6876278 -18.869946 5.6834698 1.723204 -19.899603 5.6834698 8.6876278 
		-18.869946;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface269" -p "polySurface140";
createNode mesh -n "polySurfaceShape272" -p "polySurface269";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape434" -p "polySurface269";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.25108981 0.95955795 
		0.24921706 0.9604845 0.24921706 0.86825961 0.25108981 0.86733299 0.24734433 0.95955795 
		0.24734433 0.86733299 0.24656861 0.95732087 0.24656861 0.86509579 0.63553035 0.67532337 
		0.63630611 0.67756051 0.63630611 0.76978546 0.63553035 0.76754838 0.63817877 0.67848712 
		0.63817877 0.77071208 0.6400516 0.67756051 0.6400516 0.76978546 0.6408273 0.67532337 
		0.6408273 0.76754838 0.25186551 0.95732087 0.25186551 0.86509579 0.63817877 0.67215961 
		0.6400516 0.67308623 0.63817877 0.67532337 0.63630611 0.67308623 0.24921706 0.86509579 
		0.24734433 0.86285871 0.24921706 0.8619321 0.25108981 0.86285871;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -17.773008 5.6834698 
		1.4842919 -17.783354 5.5420485 1.5542678 -17.773008 5.48347 1.723204 -17.748032 5.5420485 
		1.8921403 -17.723055 5.6834698 1.9621159 -17.712709 5.8248911 1.8921403 -17.723055 
		5.8834696 1.723204 -17.748032 5.8248911 8.5186901 -18.802666 5.6834698 8.4487152 
		-18.813011 5.5420485 8.5186901 -18.802666 5.48347 8.6876278 -18.777689 5.5420485 
		8.8565626 -18.752714 5.6834698 8.9265404 -18.742367 5.8248911 8.8565626 -18.752714 
		5.8834696 8.6876278 -18.777689 5.6834698 1.723204 -17.748032 5.6834698 8.6876278 
		-18.777689;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface270" -p "polySurface140";
createNode mesh -n "polySurfaceShape273" -p "polySurface270";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape435" -p "polySurface270";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.26405519 0.95508367 
		0.26218244 0.95415705 0.26218244 0.8619321 0.26405519 0.86285871 0.2603097 0.95508367 
		0.2603097 0.86285871 0.259534 0.95732087 0.259534 0.86509579 0.64849573 0.67532337 
		0.64927143 0.67308623 0.64927143 0.76531118 0.64849573 0.76754838 0.65114427 0.67215961 
		0.65114427 0.76438457 0.65301692 0.67308623 0.65301692 0.76531118 0.65379268 0.67532337 
		0.65379268 0.76754838 0.26483089 0.95732087 0.26483089 0.86509579 0.26218244 0.95732087 
		0.2603097 0.95955795 0.26218244 0.9604845 0.26405519 0.95955795 0.65301692 0.76978546 
		0.65114427 0.77071208 0.65114427 0.76754838 0.64927143 0.76978546;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -17.522369 5.6834698 
		1.9621159 -17.532715 5.5420485 1.8921403 -17.522369 5.48347 1.723204 -17.497393 5.5420485 
		1.5542678 -17.472416 5.6834698 1.4842919 -17.46207 5.8248911 1.5542678 -17.472416 
		5.8834696 1.723204 -17.497393 5.8248911 8.8565626 -16.492712 5.6834698 8.9265404 
		-16.503057 5.5420485 8.8565626 -16.492712 5.48347 8.6876278 -16.467735 5.5420485 
		8.5186901 -16.442759 5.6834698 8.4487152 -16.432413 5.8248911 8.5186901 -16.442759 
		5.8834696 8.6876278 -16.467735 5.6834698 1.723204 -17.497393 5.6834698 8.6876278 
		-16.467735;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface271" -p "polySurface140";
createNode mesh -n "polySurfaceShape274" -p "polySurface271";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape436" -p "polySurface271";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.27702057 0.95955795 
		0.27514783 0.9604845 0.27514783 0.86825961 0.27702057 0.86733299 0.27327511 0.95955795 
		0.27327511 0.86733299 0.27249938 0.95732087 0.27249938 0.86509579 0.66146111 0.67532337 
		0.66223687 0.67756051 0.66223687 0.76978546 0.66146111 0.76754838 0.66410953 0.67848712 
		0.66410953 0.77071208 0.66598237 0.67756051 0.66598237 0.76978546 0.66675806 0.67532337 
		0.66675806 0.76754838 0.27779627 0.95732087 0.27779627 0.86509579 0.66410953 0.67215961 
		0.66598237 0.67308623 0.66410953 0.67532337 0.66223687 0.67308623 0.27514783 0.86509579 
		0.27327511 0.86285871 0.27514783 0.8619321 0.27702057 0.86285871;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -15.370798 5.6834698 
		1.4842919 -15.381144 5.5420485 1.5542678 -15.370798 5.48347 1.723204 -15.345821 5.5420485 
		1.8921403 -15.320846 5.6834698 1.9621159 -15.3105 5.8248911 1.8921403 -15.320846 
		5.8834696 1.723204 -15.345821 5.8248911 8.5186901 -16.400455 5.6834698 8.4487152 
		-16.410801 5.5420485 8.5186901 -16.400455 5.48347 8.6876278 -16.375479 5.5420485 
		8.8565626 -16.350502 5.6834698 8.9265404 -16.340157 5.8248911 8.8565626 -16.350502 
		5.8834696 8.6876278 -16.375479 5.6834698 1.723204 -15.345821 5.6834698 8.6876278 
		-16.375479;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface272" -p "polySurface140";
createNode mesh -n "polySurfaceShape275" -p "polySurface272";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape437" -p "polySurface272";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.28998598 0.95508379 
		0.28811324 0.95415717 0.28811324 0.86193222 0.28998598 0.86285883 0.28624052 0.95508379 
		0.28624052 0.86285883 0.28546479 0.95732099 0.28546479 0.86509591 0.6744265 0.67532337 
		0.67520219 0.67308623 0.67520219 0.76531118 0.6744265 0.76754838 0.67707503 0.67215961 
		0.67707503 0.76438457 0.67894769 0.67308623 0.67894769 0.76531118 0.67972344 0.67532337 
		0.67972344 0.76754838 0.29076171 0.95732099 0.29076171 0.86509591 0.28811324 0.95732099 
		0.28624052 0.95955807 0.28811324 0.96048468 0.28998598 0.95955807 0.67894769 0.76978546 
		0.67707503 0.77071208 0.67707503 0.76754838 0.67520219 0.76978546;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -14.901073 5.6834698 
		1.9621159 -14.911419 5.5420485 1.8921403 -14.901073 5.48347 1.723204 -14.876097 5.5420485 
		1.5542678 -14.85112 5.6834698 1.4842919 -14.840775 5.8248911 1.5542678 -14.85112 
		5.8834696 1.723204 -14.876097 5.8248911 8.8565626 -13.871415 5.6834698 8.9265404 
		-13.881762 5.5420485 8.8565626 -13.871415 5.48347 8.6876278 -13.846439 5.5420485 
		8.5186901 -13.821463 5.6834698 8.4487152 -13.811117 5.8248911 8.5186901 -13.821463 
		5.8834696 8.6876278 -13.846439 5.6834698 1.723204 -14.876097 5.6834698 8.6876278 
		-13.846439;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface273" -p "polySurface140";
createNode mesh -n "polySurfaceShape276" -p "polySurface273";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape438" -p "polySurface273";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.30295137 0.95955807 
		0.30107862 0.96048468 0.30107862 0.86825973 0.30295137 0.86733311 0.2992059 0.95955807 
		0.2992059 0.86733311 0.29843017 0.95732099 0.29843017 0.86509591 0.68739188 0.67532337 
		0.68816763 0.67756051 0.68816763 0.76978546 0.68739188 0.76754838 0.69004035 0.67848712 
		0.69004035 0.77071208 0.69191313 0.67756051 0.69191313 0.76978546 0.69268882 0.67532337 
		0.69268882 0.76754838 0.30372709 0.95732099 0.30372709 0.86509591 0.69004035 0.67215961 
		0.69191313 0.67308623 0.69004035 0.67532337 0.68816763 0.67308623 0.30107862 0.86509591 
		0.2992059 0.86285883 0.30107862 0.86193222 0.30295137 0.86285883;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -12.749502 5.6834698 
		1.4842919 -12.759848 5.5420485 1.5542678 -12.749502 5.48347 1.723204 -12.724525 5.5420485 
		1.8921403 -12.699549 5.6834698 1.9621159 -12.689203 5.8248911 1.8921403 -12.699549 
		5.8834696 1.723204 -12.724525 5.8248911 8.5186901 -13.77916 5.6834698 8.4487152 -13.789505 
		5.5420485 8.5186901 -13.77916 5.48347 8.6876278 -13.754183 5.5420485 8.8565626 -13.729207 
		5.6834698 8.9265404 -13.718862 5.8248911 8.8565626 -13.729207 5.8834696 8.6876278 
		-13.754183 5.6834698 1.723204 -12.724525 5.6834698 8.6876278 -13.754183;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface274" -p "polySurface140";
createNode mesh -n "polySurfaceShape277" -p "polySurface274";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape439" -p "polySurface274";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31591675 0.95508379 
		0.31404403 0.95415717 0.31404403 0.86193222 0.31591675 0.86285883 0.31217128 0.95508379 
		0.31217128 0.86285883 0.31139556 0.95732099 0.31139556 0.86509591 0.70035732 0.67532337 
		0.70113295 0.67308623 0.70113295 0.76531118 0.70035732 0.76754838 0.70300579 0.67215961 
		0.70300579 0.76438457 0.70487845 0.67308623 0.70487845 0.76531118 0.7056542 0.67532337 
		0.7056542 0.76754838 0.31669247 0.95732099 0.31669247 0.86509591 0.31404403 0.95732099 
		0.31217128 0.95955807 0.31404403 0.96048468 0.31591675 0.95955807 0.70487845 0.76978546 
		0.70300579 0.77071208 0.70300579 0.76754838 0.70113295 0.76978546;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -12.498863 5.6834698 
		1.9621159 -12.509209 5.5420485 1.8921403 -12.498863 5.48347 1.723204 -12.473886 5.5420485 
		1.5542678 -12.44891 5.6834698 1.4842919 -12.438564 5.8248911 1.5542678 -12.44891 
		5.8834696 1.723204 -12.473886 5.8248911 8.8565626 -11.469205 5.6834698 8.9265404 
		-11.479551 5.5420485 8.8565626 -11.469205 5.48347 8.6876278 -11.444229 5.5420485 
		8.5186901 -11.419252 5.6834698 8.4487152 -11.408907 5.8248911 8.5186901 -11.419252 
		5.8834696 8.6876278 -11.444229 5.6834698 1.723204 -12.473886 5.6834698 8.6876278 
		-11.444229;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface275" -p "polySurface140";
createNode mesh -n "polySurfaceShape278" -p "polySurface275";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape440" -p "polySurface275";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.32888213 0.95955807 
		0.32700941 0.96048468 0.32700941 0.86825973 0.32888213 0.86733311 0.32513666 0.95955807 
		0.32513666 0.86733311 0.32436094 0.95732099 0.32436094 0.86509591 0.7133227 0.67532337 
		0.71409839 0.67756051 0.71409839 0.76978546 0.7133227 0.76754838 0.71597111 0.67848712 
		0.71597111 0.77071208 0.71784389 0.67756051 0.71784389 0.76978546 0.71861959 0.67532337 
		0.71861959 0.76754838 0.32965785 0.95732099 0.32965785 0.86509591 0.71597111 0.67215961 
		0.71784389 0.67308623 0.71597111 0.67532337 0.71409839 0.67308623 0.32700941 0.86509591 
		0.32513666 0.86285883 0.32700941 0.86193222 0.32888213 0.86285883;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -10.347292 5.6834698 
		1.4842919 -10.357637 5.5420485 1.5542678 -10.347292 5.48347 1.723204 -10.322315 5.5420485 
		1.8921403 -10.297338 5.6834698 1.9621159 -10.286993 5.8248911 1.8921403 -10.297338 
		5.8834696 1.723204 -10.322315 5.8248911 8.5186901 -11.376949 5.6834698 8.4487152 
		-11.387295 5.5420485 8.5186901 -11.376949 5.48347 8.6876278 -11.351973 5.5420485 
		8.8565626 -11.326997 5.6834698 8.9265404 -11.31665 5.8248911 8.8565626 -11.326997 
		5.8834696 8.6876278 -11.351973 5.6834698 1.723204 -10.322315 5.6834698 8.6876278 
		-11.351973;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface276" -p "polySurface140";
createNode mesh -n "polySurfaceShape279" -p "polySurface276";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape441" -p "polySurface276";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.34184757 0.95508367 
		0.33997482 0.95415705 0.33997482 0.8619321 0.34184757 0.86285871 0.33810207 0.95508367 
		0.33810207 0.86285871 0.33732638 0.95732087 0.33732638 0.86509579 0.72628814 0.67532337 
		0.72706389 0.67308623 0.72706389 0.76531118 0.72628814 0.76754838 0.72893655 0.67215961 
		0.72893655 0.76438457 0.73080933 0.67308623 0.73080933 0.76531118 0.73158503 0.67532337 
		0.73158503 0.76754838 0.34262326 0.95732087 0.34262326 0.86509579 0.33997482 0.95732087 
		0.33810207 0.95955795 0.33997482 0.9604845 0.34184757 0.95955795 0.73080933 0.76978546 
		0.72893655 0.77071208 0.72893655 0.76754838 0.72706389 0.76978546;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -10.08095 5.6834698 
		1.9621159 -10.091295 5.5420485 1.8921403 -10.08095 5.48347 1.723204 -10.055973 5.5420485 
		1.5542678 -10.030996 5.6834698 1.4842919 -10.020652 5.8248911 1.5542678 -10.030996 
		5.8834696 1.723204 -10.055973 5.8248911 8.8565626 -9.0512924 5.6834698 8.9265404 
		-9.0616379 5.5420485 8.8565626 -9.0512924 5.48347 8.6876278 -9.0263157 5.5420485 
		8.5186901 -9.001339 5.6834698 8.4487152 -8.9909935 5.8248911 8.5186901 -9.001339 
		5.8834696 8.6876278 -9.0263157 5.6834698 1.723204 -10.055973 5.6834698 8.6876278 
		-9.0263157;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface277" -p "polySurface140";
createNode mesh -n "polySurfaceShape280" -p "polySurface277";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape442" -p "polySurface277";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.35481295 0.95955795 
		0.3529402 0.9604845 0.3529402 0.86825961 0.35481295 0.86733299 0.35106745 0.95955795 
		0.35106745 0.86733299 0.35029176 0.95732087 0.35029176 0.86509579 0.73925352 0.55691886 
		0.74002922 0.559156 0.74002922 0.6513809 0.73925352 0.64914387 0.74190199 0.56008255 
		0.74190199 0.65230757 0.74377465 0.559156 0.74377465 0.6513809 0.74455041 0.55691886 
		0.74455041 0.64914387 0.35558864 0.95732087 0.35558864 0.86509579 0.74190199 0.5537551 
		0.74377465 0.55468178 0.74190199 0.55691886 0.74002922 0.55468178 0.3529402 0.86509579 
		0.35106745 0.86285871 0.3529402 0.8619321 0.35481295 0.86285871;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -7.9293785 5.6834698 
		1.4842919 -7.939724 5.5420485 1.5542678 -7.9293785 5.48347 1.723204 -7.9044023 5.5420485 
		1.8921403 -7.879426 5.6834698 1.9621159 -7.8690805 5.8248911 1.8921403 -7.879426 
		5.8834696 1.723204 -7.9044023 5.8248911 8.5186901 -8.9590368 5.6834698 8.4487152 
		-8.9693823 5.5420485 8.5186901 -8.9590368 5.48347 8.6876278 -8.9340601 5.5420485 
		8.8565626 -8.9090834 5.6834698 8.9265404 -8.8987379 5.8248911 8.8565626 -8.9090834 
		5.8834696 8.6876278 -8.9340601 5.6834698 1.723204 -7.9044023 5.6834698 8.6876278 
		-8.9340601;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface278" -p "polySurface140";
createNode mesh -n "polySurfaceShape281" -p "polySurface278";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape443" -p "polySurface278";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.36777833 0.95508367 
		0.36590558 0.95415705 0.36590558 0.8619321 0.36777833 0.86285871 0.36403283 0.95508367 
		0.36403283 0.86285871 0.36325714 0.95732087 0.36325714 0.86509579 0.7522189 0.2934241 
		0.75299466 0.29118699 0.75299466 0.38341194 0.7522189 0.38564906 0.75486732 0.29026034 
		0.75486732 0.3824853 0.75674009 0.29118699 0.75674009 0.38341194 0.75751579 0.2934241 
		0.75751579 0.38564906 0.36855403 0.95732087 0.36855403 0.86509579 0.36590558 0.95732087 
		0.36403283 0.95955795 0.36590558 0.9604845 0.36777833 0.95955795 0.75674009 0.38788614 
		0.75486732 0.38881281 0.75486732 0.38564906 0.75299466 0.38788614;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -7.6787395 5.6834698 
		1.9621159 -7.6890855 5.5420485 1.8921403 -7.6787395 5.48347 1.723204 -7.6537638 5.5420485 
		1.5542678 -7.628787 5.6834698 1.4842919 -7.6184416 5.8248911 1.5542678 -7.628787 
		5.8834696 1.723204 -7.6537638 5.8248911 8.8565626 -6.6490822 5.6834698 8.9265404 
		-6.6594276 5.5420485 8.8565626 -6.6490822 5.48347 8.6876278 -6.6241055 5.5420485 
		8.5186901 -6.5991292 5.6834698 8.4487152 -6.5887837 5.8248911 8.5186901 -6.5991292 
		5.8834696 8.6876278 -6.6241055 5.6834698 1.723204 -7.6537638 5.6834698 8.6876278 
		-6.6241055;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface279" -p "polySurface140";
createNode mesh -n "polySurfaceShape282" -p "polySurface279";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape444" -p "polySurface279";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.38074371 0.95955795 
		0.37887096 0.9604845 0.37887096 0.86825961 0.38074371 0.86733299 0.37699825 0.95955795 
		0.37699825 0.86733299 0.37622252 0.95732087 0.37622252 0.86509579 0.76518428 0.29342419 
		0.76595998 0.2956613 0.76595998 0.38788623 0.76518428 0.38564917 0.76783276 0.29658791 
		0.76783276 0.3888129 0.76970541 0.2956613 0.76970541 0.38788623 0.77048117 0.29342419 
		0.77048117 0.38564917 0.38151941 0.95732087 0.38151941 0.86509579 0.76783276 0.29026046 
		0.76970541 0.29118708 0.76783276 0.29342419 0.76595998 0.29118708 0.37887096 0.86509579 
		0.37699825 0.86285871 0.37887096 0.8619321 0.38074371 0.86285871;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -5.5271683 5.6834698 
		1.4842919 -5.5375137 5.5420485 1.5542678 -5.5271683 5.48347 1.723204 -5.502192 5.5420485 
		1.8921403 -5.4772153 5.6834698 1.9621159 -5.4668698 5.8248911 1.8921403 -5.4772153 
		5.8834696 1.723204 -5.502192 5.8248911 8.5186901 -6.5568261 5.6834698 8.4487152 -6.5671721 
		5.5420485 8.5186901 -6.5568261 5.48347 8.6876278 -6.5318499 5.5420485 8.8565626 -6.5068731 
		5.6834698 8.9265404 -6.4965277 5.8248911 8.8565626 -6.5068731 5.8834696 8.6876278 
		-6.5318499 5.6834698 1.723204 -5.502192 5.6834698 8.6876278 -6.5318499;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface280" -p "polySurface140";
createNode mesh -n "polySurfaceShape283" -p "polySurface280";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape445" -p "polySurface280";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.39370909 0.95508367 
		0.39183635 0.95415705 0.39183635 0.8619321 0.39370909 0.86285871 0.38996363 0.95508367 
		0.38996363 0.86285871 0.3891879 0.95732087 0.3891879 0.86509579 0.77814966 0.29342419 
		0.77892542 0.29118708 0.77892542 0.38341203 0.77814966 0.38564917 0.78079808 0.29026046 
		0.78079808 0.38248539 0.78267086 0.29118708 0.78267086 0.38341203 0.78344655 0.29342419 
		0.78344655 0.38564917 0.39448482 0.95732087 0.39448482 0.86509579 0.39183635 0.95732087 
		0.38996363 0.95955795 0.39183635 0.9604845 0.39370909 0.95955795 0.78267086 0.38788623 
		0.78079808 0.3888129 0.78079808 0.38564917 0.77892542 0.38788623;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -5.0574436 5.6834698 
		1.9621159 -5.0677891 5.5420485 1.8921403 -5.0574436 5.48347 1.723204 -5.0324669 5.5420485 
		1.5542678 -5.0074906 5.6834698 1.4842919 -4.9971452 5.8248911 1.5542678 -5.0074906 
		5.8834696 1.723204 -5.0324669 5.8248911 8.8565626 -4.0277858 5.6834698 8.9265404 
		-4.0381312 5.5420485 8.8565626 -4.0277858 5.48347 8.6876278 -4.0028095 5.5420485 
		8.5186901 -3.9778328 5.6834698 8.4487152 -3.9674873 5.8248911 8.5186901 -3.9778328 
		5.8834696 8.6876278 -4.0028095 5.6834698 1.723204 -5.0324669 5.6834698 8.6876278 
		-4.0028095;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface281" -p "polySurface140";
createNode mesh -n "polySurfaceShape284" -p "polySurface281";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape446" -p "polySurface281";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.4066745 0.95841831 
		0.40480179 0.95934492 0.40480179 0.86711997 0.4066745 0.86619335 0.40292904 0.95841831 
		0.40292904 0.86619335 0.40215331 0.95618123 0.40215331 0.86395615 0.79111505 0.29342416 
		0.79189074 0.29566127 0.79189074 0.3878862 0.79111505 0.38564914 0.79376352 0.29658788 
		0.79376352 0.38881287 0.79563618 0.29566127 0.79563618 0.3878862 0.79641193 0.29342416 
		0.79641193 0.38564914 0.40745023 0.95618123 0.40745023 0.86395615 0.79376352 0.2902604 
		0.79563618 0.29118705 0.79376352 0.29342416 0.79189074 0.29118705 0.40480179 0.86395615 
		0.40292904 0.86171913 0.40480179 0.86079252 0.4066745 0.86171913;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -2.9058721 5.6834698 
		1.4842919 -2.9162176 5.5420485 1.5542678 -2.9058721 5.48347 1.723204 -2.8808954 5.5420485 
		1.8921403 -2.8559191 5.6834698 1.9621159 -2.8455734 5.8248911 1.8921403 -2.8559191 
		5.8834696 1.723204 -2.8808954 5.8248911 8.5186901 -3.9355297 5.6834698 8.4487152 
		-3.9458754 5.5420485 8.5186901 -3.9355297 5.48347 8.6876278 -3.9105535 5.5420485 
		8.8565626 -3.8855767 5.6834698 8.9265404 -3.8752313 5.8248911 8.8565626 -3.8855767 
		5.8834696 8.6876278 -3.9105535 5.6834698 1.723204 -2.8808954 5.6834698 8.6876278 
		-3.9105535;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface282" -p "polySurface140";
createNode mesh -n "polySurfaceShape285" -p "polySurface282";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape447" -p "polySurface282";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.41963989 0.95394403 
		0.41776717 0.95301747 0.41776717 0.86079252 0.41963989 0.86171913 0.41589442 0.95394403 
		0.41589442 0.86171913 0.41511869 0.95618123 0.41511869 0.86395615 0.80408043 0.29342419 
		0.80485618 0.29118708 0.80485618 0.38341203 0.80408043 0.38564917 0.80672884 0.29026046 
		0.80672884 0.38248539 0.80860168 0.29118708 0.80860168 0.38341203 0.80937731 0.29342419 
		0.80937731 0.38564917 0.42041561 0.95618123 0.42041561 0.86395615 0.41776717 0.95618123 
		0.41589442 0.95841831 0.41776717 0.95934492 0.41963989 0.95841831 0.80860168 0.38788623 
		0.80672884 0.3888129 0.80672884 0.38564917 0.80485618 0.38788623;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 -2.6552334 5.6834698 
		1.9621159 -2.6655788 5.5420485 1.8921403 -2.6552334 5.48347 1.723204 -2.6302567 5.5420485 
		1.5542678 -2.6052804 5.6834698 1.4842919 -2.5949347 5.8248911 1.5542678 -2.6052804 
		5.8834696 1.723204 -2.6302567 5.8248911 8.8565626 -1.6255753 5.6834698 8.9265404 
		-1.635921 5.5420485 8.8565626 -1.6255753 5.48347 8.6876278 -1.6005991 5.5420485 8.5186901 
		-1.5756226 5.6834698 8.4487152 -1.5652771 5.8248911 8.5186901 -1.5756226 5.8834696 
		8.6876278 -1.6005991 5.6834698 1.723204 -2.6302567 5.6834698 8.6876278 -1.6005991;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface283" -p "polySurface140";
createNode mesh -n "polySurfaceShape286" -p "polySurface283";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape448" -p "polySurface283";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.43260527 0.95841831 
		0.43073255 0.95934492 0.43073255 0.86711997 0.43260527 0.86619335 0.4288598 0.95841831 
		0.4288598 0.86619335 0.42808408 0.95618123 0.42808408 0.86395615 0.81704581 0.29342419 
		0.8178215 0.2956613 0.8178215 0.38788623 0.81704581 0.38564917 0.81969428 0.29658791 
		0.81969428 0.3888129 0.82156694 0.2956613 0.82156694 0.38788623 0.82234269 0.29342419 
		0.82234269 0.38564917 0.43338099 0.95618123 0.43338099 0.86395615 0.81969428 0.29026046 
		0.82156694 0.29118708 0.81969428 0.29342419 0.8178215 0.29118708 0.43073255 0.86395615 
		0.4288598 0.86171913 0.43073255 0.86079252 0.43260527 0.86171913;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 -0.50366163 5.6834698 
		1.4842919 -0.51400709 5.5420485 1.5542678 -0.50366163 5.48347 1.723204 -0.47868538 
		5.5420485 1.8921403 -0.45370865 5.6834698 1.9621159 -0.44336319 5.8248911 1.8921403 
		-0.45370865 5.8834696 1.723204 -0.47868538 5.8248911 8.5186901 -1.5333195 5.6834698 
		8.4487152 -1.5436649 5.5420485 8.5186901 -1.5333195 5.48347 8.6876278 -1.508343 5.5420485 
		8.8565626 -1.4833667 5.6834698 8.9265404 -1.4730208 5.8248911 8.8565626 -1.4833667 
		5.8834696 8.6876278 -1.508343 5.6834698 1.723204 -0.47868538 5.6834698 8.6876278 
		-1.508343;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface284" -p "polySurface140";
createNode mesh -n "polySurfaceShape287" -p "polySurface284";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape449" -p "polySurface284";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.44557068 0.95394403 
		0.44369793 0.95301747 0.44369793 0.86079252 0.44557068 0.86171913 0.44182518 0.95394403 
		0.44182518 0.86171913 0.44104949 0.95618123 0.44104949 0.86395615 0.83001119 0.29342413 
		0.83078694 0.29118702 0.83078694 0.38341197 0.83001119 0.38564911 0.8326596 0.29026037 
		0.8326596 0.38248533 0.83453244 0.29118702 0.83453244 0.38341197 0.83530807 0.29342413 
		0.83530807 0.38564911 0.44634637 0.95618123 0.44634637 0.86395615 0.44369793 0.95618123 
		0.44182518 0.95841831 0.44369793 0.95934492 0.44557068 0.95841831 0.83453244 0.38788617 
		0.8326596 0.38881284 0.8326596 0.38564911 0.83078694 0.38788617;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 0.56674337 5.6834698 
		1.9621159 0.55639791 5.5420485 1.8921403 0.56674337 5.48347 1.723204 0.5917201 5.5420485 
		1.5542678 0.61669683 5.6834698 1.4842919 0.62704182 5.8248911 1.5542678 0.61669683 
		5.8834696 1.723204 0.5917201 5.8248911 8.8565626 1.5964015 5.6834698 8.9265404 1.5860558 
		5.5420485 8.8565626 1.5964015 5.48347 8.6876278 1.6213777 5.5420485 8.5186901 1.6463544 
		5.6834698 8.4487152 1.6566999 5.8248911 8.5186901 1.6463544 5.8834696 8.6876278 1.6213777 
		5.6834698 1.723204 0.5917201 5.6834698 8.6876278 1.6213777;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface285" -p "polySurface140";
createNode mesh -n "polySurfaceShape288" -p "polySurface285";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape450" -p "polySurface285";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.45853609 0.95841831 
		0.45666334 0.95934492 0.45666334 0.86711997 0.45853609 0.86619335 0.45479059 0.95841831 
		0.45479059 0.86619335 0.4540149 0.95618123 0.4540149 0.86395615 0.84297663 0.32283393 
		0.84375238 0.32507101 0.84375238 0.41729596 0.84297663 0.41505888 0.84562504 0.32599768 
		0.84562504 0.41822261 0.84749788 0.32507101 0.84749788 0.41729596 0.84827358 0.32283393 
		0.84827358 0.41505888 0.45931178 0.95618123 0.45931178 0.86395615 0.84562504 0.3196702 
		0.84749788 0.32059681 0.84562504 0.32283393 0.84375238 0.32059681 0.45666334 0.86395615 
		0.45479059 0.86171913 0.45666334 0.86079252 0.45853609 0.86171913;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 2.7183151 5.6834698 
		1.4842919 2.7079694 5.5420485 1.5542678 2.7183151 5.48347 1.723204 2.7432914 5.5420485 
		1.8921403 2.7682679 5.6834698 1.9621159 2.7786133 5.8248911 1.8921403 2.7682679 5.8834696 
		1.723204 2.7432914 5.8248911 8.5186901 1.688657 5.6834698 8.4487152 1.6783116 5.5420485 
		8.5186901 1.688657 5.48347 8.6876278 1.7136338 5.5420485 8.8565626 1.73861 5.6834698 
		8.9265404 1.7489557 5.8248911 8.8565626 1.73861 5.8834696 8.6876278 1.7136338 5.6834698 
		1.723204 2.7432914 5.6834698 8.6876278 1.7136338;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface286" -p "polySurface140";
createNode mesh -n "polySurfaceShape289" -p "polySurface286";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape451" -p "polySurface286";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.47150147 0.95394403 
		0.46962872 0.95301747 0.46962872 0.86079252 0.47150147 0.86171913 0.46775597 0.95394403 
		0.46775597 0.86171913 0.46698028 0.95618123 0.46698028 0.86395615 0.85594201 0.31615835 
		0.85671771 0.31392124 0.85671771 0.4061462 0.85594201 0.40838331 0.85859054 0.3129946 
		0.85859054 0.40521955 0.8604632 0.31392124 0.8604632 0.4061462 0.86123896 0.31615835 
		0.86123896 0.40838331 0.47227716 0.95618123 0.47227716 0.86395615 0.46962872 0.95618123 
		0.46775597 0.95841831 0.46962872 0.95934492 0.47150147 0.95841831 0.8604632 0.41062039 
		0.85859054 0.41154706 0.85859054 0.40838331 0.85671771 0.41062039;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 2.9689538 5.6834698 
		1.9621159 2.9586082 5.5420485 1.8921403 2.9689538 5.48347 1.723204 2.9939301 5.5420485 
		1.5542678 3.0189066 5.6834698 1.4842919 3.0292521 5.8248911 1.5542678 3.0189066 5.8834696 
		1.723204 2.9939301 5.8248911 8.8565626 3.9986115 5.6834698 8.9265404 3.988266 5.5420485 
		8.8565626 3.9986115 5.48347 8.6876278 4.0235882 5.5420485 8.5186901 4.0485644 5.6834698 
		8.4487152 4.0589099 5.8248911 8.5186901 4.0485644 5.8834696 8.6876278 4.0235882 5.6834698 
		1.723204 2.9939301 5.6834698 8.6876278 4.0235882;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface287" -p "polySurface140";
createNode mesh -n "polySurfaceShape290" -p "polySurface287";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape452" -p "polySurface287";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.48446685 0.95841831 
		0.4825941 0.95934492 0.4825941 0.86711997 0.48446685 0.86619335 0.48072138 0.95841831 
		0.48072138 0.86619335 0.47994566 0.95618123 0.47994566 0.86395615 0.86890739 0.31615835 
		0.86968315 0.31839544 0.86968315 0.41062039 0.86890739 0.40838331 0.87155581 0.31932208 
		0.87155581 0.41154706 0.87342864 0.31839544 0.87342864 0.41062039 0.87420434 0.31615835 
		0.87420434 0.40838331 0.48524255 0.95618123 0.48524255 0.86395615 0.87155581 0.3129946 
		0.87342864 0.31392124 0.87155581 0.31615835 0.86968315 0.31392124 0.4825941 0.86395615 
		0.48072138 0.86171913 0.4825941 0.86079252 0.48446685 0.86171913;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 5.1205254 5.6834698 
		1.4842919 5.1101799 5.5420485 1.5542678 5.1205254 5.48347 1.723204 5.1455016 5.5420485 
		1.8921403 5.1704783 5.6834698 1.9621159 5.1808238 5.8248911 1.8921403 5.1704783 5.8834696 
		1.723204 5.1455016 5.8248911 8.5186901 4.0908675 5.6834698 8.4487152 4.0805216 5.5420485 
		8.5186901 4.0908675 5.48347 8.6876278 4.1158438 5.5420485 8.8565626 4.1408205 5.6834698 
		8.9265404 4.151166 5.8248911 8.8565626 4.1408205 5.8834696 8.6876278 4.1158438 5.6834698 
		1.723204 5.1455016 5.6834698 8.6876278 4.1158438;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface288" -p "polySurface140";
createNode mesh -n "polySurfaceShape291" -p "polySurface288";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape453" -p "polySurface288";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.49743223 0.95394403 
		0.49555948 0.95301747 0.49555948 0.86079252 0.49743223 0.86171913 0.49368677 0.95394403 
		0.49368677 0.86171913 0.49291104 0.95618123 0.49291104 0.86395615 0.88187277 0.31615835 
		0.88264847 0.31392124 0.88264847 0.4061462 0.88187277 0.40838331 0.88452131 0.3129946 
		0.88452131 0.40521955 0.88639396 0.31392124 0.88639396 0.4061462 0.88716972 0.31615835 
		0.88716972 0.40838331 0.49820796 0.95618123 0.49820796 0.86395615 0.49555948 0.95618123 
		0.49368677 0.95841831 0.49555948 0.95934492 0.49743223 0.95841831 0.88639396 0.41062039 
		0.88452131 0.41154706 0.88452131 0.40838331 0.88264847 0.41062039;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 5.59025 5.6834698 1.9621159 
		5.5799046 5.5420485 1.8921403 5.59025 5.48347 1.723204 5.6152267 5.5420485 1.5542678 
		5.640203 5.6834698 1.4842919 5.6505485 5.8248911 1.5542678 5.640203 5.8834696 1.723204 
		5.6152267 5.8248911 8.8565626 6.6199079 5.6834698 8.9265404 6.6095624 5.5420485 8.8565626 
		6.6199079 5.48347 8.6876278 6.6448841 5.5420485 8.5186901 6.6698608 5.6834698 8.4487152 
		6.6802063 5.8248911 8.5186901 6.6698608 5.8834696 8.6876278 6.6448841 5.6834698 1.723204 
		5.6152267 5.6834698 8.6876278 6.6448841;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface289" -p "polySurface140";
createNode mesh -n "polySurfaceShape292" -p "polySurface289";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape454" -p "polySurface289";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.51039761 0.95841831 
		0.50852489 0.95934492 0.50852489 0.86711997 0.51039761 0.86619335 0.50665212 0.95841831 
		0.50665212 0.86619335 0.50587642 0.95618123 0.50587642 0.86395615 0.89483821 0.30078477 
		0.89561391 0.30302185 0.89561391 0.3952468 0.89483821 0.39300975 0.89748663 0.30394849 
		0.89748663 0.39617348 0.89935941 0.30302185 0.89935941 0.3952468 0.9001351 0.30078477 
		0.9001351 0.39300975 0.51117331 0.95618123 0.51117331 0.86395615 0.89748663 0.29762101 
		0.89935941 0.29854766 0.89748663 0.30078477 0.89561391 0.29854766 0.50852489 0.86395615 
		0.50665212 0.86171913 0.50852489 0.86079252 0.51039761 0.86171913;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 7.7418213 5.6834698 
		1.4842919 7.7314758 5.5420485 1.5542678 7.7418213 5.48347 1.723204 7.766798 5.5420485 
		1.8921403 7.7917747 5.6834698 1.9621159 7.8021202 5.8248911 1.8921403 7.7917747 5.8834696 
		1.723204 7.766798 5.8248911 8.5186901 6.7121639 5.6834698 8.4487152 6.7018185 5.5420485 
		8.5186901 6.7121639 5.48347 8.6876278 6.7371402 5.5420485 8.8565626 6.7621169 5.6834698 
		8.9265404 6.7724624 5.8248911 8.8565626 6.7621169 5.8834696 8.6876278 6.7371402 5.6834698 
		1.723204 7.766798 5.6834698 8.6876278 6.7371402;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface290" -p "polySurface140";
createNode mesh -n "polySurfaceShape293" -p "polySurface290";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape455" -p "polySurface290";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.52336305 0.95394403 
		0.52149028 0.95301747 0.52149028 0.86079252 0.52336305 0.86171913 0.51961756 0.95394403 
		0.51961756 0.86171913 0.51884186 0.95618123 0.51884186 0.86395615 0.9078036 0.30078477 
		0.90857923 0.29854766 0.90857923 0.39077261 0.9078036 0.39300975 0.91045207 0.29762101 
		0.91045207 0.38984597 0.91232473 0.29854766 0.91232473 0.39077261 0.91310048 0.30078477 
		0.91310048 0.39300975 0.52413875 0.95618123 0.52413875 0.86395615 0.52149028 0.95618123 
		0.51961756 0.95841831 0.52149028 0.95934492 0.52336305 0.95841831 0.91232473 0.3952468 
		0.91045207 0.39617348 0.91045207 0.39300975 0.90857923 0.3952468;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 7.9924603 5.6834698 
		1.9621159 7.9821148 5.5420485 1.8921403 7.9924603 5.48347 1.723204 8.017437 5.5420485 
		1.5542678 8.0424137 5.6834698 1.4842919 8.0527592 5.8248911 1.5542678 8.0424137 5.8834696 
		1.723204 8.017437 5.8248911 8.8565626 9.0221186 5.6834698 8.9265404 9.0117722 5.5420485 
		8.8565626 9.0221186 5.48347 8.6876278 9.0470943 5.5420485 8.5186901 9.0720711 5.6834698 
		8.4487152 9.0824165 5.8248911 8.5186901 9.0720711 5.8834696 8.6876278 9.0470943 5.6834698 
		1.723204 8.017437 5.6834698 8.6876278 9.0470943;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface291" -p "polySurface140";
createNode mesh -n "polySurfaceShape294" -p "polySurface291";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape456" -p "polySurface291";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.53632843 0.97447699 
		0.53445566 0.97540361 0.53445566 0.88317865 0.53632843 0.8822521 0.53258294 0.97447699 
		0.53258294 0.8822521 0.53180724 0.97223997 0.53180724 0.8800149 0.92076898 0.30078471 
		0.92154461 0.30302179 0.92154461 0.39524674 0.92076898 0.39300966 0.92341739 0.30394843 
		0.92341739 0.39617342 0.92529011 0.30302179 0.92529011 0.39524674 0.9260658 0.30078471 
		0.9260658 0.39300966 0.53710413 0.97223997 0.53710413 0.8800149 0.92341739 0.29762095 
		0.92529011 0.2985476 0.92341739 0.30078471 0.92154461 0.2985476 0.53445566 0.8800149 
		0.53258294 0.87777781 0.53445566 0.8768512 0.53632843 0.87777781;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 10.144032 5.6834698 
		1.4842919 10.133686 5.5420485 1.5542678 10.144032 5.48347 1.723204 10.169008 5.5420485 
		1.8921403 10.193985 5.6834698 1.9621159 10.20433 5.8248911 1.8921403 10.193985 5.8834696 
		1.723204 10.169008 5.8248911 8.5186901 9.1143742 5.6834698 8.4487152 9.1040287 5.5420485 
		8.5186901 9.1143742 5.48347 8.6876278 9.1393509 5.5420485 8.8565626 9.1643267 5.6834698 
		8.9265404 9.1746731 5.8248911 8.8565626 9.1643267 5.8834696 8.6876278 9.1393509 5.6834698 
		1.723204 10.169008 5.6834698 8.6876278 9.1393509;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface292" -p "polySurface140";
createNode mesh -n "polySurfaceShape295" -p "polySurface292";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape457" -p "polySurface292";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.54929382 0.97000277 
		0.54742104 0.96907616 0.54742104 0.8768512 0.54929382 0.87777781 0.54554832 0.97000277 
		0.54554832 0.87777781 0.54477262 0.97223997 0.54477262 0.8800149 0.9337343 0.30078471 
		0.93450999 0.2985476 0.93450999 0.39077255 0.9337343 0.39300966 0.93638277 0.29762095 
		0.93638277 0.38984591 0.93825549 0.2985476 0.93825549 0.39077255 0.93903124 0.30078471 
		0.93903124 0.39300966 0.55006951 0.97223997 0.55006951 0.8800149 0.54742104 0.97223997 
		0.54554832 0.97447699 0.54742104 0.97540361 0.54929382 0.97447699 0.93825549 0.39524674 
		0.93638277 0.39617342 0.93638277 0.39300966 0.93450999 0.39524674;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 10.410374 5.6834698 
		1.9621159 10.400028 5.5420485 1.8921403 10.410374 5.48347 1.723204 10.43535 5.5420485 
		1.5542678 10.460327 5.6834698 1.4842919 10.470672 5.8248911 1.5542678 10.460327 5.8834696 
		1.723204 10.43535 5.8248911 8.8565626 11.440031 5.6834698 8.9265404 11.429686 5.5420485 
		8.8565626 11.440031 5.48347 8.6876278 11.465008 5.5420485 8.5186901 11.489985 5.6834698 
		8.4487152 11.50033 5.8248911 8.5186901 11.489985 5.8834696 8.6876278 11.465008 5.6834698 
		1.723204 10.43535 5.6834698 8.6876278 11.465008;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface293" -p "polySurface140";
createNode mesh -n "polySurfaceShape296" -p "polySurface293";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape458" -p "polySurface293";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.56225914 0.97447699 
		0.56038648 0.97540361 0.56038648 0.88317865 0.56225914 0.8822521 0.5585137 0.97447699 
		0.5585137 0.8822521 0.55773801 0.97223997 0.55773801 0.8800149 0.94316608 0.40313041 
		0.94394177 0.40536755 0.94394177 0.49759248 0.94316608 0.49535543 0.94581455 0.40629414 
		0.94581455 0.49851915 0.94768727 0.40536755 0.94768727 0.49759248 0.94846302 0.40313041 
		0.94846302 0.49535543 0.56303489 0.97223997 0.56303489 0.8800149 0.94581455 0.39996666 
		0.94768727 0.40089333 0.94581455 0.40313041 0.94394177 0.40089333 0.56038648 0.8800149 
		0.5585137 0.87777781 0.56038648 0.8768512 0.56225914 0.87777781;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 12.561945 5.6834698 
		1.4842919 12.5516 5.5420485 1.5542678 12.561945 5.48347 1.723204 12.586922 5.5420485 
		1.8921403 12.611897 5.6834698 1.9621159 12.622243 5.8248911 1.8921403 12.611897 5.8834696 
		1.723204 12.586922 5.8248911 8.5186901 11.532287 5.6834698 8.4487152 11.521941 5.5420485 
		8.5186901 11.532287 5.48347 8.6876278 11.557263 5.5420485 8.8565626 11.58224 5.6834698 
		8.9265404 11.592586 5.8248911 8.8565626 11.58224 5.8834696 8.6876278 11.557263 5.6834698 
		1.723204 12.586922 5.6834698 8.6876278 11.557263;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface294" -p "polySurface140";
createNode mesh -n "polySurfaceShape297" -p "polySurface294";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape459" -p "polySurface294";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.57522458 0.97000277 
		0.5733518 0.96907616 0.5733518 0.8768512 0.57522458 0.87777781 0.57147914 0.97000277 
		0.57147914 0.87777781 0.57070339 0.97223997 0.57070339 0.8800149 0.93203849 0.40313041 
		0.93281418 0.40089333 0.93281418 0.49311829 0.93203849 0.49535543 0.93468696 0.39996666 
		0.93468696 0.49219161 0.93655968 0.40089333 0.93655968 0.49311829 0.93733543 0.40313041 
		0.93733543 0.49535543 0.57600027 0.97223997 0.57600027 0.8800149 0.5733518 0.97223997 
		0.57147914 0.97447699 0.5733518 0.97540361 0.57522458 0.97447699 0.93655968 0.49759248 
		0.93468696 0.49851915 0.93468696 0.49535543 0.93281418 0.49759248;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 12.812584 5.6834698 
		1.9621159 12.802238 5.5420485 1.8921403 12.812584 5.48347 1.723204 12.83756 5.5420485 
		1.5542678 12.862536 5.6834698 1.4842919 12.872882 5.8248911 1.5542678 12.862536 5.8834696 
		1.723204 12.83756 5.8248911 8.8565626 13.842241 5.6834698 8.9265404 13.831896 5.5420485 
		8.8565626 13.842241 5.48347 8.6876278 13.867218 5.5420485 8.5186901 13.892194 5.6834698 
		8.4487152 13.90254 5.8248911 8.5186901 13.892194 5.8834696 8.6876278 13.867218 5.6834698 
		1.723204 12.83756 5.6834698 8.6876278 13.867218;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface295" -p "polySurface140";
createNode mesh -n "polySurfaceShape298" -p "polySurface295";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape460" -p "polySurface295";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.5881899 0.97447699 
		0.58631724 0.97540361 0.58631724 0.88317865 0.5881899 0.8822521 0.58444446 0.97447699 
		0.58444446 0.8822521 0.58366877 0.97223997 0.58366877 0.8800149 0.92091089 0.40313041 
		0.92168659 0.40536755 0.92168659 0.49759248 0.92091089 0.49535543 0.92355937 0.40629414 
		0.92355937 0.49851915 0.92543209 0.40536755 0.92543209 0.49759248 0.92620784 0.40313041 
		0.92620784 0.49535543 0.58896565 0.97223997 0.58896565 0.8800149 0.92355937 0.39996666 
		0.92543209 0.40089333 0.92355937 0.40313041 0.92168659 0.40089333 0.58631724 0.8800149 
		0.58444446 0.87777781 0.58631724 0.8768512 0.5881899 0.87777781;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 14.964155 5.6834698 
		1.4842919 14.95381 5.5420485 1.5542678 14.964155 5.48347 1.723204 14.989132 5.5420485 
		1.8921403 15.014108 5.6834698 1.9621159 15.024453 5.8248911 1.8921403 15.014108 5.8834696 
		1.723204 14.989132 5.8248911 8.5186901 13.934498 5.6834698 8.4487152 13.924151 5.5420485 
		8.5186901 13.934498 5.48347 8.6876278 13.959474 5.5420485 8.8565626 13.98445 5.6834698 
		8.9265404 13.994796 5.8248911 8.8565626 13.98445 5.8834696 8.6876278 13.959474 5.6834698 
		1.723204 14.989132 5.6834698 8.6876278 13.959474;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface296" -p "polySurface140";
createNode mesh -n "polySurfaceShape299" -p "polySurface296";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape461" -p "polySurface296";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.6011554 0.97000277 
		0.59928256 0.96907616 0.59928256 0.8768512 0.6011554 0.87777781 0.5974099 0.97000277 
		0.5974099 0.87777781 0.59663415 0.97223997 0.59663415 0.8800149 0.90978336 0.40313047 
		0.910559 0.40089339 0.910559 0.49311835 0.90978336 0.49535549 0.91243184 0.39996675 
		0.91243184 0.49219167 0.91430449 0.40089339 0.91430449 0.49311835 0.91508025 0.40313047 
		0.91508025 0.49535549 0.60193104 0.97223997 0.60193104 0.8800149 0.59928256 0.97223997 
		0.5974099 0.97447699 0.59928256 0.97540361 0.6011554 0.97447699 0.91430449 0.49759257 
		0.91243184 0.49851921 0.91243184 0.49535549 0.910559 0.49759257;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 15.43388 5.6834698 1.9621159 
		15.423534 5.5420485 1.8921403 15.43388 5.48347 1.723204 15.458857 5.5420485 1.5542678 
		15.483833 5.6834698 1.4842919 15.494179 5.8248911 1.5542678 15.483833 5.8834696 1.723204 
		15.458857 5.8248911 8.8565626 16.463537 5.6834698 8.9265404 16.453192 5.5420485 8.8565626 
		16.463537 5.48347 8.6876278 16.488514 5.5420485 8.5186901 16.513491 5.6834698 8.4487152 
		16.523836 5.8248911 8.5186901 16.513491 5.8834696 8.6876278 16.488514 5.6834698 1.723204 
		15.458857 5.6834698 8.6876278 16.488514;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface297" -p "polySurface140";
createNode mesh -n "polySurfaceShape300" -p "polySurface297";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape462" -p "polySurface297";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.61412084 0.97447699 
		0.612248 0.97540361 0.612248 0.88317865 0.61412084 0.8822521 0.61037534 0.97447699 
		0.61037534 0.8822521 0.60959959 0.97223997 0.60959959 0.8800149 0.89865577 0.40313047 
		0.89943141 0.40536761 0.89943141 0.49759257 0.89865577 0.49535549 0.90130424 0.4062942 
		0.90130424 0.49851921 0.9031769 0.40536761 0.9031769 0.49759257 0.90395266 0.40313047 
		0.90395266 0.49535549 0.61489648 0.97223997 0.61489648 0.8800149 0.90130424 0.39996675 
		0.9031769 0.40089339 0.90130424 0.40313047 0.89943141 0.40089339 0.612248 0.8800149 
		0.61037534 0.87777781 0.612248 0.8768512 0.61412084 0.87777781;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 17.585451 5.6834698 
		1.4842919 17.575106 5.5420485 1.5542678 17.585451 5.48347 1.723204 17.610428 5.5420485 
		1.8921403 17.635405 5.6834698 1.9621159 17.64575 5.8248911 1.8921403 17.635405 5.8834696 
		1.723204 17.610428 5.8248911 8.5186901 16.555794 5.6834698 8.4487152 16.545448 5.5420485 
		8.5186901 16.555794 5.48347 8.6876278 16.58077 5.5420485 8.8565626 16.605747 5.6834698 
		8.9265404 16.616093 5.8248911 8.8565626 16.605747 5.8834696 8.6876278 16.58077 5.6834698 
		1.723204 17.610428 5.6834698 8.6876278 16.58077;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface298" -p "polySurface140";
createNode mesh -n "polySurfaceShape301" -p "polySurface298";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape463" -p "polySurface298";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.62708616 0.97000277 
		0.62521344 0.96907616 0.62521344 0.8768512 0.62708616 0.87777781 0.62334067 0.97000277 
		0.62334067 0.87777781 0.62256497 0.97223997 0.62256497 0.8800149 0.88752818 0.41850406 
		0.88830382 0.41626698 0.88830382 0.50849193 0.88752818 0.51072907 0.89017665 0.4153403 
		0.89017665 0.50756526 0.89204931 0.41626698 0.89204931 0.50849193 0.89282507 0.41850406 
		0.89282507 0.51072907 0.62786186 0.97223997 0.62786186 0.8800149 0.62521344 0.97223997 
		0.62334067 0.97447699 0.62521344 0.97540361 0.62708616 0.97447699 0.89204931 0.51296616 
		0.89017665 0.51389283 0.89017665 0.51072907 0.88830382 0.51296616;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.8921403 17.83609 5.6834698 1.9621159 
		17.825745 5.5420485 1.8921403 17.83609 5.48347 1.723204 17.861067 5.5420485 1.5542678 
		17.886044 5.6834698 1.4842919 17.896389 5.8248911 1.5542678 17.886044 5.8834696 1.723204 
		17.861067 5.8248911 8.8565626 18.865747 5.6834698 8.9265404 18.855402 5.5420485 8.8565626 
		18.865747 5.48347 8.6876278 18.890724 5.5420485 8.5186901 18.915701 5.6834698 8.4487152 
		18.926046 5.8248911 8.5186901 18.915701 5.8834696 8.6876278 18.890724 5.6834698 1.723204 
		17.861067 5.6834698 8.6876278 18.890724;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 1 0 20 
		f 3 -2 -26 26 
		mu 0 3 4 1 20 
		f 3 -3 -27 27 
		mu 0 3 6 4 20 
		f 3 -4 -28 28 
		mu 0 3 21 6 20 
		f 3 -5 -29 29 
		mu 0 3 22 21 20 
		f 3 -6 -30 30 
		mu 0 3 23 22 20 
		f 3 -7 -31 31 
		mu 0 3 18 23 20 
		f 3 -8 -32 24 
		mu 0 3 0 18 20 
		f 3 8 33 -33 
		mu 0 3 24 25 26 
		f 3 9 34 -34 
		mu 0 3 25 27 26 
		f 3 10 35 -35 
		mu 0 3 27 11 26 
		f 3 11 36 -36 
		mu 0 3 11 10 26 
		f 3 12 37 -37 
		mu 0 3 10 13 26 
		f 3 13 38 -38 
		mu 0 3 13 15 26 
		f 3 14 39 -39 
		mu 0 3 15 17 26 
		f 3 15 32 -40 
		mu 0 3 17 24 26 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface299" -p "polySurface140";
createNode mesh -n "polySurfaceShape302" -p "polySurface299";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape464" -p "polySurface299";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:23]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.6400516 0.97447699 
		0.63817877 0.97540361 0.63817877 0.88317865 0.6400516 0.8822521 0.63630611 0.97447699 
		0.63630611 0.8822521 0.63553035 0.97223997 0.63553035 0.8800149 0.87640059 0.41850406 
		0.87717623 0.4207412 0.87717623 0.51296616 0.87640059 0.51072907 0.87904906 0.42166778 
		0.87904906 0.51389283 0.88092172 0.4207412 0.88092172 0.51296616 0.88169748 0.41850406 
		0.88169748 0.51072907 0.6408273 0.97223997 0.6408273 0.8800149 0.87904906 0.4153403 
		0.88092172 0.41626698 0.87904906 0.41850406 0.87717623 0.41626698 0.63817877 0.8800149 
		0.63630611 0.87777781 0.63817877 0.8768512 0.6400516 0.87777781;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  5.8248911 1.5542678 19.987661 5.6834698 
		1.4842919 19.977316 5.5420485 1.5542678 19.987661 5.48347 1.723204 20.012638 5.5420485 
		1.8921403 20.037615 5.6834698 1.9621159 20.04796 5.8248911 1.8921403 20.037615 5.8834696 
		1.723204 20.012638 5.8248911 8.5186901 18.958004 5.6834698 8.4487152 18.947659 5.5420485 
		8.5186901 18.958004 5.48347 8.6876278 18.982981 5.5420485 8.8565626 19.007957 5.6834698 
		8.9265404 19.018303 5.8248911 8.8565626 19.007957 5.8834696 8.6876278 18.982981 5.6834698 
		1.723204 20.012638 5.6834698 8.6876278 18.982981;
	setAttr -s 40 ".ed[0:39]"  0 1 1 1 2 1 
		2 3 1 3 4 1 4 5 1 5 6 1 
		6 7 1 7 0 1 8 9 1 9 10 1 
		10 11 1 11 12 1 12 13 1 13 14 1 
		14 15 1 15 8 1 0 8 1 1 9 1 
		2 10 1 3 11 1 4 12 1 5 13 1 
		6 14 1 7 15 1 16 0 1 16 1 1 
		16 2 1 16 3 1 16 4 1 16 5 1 
		16 6 1 16 7 1 8 17 1 9 17 1 
		10 17 1 11 17 1 12 17 1 13 17 1 
		14 17 1 15 17 1;
	setAttr -s 24 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17 
		mu 0 4 0 1 2 3 
		f 4 1 18 -10 -18 
		mu 0 4 1 4 5 2 
		f 4 2 19 -11 -19 
		mu 0 4 4 6 7 5 
		f 4 3 20 -12 -20 
		mu 0 4 8 9 10 11 
		f 4 4 21 -13 -21 
		mu 0 4 9 12 13 10 
		f 4 5 22 -14 -22 
		mu 0 4 12 14 15 13 
		f 4 6 23 -15 -23 
		mu 0 4 14 16 17 15 
		f 4 7 16 -16 -24 
		mu 0 4 18 0 3 19 
		f 3 -1 -25 25 
		mu 0 3 20 21 22 
		f 3 -2 -26 26 
		mu 0 3 23 20 22 
		f 3 -3 -27 27 
		mu 0 3 8 23 22 
		f 3 -4 -28 28 
		mu 0 3 9 8 22 
		f 3 -5 -29 29 
		mu 0 3 12 9 22 
		f 3 -6 -30 30 
		mu 0 3 14 12 22 
		f 3 -7 -31 31 
		mu 0 3 16 14 22 
		f 3 -8 -32 24 
		mu 0 3 21 16 22 
		f 3 8 33 -33 
		mu 0 3 3 2 24 
		f 3 9 34 -34 
		mu 0 3 2 5 24 
		f 3 10 35 -35 
		mu 0 3 5 7 24 
		f 3 11 36 -36 
		mu 0 3 7 25 24 
		f 3 12 37 -37 
		mu 0 3 25 26 24 
		f 3 13 38 -38 
		mu 0 3 26 27 24 
		f 3 14 39 -39 
		mu 0 3 27 19 24 
		f 3 15 32 -40 
		mu 0 3 19 3 24 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface300" -p "polySurface140";
	setAttr ".t" -type "double3" 1.1335211689467615 -7.5266443052231988 0.80725243209456821 ;
	setAttr ".r" -type "double3" -2.7010035070322944 -15.543876485026964 10.97477629277388 ;
	setAttr ".s" -type "double3" 1.7211291996042002 2.9756242496396657 2.6297419834191591 ;
	setAttr ".rp" -type "double3" -5.235931396484375 8.8397703170776367 -19.543638229370117 ;
	setAttr ".sp" -type "double3" -5.235931396484375 8.8397703170776367 -19.543638229370117 ;
createNode mesh -n "polySurfaceShape300" -p "polySurface300";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape465" -p "polySurface300";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.38756889 0.96427786 
		0.39902708 0.96427786 0.39902708 0.97575915 0.38756889 0.97575915 0.56050438 0.97919697 
		0.57196259 0.97919697 0.57196259 0.99458736 0.56050438 0.99458736 0.45672464 0.96313828 
		0.4681828 0.96313828 0.4681828 0.97461963 0.45672464 0.97461963 0.69890803 0.89842039 
		0.71036619 0.89842039 0.71036619 0.91381079 0.69890803 0.91381079 0.54319239 0.99458736 
		0.54319239 0.97919697 0.55467361 0.97919697 0.55467361 0.99458736 0.6815961 0.92001671 
		0.6815961 0.90462625 0.69307733 0.90462625 0.69307733 0.92001671;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 -0.089751832 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.089751832 ;
	setAttr -s 8 ".vt[0:7]"  -5.6685677 8.4062614 -18.96253 -4.8032951 
		8.4062614 -18.96253 -5.6685677 9.2732792 -18.96253 -4.8032951 9.2732792 -18.96253 
		-5.6685677 9.2732792 -20.124746 -4.8032951 9.2732792 -20.124746 -5.6685677 8.4062614 
		-20.124746 -4.8032951 8.4062614 -20.124746;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface301" -p "polySurface140";
	setAttr ".t" -type "double3" 0.85254321913161935 -7.4307012000368449 37.891844979495154 ;
	setAttr ".r" -type "double3" -2.688348043388372 14.543442758365678 9.574927108733327 ;
	setAttr ".s" -type "double3" 1.7353825706053025 3.0002666044377508 2.6515199464770589 ;
	setAttr ".rp" -type "double3" -5.235931396484375 8.8397703170776367 -19.543638229370117 ;
	setAttr ".sp" -type "double3" -5.235931396484375 8.8397703170776367 -19.543638229370117 ;
createNode mesh -n "polySurfaceShape301" -p "polySurface301";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape466" -p "polySurface301";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.38756889 0.96427786 
		0.39902708 0.96427786 0.39902708 0.97575915 0.38756889 0.97575915 0.56050438 0.97919697 
		0.57196259 0.97919697 0.57196259 0.99458736 0.56050438 0.99458736 0.45672464 0.96313828 
		0.4681828 0.96313828 0.4681828 0.97461963 0.45672464 0.97461963 0.69890803 0.89842039 
		0.71036619 0.89842039 0.71036619 0.91381079 0.69890803 0.91381079 0.54319239 0.99458736 
		0.54319239 0.97919697 0.55467361 0.97919697 0.55467361 0.99458736 0.6815961 0.92001671 
		0.6815961 0.90462625 0.69307733 0.90462625 0.69307733 0.92001671;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[2]" -type "float3" -3.7252903e-009 0 -0.11277358 ;
	setAttr ".pt[4]" -type "float3" 0 3.7252903e-009 0.11277374 ;
	setAttr -s 8 ".vt[0:7]"  -5.6685677 8.4062614 -18.96253 -4.8032951 
		8.4062614 -18.96253 -5.6685677 9.2732792 -18.96253 -4.8032951 9.2732792 -18.96253 
		-5.6685677 9.2732792 -20.124746 -4.8032951 9.2732792 -20.124746 -5.6685677 8.4062614 
		-20.124746 -4.8032951 8.4062614 -20.124746;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "scaffoldFloor:polySurface140";
createNode transform -n "scaffoldFloor:polySurface142" -p "scaffoldFloor:polySurface140";
createNode mesh -n "scaffoldFloor:polySurfaceShape145" -p "scaffoldFloor:polySurface142";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape467" -p "scaffoldFloor:polySurface142";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.64849573 0.8768512 
		0.65349257 0.8768512 0.65349257 0.90083289 0.64849573 0.90083289 0.20952463 0.001992048 
		0.21452145 0.001992048 0.21452145 0.55110157 0.20952463 0.55110157 0.67072213 0.8768512 
		0.6757189 0.8768512 0.6757189 0.90083289 0.67072213 0.90083289 0.22063781 0.001992048 
		0.22563463 0.001992048 0.22563463 0.55110157 0.22063781 0.55110157 0.23175099 0.55110157 
		0.23175099 0.0019920354 0.25573266 0.0019920354 0.25573266 0.55110157 0.26323843 
		0.55110151 0.26323843 0.0019920354 0.28722012 0.0019920354 0.28722012 0.55110151;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.570487 0.20865738 20.733164 5.9478254 
		0.20865738 20.733164 5.570487 2.019649 20.733164 5.9478254 2.019649 20.733164 5.570487 
		2.019649 -20.733164 5.9478254 2.019649 -20.733164 5.570487 0.20865738 -20.733164 
		5.9478254 0.20865738 -20.733164;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "scaffoldFloor:polySurface143" -p "scaffoldFloor:polySurface140";
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".s" -type "double3" 1 1.2611110660102638 1 ;
createNode mesh -n "scaffoldFloor:polySurfaceShape146" -p "scaffoldFloor:polySurface143";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape468" -p "scaffoldFloor:polySurface143";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.65960896 0.8768512 
		0.66460574 0.8768512 0.66460574 0.90083289 0.65960896 0.90083289 0.29472578 0.001992048 
		0.29972261 0.001992048 0.29972261 0.55110157 0.29472578 0.55110157 0.68183529 0.8768512 
		0.68683213 0.8768512 0.68683213 0.90083289 0.68183529 0.90083289 0.30583897 0.001992048 
		0.31083581 0.001992048 0.31083581 0.55110157 0.30583897 0.55110157 0.3169522 0.55110157 
		0.3169522 0.0019920354 0.34093386 0.0019920354 0.34093386 0.55110157 0.34843954 0.55110151 
		0.34843954 0.0019920354 0.37242126 0.0019920354 0.37242126 0.55110151;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -6.0337138 0.20865738 20.733164 -5.6563754 
		0.20865738 20.733164 -6.0337138 2.019649 20.733164 -5.6563754 2.019649 20.733164 
		-6.0337138 2.019649 -20.733164 -5.6563754 2.019649 -20.733164 -6.0337138 0.20865738 
		-20.733164 -5.6563754 0.20865738 -20.733164;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 4 5 6 7 
		f 4 2 9 -4 -9 
		mu 0 4 8 9 10 11 
		f 4 3 11 -1 -11 
		mu 0 4 12 13 14 15 
		f 4 -12 -10 -8 -6 
		mu 0 4 16 17 18 19 
		f 4 10 4 6 8 
		mu 0 4 20 21 22 23 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "scaffoldFloor:polySurface144" -p "scaffoldFloor:polySurface140";
createNode mesh -n "scaffoldFloor:polySurfaceShape147" -p "scaffoldFloor:polySurface144";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape469" -p "scaffoldFloor:polySurface144";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.87631619 0.001992048 
		0.88131309 0.001992048 0.88131309 0.14601317 0.87631619 0.14601317 0.89242625 0.14601317 
		0.88742942 0.14601317 0.88742942 0.001992048 0.89242625 0.001992048 0.92252415 0.001992048 
		0.92252415 0.14601317 0.89854252 0.14601317 0.89854252 0.001992048 0.92448127 0.29382765 
		0.92448127 0.14980651 0.94846302 0.14980651 0.94846302 0.29382765;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.407413 0.20865738 -20.355276 5.407413 
		0.20865738 -20.732615 5.407413 2.019649 -20.355276 5.407413 2.019649 -20.732615 -5.4684262 
		2.019649 -20.355276 -5.4684262 2.019649 -20.732615 -5.4684262 0.20865738 -20.355276 
		-5.4684262 0.20865738 -20.732615;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 4 1 7 -3 -7 
		mu 0 4 0 1 2 3 
		f 4 3 11 -1 -11 
		mu 0 4 4 5 6 7 
		f 4 -12 -10 -8 -6 
		mu 0 4 8 9 10 11 
		f 4 10 4 6 8 
		mu 0 4 12 13 14 15 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "scaffoldFloor:polySurface145" -p "scaffoldFloor:polySurface140";
createNode mesh -n "scaffoldFloor:polySurfaceShape148" -p "scaffoldFloor:polySurface145";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape470" -p "scaffoldFloor:polySurface145";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.84320152 0.17185578 
		0.84819841 0.17185578 0.84819841 0.31587687 0.84320152 0.31587687 0.91865057 0.29382765 
		0.91365373 0.29382765 0.91365373 0.14980653 0.91865057 0.14980653 0.90782303 0.14980653 
		0.90782303 0.29382765 0.8838414 0.29382765 0.8838414 0.14980653 0.85402906 0.3092013 
		0.85402906 0.16518016 0.87801081 0.16518016 0.87801081 0.3092013;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  5.407413 0.20865738 20.741072 5.407413 0.20865738 
		20.363733 5.407413 2.019649 20.741072 5.407413 2.019649 20.363733 -5.4684262 2.019649 
		20.741072 -5.4684262 2.019649 20.363733 -5.4684262 0.20865738 20.741072 -5.4684262 
		0.20865738 20.363733;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 
		4 5 0 6 7 0 0 2 0 1 3 0 
		2 4 0 3 5 0 4 6 0 5 7 0 
		6 0 0 7 1 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 4 1 7 -3 -7 
		mu 0 4 0 1 2 3 
		f 4 3 11 -1 -11 
		mu 0 4 4 5 6 7 
		f 4 -12 -10 -8 -6 
		mu 0 4 8 9 10 11 
		f 4 10 4 6 8 
		mu 0 4 12 13 14 15 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n"
		+ "                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode blinn -n "blinn1";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.68627453 0.68627453 0.68627453 ;
createNode groupId -n "groupId240";
	setAttr ".ihi" 0;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode lambert -n "Metalz";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 154 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 154 ".gn";
createNode materialInfo -n "materialInfo39";
createNode file -n "file34";
	setAttr ".ftn" -type "string" "G:/School/SAIC/Window Cleaner/WindowCleaner/Assets/Models/Window Cleaner Maya//sourceimages/fractal1-Base.jpg";
createNode place2dTexture -n "place2dTexture2";
createNode phongE -n "phongE1";
	setAttr ".c" -type "float3" 0.29411766 0.29411766 0.29411766 ;
createNode lambert -n "MetalzYellow";
createNode file -n "file35";
	setAttr ".ftn" -type "string" "G:/School/SAIC/Window Cleaner/WindowCleaner/Assets/Models/Window Cleaner Maya//sourceimages/fractal1-BaseYellow.jpg";
createNode place2dTexture -n "place2dTexture3";
createNode shadingEngine -n "MetalzYellowSG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo40";
createNode shadingEngine -n "scaffoldFloor:lambert4SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "scaffoldFloor:materialInfo39";
createNode lambert -n "scaffoldFloor:Metalz";
createNode file -n "scaffoldFloor:file34";
	setAttr ".ftn" -type "string" "G:/School/SAIC/Window Cleaner/WindowCleaner/Assets/Models/Window Cleaner Maya//sourceimages/fractal1-Base.jpg";
createNode place2dTexture -n "scaffoldFloor:place2dTexture2";
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId561";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate10";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId562";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate11";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId563";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate12";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId564";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate13";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId565";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate14";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId566";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate15";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId567";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate16";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId568";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate17";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId569";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate18";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId570";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate19";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId571";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate20";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId572";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate21";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId573";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate22";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId574";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate23";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId575";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode polyTriangulate -n "polyTriangulate24";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId576";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate25";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId577";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate26";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId578";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate27";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId579";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode polyTriangulate -n "polyTriangulate28";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId580";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate29";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId581";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode polyTriangulate -n "polyTriangulate30";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId582";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate31";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId583";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate32";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId584";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate33";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId585";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate34";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId586";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:59]";
createNode polyTriangulate -n "polyTriangulate35";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId587";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate36";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId588";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate37";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId589";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate38";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId590";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate39";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId591";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate40";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId592";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate41";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId593";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate42";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId594";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate43";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId595";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate44";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId596";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate45";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId597";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate46";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId598";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate47";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId599";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate48";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId600";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate49";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId601";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate50";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId602";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate51";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId603";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate52";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId604";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate53";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId605";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate54";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId606";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate55";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId607";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate56";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId608";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate57";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId609";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate58";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId610";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate59";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId611";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate60";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId612";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate61";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId613";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate62";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId614";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate63";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId615";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate64";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId616";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate65";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId617";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate66";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId618";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate67";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId619";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate68";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId620";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate69";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId621";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate70";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId622";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate71";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId623";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate72";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId624";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate73";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId625";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate74";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId626";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate75";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId627";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate76";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId628";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate77";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId629";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate78";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId630";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate79";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId631";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate80";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId632";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate81";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId633";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate82";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId634";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate83";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId635";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate84";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId636";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate85";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId637";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate86";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId638";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate87";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId639";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate88";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId640";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate89";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId641";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate90";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId642";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate91";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId643";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate92";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId644";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate93";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId645";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate94";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId646";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate95";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId647";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate96";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId648";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate97";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId649";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate98";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId650";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate99";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId651";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts91";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate100";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId652";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate101";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId653";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate102";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId654";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate103";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId655";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate104";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId656";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate105";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId657";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts97";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate106";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId658";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate107";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId659";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate108";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId660";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate109";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId661";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts101";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate110";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId662";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts102";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate111";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId663";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts103";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate112";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId664";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts104";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate113";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId665";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts105";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate114";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId666";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts106";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate115";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId667";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts107";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate116";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId668";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts108";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate117";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId669";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts109";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate118";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId670";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts110";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate119";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId671";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts111";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate120";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId672";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts112";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate121";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId673";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts113";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate122";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId674";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts114";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate123";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId675";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts115";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate124";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId676";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts116";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate125";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId677";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts117";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate126";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId678";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts118";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate127";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId679";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts119";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate128";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId680";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts120";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate129";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId681";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts121";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate130";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId682";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts122";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate131";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId683";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts123";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate132";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId684";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts124";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate133";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId685";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts125";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate134";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId686";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts126";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate135";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId687";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts127";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate136";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId688";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts128";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate137";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId689";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts129";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate138";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId690";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts130";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate139";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId691";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts131";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate140";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId692";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts132";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate141";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId693";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts133";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate142";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId694";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts134";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate143";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId695";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts135";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate144";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId696";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts136";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate145";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId697";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts137";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate146";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId698";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts138";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate147";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId699";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts139";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate148";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId700";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts140";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate149";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId701";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts141";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate150";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId702";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts142";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate151";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId703";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts143";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate152";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId704";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts144";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate153";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId705";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts145";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate154";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId706";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts146";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate155";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId707";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts147";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate156";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId708";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts148";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate157";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId709";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts149";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate158";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId710";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts150";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate159";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId711";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts151";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate160";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId712";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts152";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate161";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId713";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts153";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate162";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId714";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts154";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode polyTriangulate -n "polyTriangulate163";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate164";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyTriangulate -n "polyTriangulate165";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId715";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts155";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate166";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId716";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts156";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTriangulate -n "polyTriangulate167";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId717";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts157";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
createNode polyTriangulate -n "polyTriangulate168";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode groupId -n "groupId718";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts158";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:3]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "layer1.di" "cable1.do";
connectAttr "polyTriangulate1.out" "cableShape1.i";
connectAttr "layer1.di" "cable2.do";
connectAttr "polyTriangulate2.out" "cableShape2.i";
connectAttr "layer1.di" "cable3.do";
connectAttr "polyTriangulate3.out" "cableShape3.i";
connectAttr "layer1.di" "cable4.do";
connectAttr "polyTriangulate4.out" "cableShape4.i";
connectAttr "layer1.di" "pCylinder36.do";
connectAttr "polyTriangulate5.out" "pCylinderShape36.i";
connectAttr "layer1.di" "pCylinder37.do";
connectAttr "polyTriangulate6.out" "pCylinderShape37.i";
connectAttr "layer1.di" "pCylinder38.do";
connectAttr "polyTriangulate7.out" "pCylinderShape38.i";
connectAttr "layer1.di" "pCylinder39.do";
connectAttr "polyTriangulate8.out" "pCylinderShape39.i";
connectAttr "groupId561.id" "polySurfaceShape149.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape149.iog.og[0].gco";
connectAttr "polyTriangulate9.out" "polySurfaceShape149.i";
connectAttr "groupId562.id" "polySurfaceShape150.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape150.iog.og[0].gco";
connectAttr "polyTriangulate10.out" "polySurfaceShape150.i";
connectAttr "groupId563.id" "polySurfaceShape151.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape151.iog.og[0].gco";
connectAttr "polyTriangulate11.out" "polySurfaceShape151.i";
connectAttr "groupId564.id" "polySurfaceShape152.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape152.iog.og[0].gco";
connectAttr "polyTriangulate12.out" "polySurfaceShape152.i";
connectAttr "groupId565.id" "polySurfaceShape153.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape153.iog.og[0].gco";
connectAttr "polyTriangulate13.out" "polySurfaceShape153.i";
connectAttr "groupId566.id" "polySurfaceShape154.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape154.iog.og[0].gco";
connectAttr "polyTriangulate14.out" "polySurfaceShape154.i";
connectAttr "groupId567.id" "polySurfaceShape155.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape155.iog.og[0].gco";
connectAttr "polyTriangulate15.out" "polySurfaceShape155.i";
connectAttr "groupId568.id" "polySurfaceShape156.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape156.iog.og[0].gco";
connectAttr "polyTriangulate16.out" "polySurfaceShape156.i";
connectAttr "groupId569.id" "polySurfaceShape157.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape157.iog.og[0].gco";
connectAttr "polyTriangulate17.out" "polySurfaceShape157.i";
connectAttr "groupId570.id" "polySurfaceShape158.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape158.iog.og[0].gco";
connectAttr "polyTriangulate18.out" "polySurfaceShape158.i";
connectAttr "groupId571.id" "polySurfaceShape159.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape159.iog.og[0].gco";
connectAttr "polyTriangulate19.out" "polySurfaceShape159.i";
connectAttr "groupId572.id" "polySurfaceShape160.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape160.iog.og[0].gco";
connectAttr "polyTriangulate20.out" "polySurfaceShape160.i";
connectAttr "groupId573.id" "polySurfaceShape161.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape161.iog.og[0].gco";
connectAttr "polyTriangulate21.out" "polySurfaceShape161.i";
connectAttr "groupId574.id" "polySurfaceShape162.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape162.iog.og[0].gco";
connectAttr "polyTriangulate22.out" "polySurfaceShape162.i";
connectAttr "groupId575.id" "polySurfaceShape163.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape163.iog.og[0].gco";
connectAttr "polyTriangulate23.out" "polySurfaceShape163.i";
connectAttr "groupId576.id" "polySurfaceShape164.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape164.iog.og[0].gco";
connectAttr "polyTriangulate24.out" "polySurfaceShape164.i";
connectAttr "groupId577.id" "polySurfaceShape165.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape165.iog.og[0].gco";
connectAttr "polyTriangulate25.out" "polySurfaceShape165.i";
connectAttr "groupId578.id" "polySurfaceShape166.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape166.iog.og[0].gco";
connectAttr "polyTriangulate26.out" "polySurfaceShape166.i";
connectAttr "groupId579.id" "polySurfaceShape167.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape167.iog.og[0].gco";
connectAttr "polyTriangulate27.out" "polySurfaceShape167.i";
connectAttr "groupId580.id" "polySurfaceShape168.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape168.iog.og[0].gco";
connectAttr "polyTriangulate28.out" "polySurfaceShape168.i";
connectAttr "groupId581.id" "polySurfaceShape169.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape169.iog.og[0].gco";
connectAttr "polyTriangulate29.out" "polySurfaceShape169.i";
connectAttr "groupId582.id" "polySurfaceShape170.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape170.iog.og[0].gco";
connectAttr "polyTriangulate30.out" "polySurfaceShape170.i";
connectAttr "groupId583.id" "polySurfaceShape171.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape171.iog.og[0].gco";
connectAttr "polyTriangulate31.out" "polySurfaceShape171.i";
connectAttr "groupId584.id" "polySurfaceShape172.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape172.iog.og[0].gco";
connectAttr "polyTriangulate32.out" "polySurfaceShape172.i";
connectAttr "groupId585.id" "polySurfaceShape173.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape173.iog.og[0].gco";
connectAttr "polyTriangulate33.out" "polySurfaceShape173.i";
connectAttr "groupId586.id" "polySurfaceShape174.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape174.iog.og[0].gco";
connectAttr "polyTriangulate34.out" "polySurfaceShape174.i";
connectAttr "groupId587.id" "polySurfaceShape175.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape175.iog.og[0].gco";
connectAttr "polyTriangulate35.out" "polySurfaceShape175.i";
connectAttr "groupId588.id" "polySurfaceShape176.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape176.iog.og[0].gco";
connectAttr "polyTriangulate36.out" "polySurfaceShape176.i";
connectAttr "groupId589.id" "polySurfaceShape177.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape177.iog.og[0].gco";
connectAttr "polyTriangulate37.out" "polySurfaceShape177.i";
connectAttr "groupId590.id" "polySurfaceShape178.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape178.iog.og[0].gco";
connectAttr "polyTriangulate38.out" "polySurfaceShape178.i";
connectAttr "groupId591.id" "polySurfaceShape179.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape179.iog.og[0].gco";
connectAttr "polyTriangulate39.out" "polySurfaceShape179.i";
connectAttr "groupId592.id" "polySurfaceShape180.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape180.iog.og[0].gco";
connectAttr "polyTriangulate40.out" "polySurfaceShape180.i";
connectAttr "groupId593.id" "polySurfaceShape181.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape181.iog.og[0].gco";
connectAttr "polyTriangulate41.out" "polySurfaceShape181.i";
connectAttr "groupId594.id" "polySurfaceShape182.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape182.iog.og[0].gco";
connectAttr "polyTriangulate42.out" "polySurfaceShape182.i";
connectAttr "groupId595.id" "polySurfaceShape183.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape183.iog.og[0].gco";
connectAttr "polyTriangulate43.out" "polySurfaceShape183.i";
connectAttr "groupId596.id" "polySurfaceShape184.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape184.iog.og[0].gco";
connectAttr "polyTriangulate44.out" "polySurfaceShape184.i";
connectAttr "groupId597.id" "polySurfaceShape185.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape185.iog.og[0].gco";
connectAttr "polyTriangulate45.out" "polySurfaceShape185.i";
connectAttr "groupId598.id" "polySurfaceShape186.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape186.iog.og[0].gco";
connectAttr "polyTriangulate46.out" "polySurfaceShape186.i";
connectAttr "groupId599.id" "polySurfaceShape187.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape187.iog.og[0].gco";
connectAttr "polyTriangulate47.out" "polySurfaceShape187.i";
connectAttr "groupId600.id" "polySurfaceShape188.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape188.iog.og[0].gco";
connectAttr "polyTriangulate48.out" "polySurfaceShape188.i";
connectAttr "groupId601.id" "polySurfaceShape189.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape189.iog.og[0].gco";
connectAttr "polyTriangulate49.out" "polySurfaceShape189.i";
connectAttr "groupId602.id" "polySurfaceShape190.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape190.iog.og[0].gco";
connectAttr "polyTriangulate50.out" "polySurfaceShape190.i";
connectAttr "groupId603.id" "polySurfaceShape191.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape191.iog.og[0].gco";
connectAttr "polyTriangulate51.out" "polySurfaceShape191.i";
connectAttr "groupId604.id" "polySurfaceShape192.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape192.iog.og[0].gco";
connectAttr "polyTriangulate52.out" "polySurfaceShape192.i";
connectAttr "groupId605.id" "polySurfaceShape193.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape193.iog.og[0].gco";
connectAttr "polyTriangulate53.out" "polySurfaceShape193.i";
connectAttr "groupId606.id" "polySurfaceShape194.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape194.iog.og[0].gco";
connectAttr "polyTriangulate54.out" "polySurfaceShape194.i";
connectAttr "groupId607.id" "polySurfaceShape195.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape195.iog.og[0].gco";
connectAttr "polyTriangulate55.out" "polySurfaceShape195.i";
connectAttr "groupId608.id" "polySurfaceShape196.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape196.iog.og[0].gco";
connectAttr "polyTriangulate56.out" "polySurfaceShape196.i";
connectAttr "groupId609.id" "polySurfaceShape197.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape197.iog.og[0].gco";
connectAttr "polyTriangulate57.out" "polySurfaceShape197.i";
connectAttr "groupId610.id" "polySurfaceShape198.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape198.iog.og[0].gco";
connectAttr "polyTriangulate58.out" "polySurfaceShape198.i";
connectAttr "groupId611.id" "polySurfaceShape199.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape199.iog.og[0].gco";
connectAttr "polyTriangulate59.out" "polySurfaceShape199.i";
connectAttr "groupId612.id" "polySurfaceShape200.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape200.iog.og[0].gco";
connectAttr "polyTriangulate60.out" "polySurfaceShape200.i";
connectAttr "groupId613.id" "polySurfaceShape201.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape201.iog.og[0].gco";
connectAttr "polyTriangulate61.out" "polySurfaceShape201.i";
connectAttr "groupId614.id" "polySurfaceShape202.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape202.iog.og[0].gco";
connectAttr "polyTriangulate62.out" "polySurfaceShape202.i";
connectAttr "groupId615.id" "polySurfaceShape203.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape203.iog.og[0].gco";
connectAttr "polyTriangulate63.out" "polySurfaceShape203.i";
connectAttr "groupId616.id" "polySurfaceShape204.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape204.iog.og[0].gco";
connectAttr "polyTriangulate64.out" "polySurfaceShape204.i";
connectAttr "groupId617.id" "polySurfaceShape205.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape205.iog.og[0].gco";
connectAttr "polyTriangulate65.out" "polySurfaceShape205.i";
connectAttr "groupId618.id" "polySurfaceShape206.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape206.iog.og[0].gco";
connectAttr "polyTriangulate66.out" "polySurfaceShape206.i";
connectAttr "groupId619.id" "polySurfaceShape207.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape207.iog.og[0].gco";
connectAttr "polyTriangulate67.out" "polySurfaceShape207.i";
connectAttr "groupId620.id" "polySurfaceShape208.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape208.iog.og[0].gco";
connectAttr "polyTriangulate68.out" "polySurfaceShape208.i";
connectAttr "groupId621.id" "polySurfaceShape209.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape209.iog.og[0].gco";
connectAttr "polyTriangulate69.out" "polySurfaceShape209.i";
connectAttr "groupId622.id" "polySurfaceShape210.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape210.iog.og[0].gco";
connectAttr "polyTriangulate70.out" "polySurfaceShape210.i";
connectAttr "groupId623.id" "polySurfaceShape211.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape211.iog.og[0].gco";
connectAttr "polyTriangulate71.out" "polySurfaceShape211.i";
connectAttr "groupId624.id" "polySurfaceShape212.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape212.iog.og[0].gco";
connectAttr "polyTriangulate72.out" "polySurfaceShape212.i";
connectAttr "groupId625.id" "polySurfaceShape213.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape213.iog.og[0].gco";
connectAttr "polyTriangulate73.out" "polySurfaceShape213.i";
connectAttr "groupId626.id" "polySurfaceShape214.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape214.iog.og[0].gco";
connectAttr "polyTriangulate74.out" "polySurfaceShape214.i";
connectAttr "groupId627.id" "polySurfaceShape215.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape215.iog.og[0].gco";
connectAttr "polyTriangulate75.out" "polySurfaceShape215.i";
connectAttr "groupId628.id" "polySurfaceShape216.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape216.iog.og[0].gco";
connectAttr "polyTriangulate76.out" "polySurfaceShape216.i";
connectAttr "groupId629.id" "polySurfaceShape217.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape217.iog.og[0].gco";
connectAttr "polyTriangulate77.out" "polySurfaceShape217.i";
connectAttr "groupId630.id" "polySurfaceShape218.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape218.iog.og[0].gco";
connectAttr "polyTriangulate78.out" "polySurfaceShape218.i";
connectAttr "groupId631.id" "polySurfaceShape219.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape219.iog.og[0].gco";
connectAttr "polyTriangulate79.out" "polySurfaceShape219.i";
connectAttr "groupId632.id" "polySurfaceShape220.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape220.iog.og[0].gco";
connectAttr "polyTriangulate80.out" "polySurfaceShape220.i";
connectAttr "groupId633.id" "polySurfaceShape221.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape221.iog.og[0].gco";
connectAttr "polyTriangulate81.out" "polySurfaceShape221.i";
connectAttr "groupId634.id" "polySurfaceShape222.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape222.iog.og[0].gco";
connectAttr "polyTriangulate82.out" "polySurfaceShape222.i";
connectAttr "groupId635.id" "polySurfaceShape223.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape223.iog.og[0].gco";
connectAttr "polyTriangulate83.out" "polySurfaceShape223.i";
connectAttr "groupId636.id" "polySurfaceShape224.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape224.iog.og[0].gco";
connectAttr "polyTriangulate84.out" "polySurfaceShape224.i";
connectAttr "groupId637.id" "polySurfaceShape225.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape225.iog.og[0].gco";
connectAttr "polyTriangulate85.out" "polySurfaceShape225.i";
connectAttr "groupId638.id" "polySurfaceShape226.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape226.iog.og[0].gco";
connectAttr "polyTriangulate86.out" "polySurfaceShape226.i";
connectAttr "groupId639.id" "polySurfaceShape227.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape227.iog.og[0].gco";
connectAttr "polyTriangulate87.out" "polySurfaceShape227.i";
connectAttr "groupId640.id" "polySurfaceShape228.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape228.iog.og[0].gco";
connectAttr "polyTriangulate88.out" "polySurfaceShape228.i";
connectAttr "groupId641.id" "polySurfaceShape229.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape229.iog.og[0].gco";
connectAttr "polyTriangulate89.out" "polySurfaceShape229.i";
connectAttr "groupId642.id" "polySurfaceShape230.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape230.iog.og[0].gco";
connectAttr "polyTriangulate90.out" "polySurfaceShape230.i";
connectAttr "groupId643.id" "polySurfaceShape231.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape231.iog.og[0].gco";
connectAttr "polyTriangulate91.out" "polySurfaceShape231.i";
connectAttr "groupId644.id" "polySurfaceShape232.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape232.iog.og[0].gco";
connectAttr "polyTriangulate92.out" "polySurfaceShape232.i";
connectAttr "groupId645.id" "polySurfaceShape233.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape233.iog.og[0].gco";
connectAttr "polyTriangulate93.out" "polySurfaceShape233.i";
connectAttr "groupId646.id" "polySurfaceShape234.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape234.iog.og[0].gco";
connectAttr "polyTriangulate94.out" "polySurfaceShape234.i";
connectAttr "groupId647.id" "polySurfaceShape235.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape235.iog.og[0].gco";
connectAttr "polyTriangulate95.out" "polySurfaceShape235.i";
connectAttr "groupId648.id" "polySurfaceShape236.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape236.iog.og[0].gco";
connectAttr "polyTriangulate96.out" "polySurfaceShape236.i";
connectAttr "groupId649.id" "polySurfaceShape237.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape237.iog.og[0].gco";
connectAttr "polyTriangulate97.out" "polySurfaceShape237.i";
connectAttr "groupId650.id" "polySurfaceShape238.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape238.iog.og[0].gco";
connectAttr "polyTriangulate98.out" "polySurfaceShape238.i";
connectAttr "groupId651.id" "polySurfaceShape239.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape239.iog.og[0].gco";
connectAttr "polyTriangulate99.out" "polySurfaceShape239.i";
connectAttr "groupId652.id" "polySurfaceShape240.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape240.iog.og[0].gco";
connectAttr "polyTriangulate100.out" "polySurfaceShape240.i";
connectAttr "groupId653.id" "polySurfaceShape241.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape241.iog.og[0].gco";
connectAttr "polyTriangulate101.out" "polySurfaceShape241.i";
connectAttr "groupId654.id" "polySurfaceShape242.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape242.iog.og[0].gco";
connectAttr "polyTriangulate102.out" "polySurfaceShape242.i";
connectAttr "groupId655.id" "polySurfaceShape243.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape243.iog.og[0].gco";
connectAttr "polyTriangulate103.out" "polySurfaceShape243.i";
connectAttr "groupId656.id" "polySurfaceShape244.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape244.iog.og[0].gco";
connectAttr "polyTriangulate104.out" "polySurfaceShape244.i";
connectAttr "groupId657.id" "polySurfaceShape245.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape245.iog.og[0].gco";
connectAttr "polyTriangulate105.out" "polySurfaceShape245.i";
connectAttr "groupId658.id" "polySurfaceShape246.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape246.iog.og[0].gco";
connectAttr "polyTriangulate106.out" "polySurfaceShape246.i";
connectAttr "groupId659.id" "polySurfaceShape247.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape247.iog.og[0].gco";
connectAttr "polyTriangulate107.out" "polySurfaceShape247.i";
connectAttr "groupId660.id" "polySurfaceShape248.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape248.iog.og[0].gco";
connectAttr "polyTriangulate108.out" "polySurfaceShape248.i";
connectAttr "groupId661.id" "polySurfaceShape249.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape249.iog.og[0].gco";
connectAttr "polyTriangulate109.out" "polySurfaceShape249.i";
connectAttr "groupId662.id" "polySurfaceShape250.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape250.iog.og[0].gco";
connectAttr "polyTriangulate110.out" "polySurfaceShape250.i";
connectAttr "groupId663.id" "polySurfaceShape251.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape251.iog.og[0].gco";
connectAttr "polyTriangulate111.out" "polySurfaceShape251.i";
connectAttr "groupId664.id" "polySurfaceShape252.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape252.iog.og[0].gco";
connectAttr "polyTriangulate112.out" "polySurfaceShape252.i";
connectAttr "groupId665.id" "polySurfaceShape253.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape253.iog.og[0].gco";
connectAttr "polyTriangulate113.out" "polySurfaceShape253.i";
connectAttr "groupId666.id" "polySurfaceShape254.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape254.iog.og[0].gco";
connectAttr "polyTriangulate114.out" "polySurfaceShape254.i";
connectAttr "groupId667.id" "polySurfaceShape255.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape255.iog.og[0].gco";
connectAttr "polyTriangulate115.out" "polySurfaceShape255.i";
connectAttr "groupId668.id" "polySurfaceShape256.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape256.iog.og[0].gco";
connectAttr "polyTriangulate116.out" "polySurfaceShape256.i";
connectAttr "groupId669.id" "polySurfaceShape257.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape257.iog.og[0].gco";
connectAttr "polyTriangulate117.out" "polySurfaceShape257.i";
connectAttr "groupId670.id" "polySurfaceShape258.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape258.iog.og[0].gco";
connectAttr "polyTriangulate118.out" "polySurfaceShape258.i";
connectAttr "groupId671.id" "polySurfaceShape259.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape259.iog.og[0].gco";
connectAttr "polyTriangulate119.out" "polySurfaceShape259.i";
connectAttr "groupId672.id" "polySurfaceShape260.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape260.iog.og[0].gco";
connectAttr "polyTriangulate120.out" "polySurfaceShape260.i";
connectAttr "groupId673.id" "polySurfaceShape261.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape261.iog.og[0].gco";
connectAttr "polyTriangulate121.out" "polySurfaceShape261.i";
connectAttr "groupId674.id" "polySurfaceShape262.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape262.iog.og[0].gco";
connectAttr "polyTriangulate122.out" "polySurfaceShape262.i";
connectAttr "groupId675.id" "polySurfaceShape263.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape263.iog.og[0].gco";
connectAttr "polyTriangulate123.out" "polySurfaceShape263.i";
connectAttr "groupId676.id" "polySurfaceShape264.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape264.iog.og[0].gco";
connectAttr "polyTriangulate124.out" "polySurfaceShape264.i";
connectAttr "groupId677.id" "polySurfaceShape265.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape265.iog.og[0].gco";
connectAttr "polyTriangulate125.out" "polySurfaceShape265.i";
connectAttr "groupId678.id" "polySurfaceShape266.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape266.iog.og[0].gco";
connectAttr "polyTriangulate126.out" "polySurfaceShape266.i";
connectAttr "groupId679.id" "polySurfaceShape267.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape267.iog.og[0].gco";
connectAttr "polyTriangulate127.out" "polySurfaceShape267.i";
connectAttr "groupId680.id" "polySurfaceShape268.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape268.iog.og[0].gco";
connectAttr "polyTriangulate128.out" "polySurfaceShape268.i";
connectAttr "groupId681.id" "polySurfaceShape269.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape269.iog.og[0].gco";
connectAttr "polyTriangulate129.out" "polySurfaceShape269.i";
connectAttr "groupId682.id" "polySurfaceShape270.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape270.iog.og[0].gco";
connectAttr "polyTriangulate130.out" "polySurfaceShape270.i";
connectAttr "groupId683.id" "polySurfaceShape271.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape271.iog.og[0].gco";
connectAttr "polyTriangulate131.out" "polySurfaceShape271.i";
connectAttr "groupId684.id" "polySurfaceShape272.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape272.iog.og[0].gco";
connectAttr "polyTriangulate132.out" "polySurfaceShape272.i";
connectAttr "groupId685.id" "polySurfaceShape273.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape273.iog.og[0].gco";
connectAttr "polyTriangulate133.out" "polySurfaceShape273.i";
connectAttr "groupId686.id" "polySurfaceShape274.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape274.iog.og[0].gco";
connectAttr "polyTriangulate134.out" "polySurfaceShape274.i";
connectAttr "groupId687.id" "polySurfaceShape275.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape275.iog.og[0].gco";
connectAttr "polyTriangulate135.out" "polySurfaceShape275.i";
connectAttr "groupId688.id" "polySurfaceShape276.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape276.iog.og[0].gco";
connectAttr "polyTriangulate136.out" "polySurfaceShape276.i";
connectAttr "groupId689.id" "polySurfaceShape277.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape277.iog.og[0].gco";
connectAttr "polyTriangulate137.out" "polySurfaceShape277.i";
connectAttr "groupId690.id" "polySurfaceShape278.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape278.iog.og[0].gco";
connectAttr "polyTriangulate138.out" "polySurfaceShape278.i";
connectAttr "groupId691.id" "polySurfaceShape279.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape279.iog.og[0].gco";
connectAttr "polyTriangulate139.out" "polySurfaceShape279.i";
connectAttr "groupId692.id" "polySurfaceShape280.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape280.iog.og[0].gco";
connectAttr "polyTriangulate140.out" "polySurfaceShape280.i";
connectAttr "groupId693.id" "polySurfaceShape281.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape281.iog.og[0].gco";
connectAttr "polyTriangulate141.out" "polySurfaceShape281.i";
connectAttr "groupId694.id" "polySurfaceShape282.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape282.iog.og[0].gco";
connectAttr "polyTriangulate142.out" "polySurfaceShape282.i";
connectAttr "groupId695.id" "polySurfaceShape283.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape283.iog.og[0].gco";
connectAttr "polyTriangulate143.out" "polySurfaceShape283.i";
connectAttr "groupId696.id" "polySurfaceShape284.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape284.iog.og[0].gco";
connectAttr "polyTriangulate144.out" "polySurfaceShape284.i";
connectAttr "groupId697.id" "polySurfaceShape285.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape285.iog.og[0].gco";
connectAttr "polyTriangulate145.out" "polySurfaceShape285.i";
connectAttr "groupId698.id" "polySurfaceShape286.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape286.iog.og[0].gco";
connectAttr "polyTriangulate146.out" "polySurfaceShape286.i";
connectAttr "groupId699.id" "polySurfaceShape287.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape287.iog.og[0].gco";
connectAttr "polyTriangulate147.out" "polySurfaceShape287.i";
connectAttr "groupId700.id" "polySurfaceShape288.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape288.iog.og[0].gco";
connectAttr "polyTriangulate148.out" "polySurfaceShape288.i";
connectAttr "groupId701.id" "polySurfaceShape289.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape289.iog.og[0].gco";
connectAttr "polyTriangulate149.out" "polySurfaceShape289.i";
connectAttr "groupId702.id" "polySurfaceShape290.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape290.iog.og[0].gco";
connectAttr "polyTriangulate150.out" "polySurfaceShape290.i";
connectAttr "groupId703.id" "polySurfaceShape291.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape291.iog.og[0].gco";
connectAttr "polyTriangulate151.out" "polySurfaceShape291.i";
connectAttr "groupId704.id" "polySurfaceShape292.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape292.iog.og[0].gco";
connectAttr "polyTriangulate152.out" "polySurfaceShape292.i";
connectAttr "groupId705.id" "polySurfaceShape293.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape293.iog.og[0].gco";
connectAttr "polyTriangulate153.out" "polySurfaceShape293.i";
connectAttr "groupId706.id" "polySurfaceShape294.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape294.iog.og[0].gco";
connectAttr "polyTriangulate154.out" "polySurfaceShape294.i";
connectAttr "groupId707.id" "polySurfaceShape295.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape295.iog.og[0].gco";
connectAttr "polyTriangulate155.out" "polySurfaceShape295.i";
connectAttr "groupId708.id" "polySurfaceShape296.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape296.iog.og[0].gco";
connectAttr "polyTriangulate156.out" "polySurfaceShape296.i";
connectAttr "groupId709.id" "polySurfaceShape297.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape297.iog.og[0].gco";
connectAttr "polyTriangulate157.out" "polySurfaceShape297.i";
connectAttr "groupId710.id" "polySurfaceShape298.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape298.iog.og[0].gco";
connectAttr "polyTriangulate158.out" "polySurfaceShape298.i";
connectAttr "groupId711.id" "polySurfaceShape299.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape299.iog.og[0].gco";
connectAttr "polyTriangulate159.out" "polySurfaceShape299.i";
connectAttr "groupId712.id" "|polySurface140|polySurface297|polySurfaceShape300.iog.og[0].gid"
		;
connectAttr "lambert4SG.mwc" "|polySurface140|polySurface297|polySurfaceShape300.iog.og[0].gco"
		;
connectAttr "polyTriangulate160.out" "|polySurface140|polySurface297|polySurfaceShape300.i"
		;
connectAttr "groupId713.id" "|polySurface140|polySurface298|polySurfaceShape301.iog.og[0].gid"
		;
connectAttr "lambert4SG.mwc" "|polySurface140|polySurface298|polySurfaceShape301.iog.og[0].gco"
		;
connectAttr "polyTriangulate161.out" "|polySurface140|polySurface298|polySurfaceShape301.i"
		;
connectAttr "groupId714.id" "polySurfaceShape302.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "polySurfaceShape302.iog.og[0].gco";
connectAttr "polyTriangulate162.out" "polySurfaceShape302.i";
connectAttr "polyTriangulate163.out" "|polySurface140|polySurface300|polySurfaceShape300.i"
		;
connectAttr "polyTriangulate164.out" "|polySurface140|polySurface301|polySurfaceShape301.i"
		;
connectAttr "groupId715.id" "scaffoldFloor:polySurfaceShape145.iog.og[0].gid";
connectAttr "scaffoldFloor:lambert4SG.mwc" "scaffoldFloor:polySurfaceShape145.iog.og[0].gco"
		;
connectAttr "polyTriangulate165.out" "scaffoldFloor:polySurfaceShape145.i";
connectAttr "groupId716.id" "scaffoldFloor:polySurfaceShape146.iog.og[0].gid";
connectAttr "scaffoldFloor:lambert4SG.mwc" "scaffoldFloor:polySurfaceShape146.iog.og[0].gco"
		;
connectAttr "polyTriangulate166.out" "scaffoldFloor:polySurfaceShape146.i";
connectAttr "groupId717.id" "scaffoldFloor:polySurfaceShape147.iog.og[0].gid";
connectAttr "scaffoldFloor:lambert4SG.mwc" "scaffoldFloor:polySurfaceShape147.iog.og[0].gco"
		;
connectAttr "polyTriangulate167.out" "scaffoldFloor:polySurfaceShape147.i";
connectAttr "groupId718.id" "scaffoldFloor:polySurfaceShape148.iog.og[0].gid";
connectAttr "scaffoldFloor:lambert4SG.mwc" "scaffoldFloor:polySurfaceShape148.iog.og[0].gco"
		;
connectAttr "polyTriangulate168.out" "scaffoldFloor:polySurfaceShape148.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MetalzYellowSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scaffoldFloor:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MetalzYellowSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scaffoldFloor:lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "phongE1.oc" "lambert2SG.ss";
connectAttr "cableShape2.iog" "lambert2SG.dsm" -na;
connectAttr "cableShape3.iog" "lambert2SG.dsm" -na;
connectAttr "cableShape4.iog" "lambert2SG.dsm" -na;
connectAttr "cableShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "phongE1.msg" "materialInfo3.m";
connectAttr "lambert3.oc" "phong1SG.ss";
connectAttr "pCylinderShape36.iog" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo4.sg";
connectAttr "lambert3.msg" "materialInfo4.m";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCylinderShape37.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo5.sg";
connectAttr "blinn1.msg" "materialInfo5.m";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "file34.oc" "Metalz.c";
connectAttr "Metalz.oc" "lambert4SG.ss";
connectAttr "polySurfaceShape149.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape150.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape151.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape152.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape153.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape154.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape155.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape156.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape157.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape158.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape159.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape160.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape161.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape162.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape163.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape164.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape165.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape166.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape167.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape168.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape169.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape170.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape171.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape172.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape173.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape174.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape175.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape176.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape177.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape178.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape179.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape180.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape181.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape182.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape183.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape184.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape185.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape186.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape187.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape188.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape189.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape190.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape191.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape192.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape193.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape194.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape195.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape196.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape197.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape198.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape199.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape200.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape201.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape202.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape203.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape204.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape205.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape206.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape207.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape208.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape209.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape210.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape211.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape212.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape213.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape214.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape215.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape216.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape217.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape218.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape219.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape220.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape221.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape222.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape223.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape224.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape225.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape226.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape227.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape228.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape229.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape230.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape231.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape232.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape233.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape234.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape235.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape236.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape237.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape238.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape239.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape240.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape241.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape242.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape243.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape244.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape245.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape246.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape247.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape248.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape249.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape250.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape251.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape252.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape253.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape254.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape255.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape256.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape257.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape258.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape259.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape260.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape261.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape262.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape263.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape264.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape265.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape266.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape267.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape268.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape269.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape270.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape271.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape272.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape273.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape274.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape275.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape276.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape277.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape278.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape279.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape280.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape281.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape282.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape283.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape284.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape285.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape286.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape287.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape288.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape289.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape290.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape291.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape292.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape293.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape294.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape295.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape296.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape297.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape298.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "polySurfaceShape299.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "|polySurface140|polySurface297|polySurfaceShape300.iog.og[0]" "lambert4SG.dsm"
		 -na;
connectAttr "|polySurface140|polySurface298|polySurfaceShape301.iog.og[0]" "lambert4SG.dsm"
		 -na;
connectAttr "polySurfaceShape302.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "groupId561.msg" "lambert4SG.gn" -na;
connectAttr "groupId562.msg" "lambert4SG.gn" -na;
connectAttr "groupId563.msg" "lambert4SG.gn" -na;
connectAttr "groupId564.msg" "lambert4SG.gn" -na;
connectAttr "groupId565.msg" "lambert4SG.gn" -na;
connectAttr "groupId566.msg" "lambert4SG.gn" -na;
connectAttr "groupId567.msg" "lambert4SG.gn" -na;
connectAttr "groupId568.msg" "lambert4SG.gn" -na;
connectAttr "groupId569.msg" "lambert4SG.gn" -na;
connectAttr "groupId570.msg" "lambert4SG.gn" -na;
connectAttr "groupId571.msg" "lambert4SG.gn" -na;
connectAttr "groupId572.msg" "lambert4SG.gn" -na;
connectAttr "groupId573.msg" "lambert4SG.gn" -na;
connectAttr "groupId574.msg" "lambert4SG.gn" -na;
connectAttr "groupId575.msg" "lambert4SG.gn" -na;
connectAttr "groupId576.msg" "lambert4SG.gn" -na;
connectAttr "groupId577.msg" "lambert4SG.gn" -na;
connectAttr "groupId578.msg" "lambert4SG.gn" -na;
connectAttr "groupId579.msg" "lambert4SG.gn" -na;
connectAttr "groupId580.msg" "lambert4SG.gn" -na;
connectAttr "groupId581.msg" "lambert4SG.gn" -na;
connectAttr "groupId582.msg" "lambert4SG.gn" -na;
connectAttr "groupId583.msg" "lambert4SG.gn" -na;
connectAttr "groupId584.msg" "lambert4SG.gn" -na;
connectAttr "groupId585.msg" "lambert4SG.gn" -na;
connectAttr "groupId586.msg" "lambert4SG.gn" -na;
connectAttr "groupId587.msg" "lambert4SG.gn" -na;
connectAttr "groupId588.msg" "lambert4SG.gn" -na;
connectAttr "groupId589.msg" "lambert4SG.gn" -na;
connectAttr "groupId590.msg" "lambert4SG.gn" -na;
connectAttr "groupId591.msg" "lambert4SG.gn" -na;
connectAttr "groupId592.msg" "lambert4SG.gn" -na;
connectAttr "groupId593.msg" "lambert4SG.gn" -na;
connectAttr "groupId594.msg" "lambert4SG.gn" -na;
connectAttr "groupId595.msg" "lambert4SG.gn" -na;
connectAttr "groupId596.msg" "lambert4SG.gn" -na;
connectAttr "groupId597.msg" "lambert4SG.gn" -na;
connectAttr "groupId598.msg" "lambert4SG.gn" -na;
connectAttr "groupId599.msg" "lambert4SG.gn" -na;
connectAttr "groupId600.msg" "lambert4SG.gn" -na;
connectAttr "groupId601.msg" "lambert4SG.gn" -na;
connectAttr "groupId602.msg" "lambert4SG.gn" -na;
connectAttr "groupId603.msg" "lambert4SG.gn" -na;
connectAttr "groupId604.msg" "lambert4SG.gn" -na;
connectAttr "groupId605.msg" "lambert4SG.gn" -na;
connectAttr "groupId606.msg" "lambert4SG.gn" -na;
connectAttr "groupId607.msg" "lambert4SG.gn" -na;
connectAttr "groupId608.msg" "lambert4SG.gn" -na;
connectAttr "groupId609.msg" "lambert4SG.gn" -na;
connectAttr "groupId610.msg" "lambert4SG.gn" -na;
connectAttr "groupId611.msg" "lambert4SG.gn" -na;
connectAttr "groupId612.msg" "lambert4SG.gn" -na;
connectAttr "groupId613.msg" "lambert4SG.gn" -na;
connectAttr "groupId614.msg" "lambert4SG.gn" -na;
connectAttr "groupId615.msg" "lambert4SG.gn" -na;
connectAttr "groupId616.msg" "lambert4SG.gn" -na;
connectAttr "groupId617.msg" "lambert4SG.gn" -na;
connectAttr "groupId618.msg" "lambert4SG.gn" -na;
connectAttr "groupId619.msg" "lambert4SG.gn" -na;
connectAttr "groupId620.msg" "lambert4SG.gn" -na;
connectAttr "groupId621.msg" "lambert4SG.gn" -na;
connectAttr "groupId622.msg" "lambert4SG.gn" -na;
connectAttr "groupId623.msg" "lambert4SG.gn" -na;
connectAttr "groupId624.msg" "lambert4SG.gn" -na;
connectAttr "groupId625.msg" "lambert4SG.gn" -na;
connectAttr "groupId626.msg" "lambert4SG.gn" -na;
connectAttr "groupId627.msg" "lambert4SG.gn" -na;
connectAttr "groupId628.msg" "lambert4SG.gn" -na;
connectAttr "groupId629.msg" "lambert4SG.gn" -na;
connectAttr "groupId630.msg" "lambert4SG.gn" -na;
connectAttr "groupId631.msg" "lambert4SG.gn" -na;
connectAttr "groupId632.msg" "lambert4SG.gn" -na;
connectAttr "groupId633.msg" "lambert4SG.gn" -na;
connectAttr "groupId634.msg" "lambert4SG.gn" -na;
connectAttr "groupId635.msg" "lambert4SG.gn" -na;
connectAttr "groupId636.msg" "lambert4SG.gn" -na;
connectAttr "groupId637.msg" "lambert4SG.gn" -na;
connectAttr "groupId638.msg" "lambert4SG.gn" -na;
connectAttr "groupId639.msg" "lambert4SG.gn" -na;
connectAttr "groupId640.msg" "lambert4SG.gn" -na;
connectAttr "groupId641.msg" "lambert4SG.gn" -na;
connectAttr "groupId642.msg" "lambert4SG.gn" -na;
connectAttr "groupId643.msg" "lambert4SG.gn" -na;
connectAttr "groupId644.msg" "lambert4SG.gn" -na;
connectAttr "groupId645.msg" "lambert4SG.gn" -na;
connectAttr "groupId646.msg" "lambert4SG.gn" -na;
connectAttr "groupId647.msg" "lambert4SG.gn" -na;
connectAttr "groupId648.msg" "lambert4SG.gn" -na;
connectAttr "groupId649.msg" "lambert4SG.gn" -na;
connectAttr "groupId650.msg" "lambert4SG.gn" -na;
connectAttr "groupId651.msg" "lambert4SG.gn" -na;
connectAttr "groupId652.msg" "lambert4SG.gn" -na;
connectAttr "groupId653.msg" "lambert4SG.gn" -na;
connectAttr "groupId654.msg" "lambert4SG.gn" -na;
connectAttr "groupId655.msg" "lambert4SG.gn" -na;
connectAttr "groupId656.msg" "lambert4SG.gn" -na;
connectAttr "groupId657.msg" "lambert4SG.gn" -na;
connectAttr "groupId658.msg" "lambert4SG.gn" -na;
connectAttr "groupId659.msg" "lambert4SG.gn" -na;
connectAttr "groupId660.msg" "lambert4SG.gn" -na;
connectAttr "groupId661.msg" "lambert4SG.gn" -na;
connectAttr "groupId662.msg" "lambert4SG.gn" -na;
connectAttr "groupId663.msg" "lambert4SG.gn" -na;
connectAttr "groupId664.msg" "lambert4SG.gn" -na;
connectAttr "groupId665.msg" "lambert4SG.gn" -na;
connectAttr "groupId666.msg" "lambert4SG.gn" -na;
connectAttr "groupId667.msg" "lambert4SG.gn" -na;
connectAttr "groupId668.msg" "lambert4SG.gn" -na;
connectAttr "groupId669.msg" "lambert4SG.gn" -na;
connectAttr "groupId670.msg" "lambert4SG.gn" -na;
connectAttr "groupId671.msg" "lambert4SG.gn" -na;
connectAttr "groupId672.msg" "lambert4SG.gn" -na;
connectAttr "groupId673.msg" "lambert4SG.gn" -na;
connectAttr "groupId674.msg" "lambert4SG.gn" -na;
connectAttr "groupId675.msg" "lambert4SG.gn" -na;
connectAttr "groupId676.msg" "lambert4SG.gn" -na;
connectAttr "groupId677.msg" "lambert4SG.gn" -na;
connectAttr "groupId678.msg" "lambert4SG.gn" -na;
connectAttr "groupId679.msg" "lambert4SG.gn" -na;
connectAttr "groupId680.msg" "lambert4SG.gn" -na;
connectAttr "groupId681.msg" "lambert4SG.gn" -na;
connectAttr "groupId682.msg" "lambert4SG.gn" -na;
connectAttr "groupId683.msg" "lambert4SG.gn" -na;
connectAttr "groupId684.msg" "lambert4SG.gn" -na;
connectAttr "groupId685.msg" "lambert4SG.gn" -na;
connectAttr "groupId686.msg" "lambert4SG.gn" -na;
connectAttr "groupId687.msg" "lambert4SG.gn" -na;
connectAttr "groupId688.msg" "lambert4SG.gn" -na;
connectAttr "groupId689.msg" "lambert4SG.gn" -na;
connectAttr "groupId690.msg" "lambert4SG.gn" -na;
connectAttr "groupId691.msg" "lambert4SG.gn" -na;
connectAttr "groupId692.msg" "lambert4SG.gn" -na;
connectAttr "groupId693.msg" "lambert4SG.gn" -na;
connectAttr "groupId694.msg" "lambert4SG.gn" -na;
connectAttr "groupId695.msg" "lambert4SG.gn" -na;
connectAttr "groupId696.msg" "lambert4SG.gn" -na;
connectAttr "groupId697.msg" "lambert4SG.gn" -na;
connectAttr "groupId698.msg" "lambert4SG.gn" -na;
connectAttr "groupId699.msg" "lambert4SG.gn" -na;
connectAttr "groupId700.msg" "lambert4SG.gn" -na;
connectAttr "groupId701.msg" "lambert4SG.gn" -na;
connectAttr "groupId702.msg" "lambert4SG.gn" -na;
connectAttr "groupId703.msg" "lambert4SG.gn" -na;
connectAttr "groupId704.msg" "lambert4SG.gn" -na;
connectAttr "groupId705.msg" "lambert4SG.gn" -na;
connectAttr "groupId706.msg" "lambert4SG.gn" -na;
connectAttr "groupId707.msg" "lambert4SG.gn" -na;
connectAttr "groupId708.msg" "lambert4SG.gn" -na;
connectAttr "groupId709.msg" "lambert4SG.gn" -na;
connectAttr "groupId710.msg" "lambert4SG.gn" -na;
connectAttr "groupId711.msg" "lambert4SG.gn" -na;
connectAttr "groupId712.msg" "lambert4SG.gn" -na;
connectAttr "groupId713.msg" "lambert4SG.gn" -na;
connectAttr "groupId714.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo39.sg";
connectAttr "Metalz.msg" "materialInfo39.m";
connectAttr "file34.msg" "materialInfo39.t" -na;
connectAttr "place2dTexture2.c" "file34.c";
connectAttr "place2dTexture2.tf" "file34.tf";
connectAttr "place2dTexture2.rf" "file34.rf";
connectAttr "place2dTexture2.mu" "file34.mu";
connectAttr "place2dTexture2.mv" "file34.mv";
connectAttr "place2dTexture2.s" "file34.s";
connectAttr "place2dTexture2.wu" "file34.wu";
connectAttr "place2dTexture2.wv" "file34.wv";
connectAttr "place2dTexture2.re" "file34.re";
connectAttr "place2dTexture2.of" "file34.of";
connectAttr "place2dTexture2.r" "file34.ro";
connectAttr "place2dTexture2.n" "file34.n";
connectAttr "place2dTexture2.vt1" "file34.vt1";
connectAttr "place2dTexture2.vt2" "file34.vt2";
connectAttr "place2dTexture2.vt3" "file34.vt3";
connectAttr "place2dTexture2.vc1" "file34.vc1";
connectAttr "place2dTexture2.o" "file34.uv";
connectAttr "place2dTexture2.ofs" "file34.fs";
connectAttr "file35.oc" "MetalzYellow.c";
connectAttr "place2dTexture3.c" "file35.c";
connectAttr "place2dTexture3.tf" "file35.tf";
connectAttr "place2dTexture3.rf" "file35.rf";
connectAttr "place2dTexture3.mu" "file35.mu";
connectAttr "place2dTexture3.mv" "file35.mv";
connectAttr "place2dTexture3.s" "file35.s";
connectAttr "place2dTexture3.wu" "file35.wu";
connectAttr "place2dTexture3.wv" "file35.wv";
connectAttr "place2dTexture3.re" "file35.re";
connectAttr "place2dTexture3.of" "file35.of";
connectAttr "place2dTexture3.r" "file35.ro";
connectAttr "place2dTexture3.n" "file35.n";
connectAttr "place2dTexture3.vt1" "file35.vt1";
connectAttr "place2dTexture3.vt2" "file35.vt2";
connectAttr "place2dTexture3.vt3" "file35.vt3";
connectAttr "place2dTexture3.vc1" "file35.vc1";
connectAttr "place2dTexture3.o" "file35.uv";
connectAttr "place2dTexture3.ofs" "file35.fs";
connectAttr "MetalzYellow.oc" "MetalzYellowSG.ss";
connectAttr "|polySurface140|polySurface300|polySurfaceShape300.iog" "MetalzYellowSG.dsm"
		 -na;
connectAttr "|polySurface140|polySurface301|polySurfaceShape301.iog" "MetalzYellowSG.dsm"
		 -na;
connectAttr "MetalzYellowSG.msg" "materialInfo40.sg";
connectAttr "MetalzYellow.msg" "materialInfo40.m";
connectAttr "file35.msg" "materialInfo40.t" -na;
connectAttr "scaffoldFloor:Metalz.oc" "scaffoldFloor:lambert4SG.ss";
connectAttr "scaffoldFloor:polySurfaceShape145.iog.og[0]" "scaffoldFloor:lambert4SG.dsm"
		 -na;
connectAttr "scaffoldFloor:polySurfaceShape146.iog.og[0]" "scaffoldFloor:lambert4SG.dsm"
		 -na;
connectAttr "scaffoldFloor:polySurfaceShape147.iog.og[0]" "scaffoldFloor:lambert4SG.dsm"
		 -na;
connectAttr "scaffoldFloor:polySurfaceShape148.iog.og[0]" "scaffoldFloor:lambert4SG.dsm"
		 -na;
connectAttr "groupId715.msg" "scaffoldFloor:lambert4SG.gn" -na;
connectAttr "groupId716.msg" "scaffoldFloor:lambert4SG.gn" -na;
connectAttr "groupId717.msg" "scaffoldFloor:lambert4SG.gn" -na;
connectAttr "groupId718.msg" "scaffoldFloor:lambert4SG.gn" -na;
connectAttr "scaffoldFloor:lambert4SG.msg" "scaffoldFloor:materialInfo39.sg";
connectAttr "scaffoldFloor:Metalz.msg" "scaffoldFloor:materialInfo39.m";
connectAttr "scaffoldFloor:file34.msg" "scaffoldFloor:materialInfo39.t" -na;
connectAttr "scaffoldFloor:file34.oc" "scaffoldFloor:Metalz.c";
connectAttr "scaffoldFloor:place2dTexture2.c" "scaffoldFloor:file34.c";
connectAttr "scaffoldFloor:place2dTexture2.tf" "scaffoldFloor:file34.tf";
connectAttr "scaffoldFloor:place2dTexture2.rf" "scaffoldFloor:file34.rf";
connectAttr "scaffoldFloor:place2dTexture2.mu" "scaffoldFloor:file34.mu";
connectAttr "scaffoldFloor:place2dTexture2.mv" "scaffoldFloor:file34.mv";
connectAttr "scaffoldFloor:place2dTexture2.s" "scaffoldFloor:file34.s";
connectAttr "scaffoldFloor:place2dTexture2.wu" "scaffoldFloor:file34.wu";
connectAttr "scaffoldFloor:place2dTexture2.wv" "scaffoldFloor:file34.wv";
connectAttr "scaffoldFloor:place2dTexture2.re" "scaffoldFloor:file34.re";
connectAttr "scaffoldFloor:place2dTexture2.of" "scaffoldFloor:file34.of";
connectAttr "scaffoldFloor:place2dTexture2.r" "scaffoldFloor:file34.ro";
connectAttr "scaffoldFloor:place2dTexture2.n" "scaffoldFloor:file34.n";
connectAttr "scaffoldFloor:place2dTexture2.vt1" "scaffoldFloor:file34.vt1";
connectAttr "scaffoldFloor:place2dTexture2.vt2" "scaffoldFloor:file34.vt2";
connectAttr "scaffoldFloor:place2dTexture2.vt3" "scaffoldFloor:file34.vt3";
connectAttr "scaffoldFloor:place2dTexture2.vc1" "scaffoldFloor:file34.vc1";
connectAttr "scaffoldFloor:place2dTexture2.o" "scaffoldFloor:file34.uv";
connectAttr "scaffoldFloor:place2dTexture2.ofs" "scaffoldFloor:file34.fs";
connectAttr "polySurfaceShape303.o" "polyTriangulate1.ip";
connectAttr "polySurfaceShape304.o" "polyTriangulate2.ip";
connectAttr "polySurfaceShape305.o" "polyTriangulate3.ip";
connectAttr "polySurfaceShape306.o" "polyTriangulate4.ip";
connectAttr "polySurfaceShape307.o" "polyTriangulate5.ip";
connectAttr "polySurfaceShape308.o" "polyTriangulate6.ip";
connectAttr "polySurfaceShape309.o" "polyTriangulate7.ip";
connectAttr "polySurfaceShape310.o" "polyTriangulate8.ip";
connectAttr "groupParts1.og" "polyTriangulate9.ip";
connectAttr "polySurfaceShape311.o" "groupParts1.ig";
connectAttr "groupId561.id" "groupParts1.gi";
connectAttr "groupParts2.og" "polyTriangulate10.ip";
connectAttr "polySurfaceShape312.o" "groupParts2.ig";
connectAttr "groupId562.id" "groupParts2.gi";
connectAttr "groupParts3.og" "polyTriangulate11.ip";
connectAttr "polySurfaceShape313.o" "groupParts3.ig";
connectAttr "groupId563.id" "groupParts3.gi";
connectAttr "groupParts4.og" "polyTriangulate12.ip";
connectAttr "polySurfaceShape314.o" "groupParts4.ig";
connectAttr "groupId564.id" "groupParts4.gi";
connectAttr "groupParts5.og" "polyTriangulate13.ip";
connectAttr "polySurfaceShape315.o" "groupParts5.ig";
connectAttr "groupId565.id" "groupParts5.gi";
connectAttr "groupParts6.og" "polyTriangulate14.ip";
connectAttr "polySurfaceShape316.o" "groupParts6.ig";
connectAttr "groupId566.id" "groupParts6.gi";
connectAttr "groupParts7.og" "polyTriangulate15.ip";
connectAttr "polySurfaceShape317.o" "groupParts7.ig";
connectAttr "groupId567.id" "groupParts7.gi";
connectAttr "groupParts8.og" "polyTriangulate16.ip";
connectAttr "polySurfaceShape318.o" "groupParts8.ig";
connectAttr "groupId568.id" "groupParts8.gi";
connectAttr "groupParts9.og" "polyTriangulate17.ip";
connectAttr "polySurfaceShape319.o" "groupParts9.ig";
connectAttr "groupId569.id" "groupParts9.gi";
connectAttr "groupParts10.og" "polyTriangulate18.ip";
connectAttr "polySurfaceShape320.o" "groupParts10.ig";
connectAttr "groupId570.id" "groupParts10.gi";
connectAttr "groupParts11.og" "polyTriangulate19.ip";
connectAttr "polySurfaceShape321.o" "groupParts11.ig";
connectAttr "groupId571.id" "groupParts11.gi";
connectAttr "groupParts12.og" "polyTriangulate20.ip";
connectAttr "polySurfaceShape322.o" "groupParts12.ig";
connectAttr "groupId572.id" "groupParts12.gi";
connectAttr "groupParts13.og" "polyTriangulate21.ip";
connectAttr "polySurfaceShape323.o" "groupParts13.ig";
connectAttr "groupId573.id" "groupParts13.gi";
connectAttr "groupParts14.og" "polyTriangulate22.ip";
connectAttr "polySurfaceShape324.o" "groupParts14.ig";
connectAttr "groupId574.id" "groupParts14.gi";
connectAttr "groupParts15.og" "polyTriangulate23.ip";
connectAttr "polySurfaceShape325.o" "groupParts15.ig";
connectAttr "groupId575.id" "groupParts15.gi";
connectAttr "groupParts16.og" "polyTriangulate24.ip";
connectAttr "polySurfaceShape326.o" "groupParts16.ig";
connectAttr "groupId576.id" "groupParts16.gi";
connectAttr "groupParts17.og" "polyTriangulate25.ip";
connectAttr "polySurfaceShape327.o" "groupParts17.ig";
connectAttr "groupId577.id" "groupParts17.gi";
connectAttr "groupParts18.og" "polyTriangulate26.ip";
connectAttr "polySurfaceShape328.o" "groupParts18.ig";
connectAttr "groupId578.id" "groupParts18.gi";
connectAttr "groupParts19.og" "polyTriangulate27.ip";
connectAttr "polySurfaceShape329.o" "groupParts19.ig";
connectAttr "groupId579.id" "groupParts19.gi";
connectAttr "groupParts20.og" "polyTriangulate28.ip";
connectAttr "polySurfaceShape330.o" "groupParts20.ig";
connectAttr "groupId580.id" "groupParts20.gi";
connectAttr "groupParts21.og" "polyTriangulate29.ip";
connectAttr "polySurfaceShape331.o" "groupParts21.ig";
connectAttr "groupId581.id" "groupParts21.gi";
connectAttr "groupParts22.og" "polyTriangulate30.ip";
connectAttr "polySurfaceShape332.o" "groupParts22.ig";
connectAttr "groupId582.id" "groupParts22.gi";
connectAttr "groupParts23.og" "polyTriangulate31.ip";
connectAttr "polySurfaceShape333.o" "groupParts23.ig";
connectAttr "groupId583.id" "groupParts23.gi";
connectAttr "groupParts24.og" "polyTriangulate32.ip";
connectAttr "polySurfaceShape334.o" "groupParts24.ig";
connectAttr "groupId584.id" "groupParts24.gi";
connectAttr "groupParts25.og" "polyTriangulate33.ip";
connectAttr "polySurfaceShape335.o" "groupParts25.ig";
connectAttr "groupId585.id" "groupParts25.gi";
connectAttr "groupParts26.og" "polyTriangulate34.ip";
connectAttr "polySurfaceShape336.o" "groupParts26.ig";
connectAttr "groupId586.id" "groupParts26.gi";
connectAttr "groupParts27.og" "polyTriangulate35.ip";
connectAttr "polySurfaceShape337.o" "groupParts27.ig";
connectAttr "groupId587.id" "groupParts27.gi";
connectAttr "groupParts28.og" "polyTriangulate36.ip";
connectAttr "polySurfaceShape338.o" "groupParts28.ig";
connectAttr "groupId588.id" "groupParts28.gi";
connectAttr "groupParts29.og" "polyTriangulate37.ip";
connectAttr "polySurfaceShape339.o" "groupParts29.ig";
connectAttr "groupId589.id" "groupParts29.gi";
connectAttr "groupParts30.og" "polyTriangulate38.ip";
connectAttr "polySurfaceShape340.o" "groupParts30.ig";
connectAttr "groupId590.id" "groupParts30.gi";
connectAttr "groupParts31.og" "polyTriangulate39.ip";
connectAttr "polySurfaceShape341.o" "groupParts31.ig";
connectAttr "groupId591.id" "groupParts31.gi";
connectAttr "groupParts32.og" "polyTriangulate40.ip";
connectAttr "polySurfaceShape342.o" "groupParts32.ig";
connectAttr "groupId592.id" "groupParts32.gi";
connectAttr "groupParts33.og" "polyTriangulate41.ip";
connectAttr "polySurfaceShape343.o" "groupParts33.ig";
connectAttr "groupId593.id" "groupParts33.gi";
connectAttr "groupParts34.og" "polyTriangulate42.ip";
connectAttr "polySurfaceShape344.o" "groupParts34.ig";
connectAttr "groupId594.id" "groupParts34.gi";
connectAttr "groupParts35.og" "polyTriangulate43.ip";
connectAttr "polySurfaceShape345.o" "groupParts35.ig";
connectAttr "groupId595.id" "groupParts35.gi";
connectAttr "groupParts36.og" "polyTriangulate44.ip";
connectAttr "polySurfaceShape346.o" "groupParts36.ig";
connectAttr "groupId596.id" "groupParts36.gi";
connectAttr "groupParts37.og" "polyTriangulate45.ip";
connectAttr "polySurfaceShape347.o" "groupParts37.ig";
connectAttr "groupId597.id" "groupParts37.gi";
connectAttr "groupParts38.og" "polyTriangulate46.ip";
connectAttr "polySurfaceShape348.o" "groupParts38.ig";
connectAttr "groupId598.id" "groupParts38.gi";
connectAttr "groupParts39.og" "polyTriangulate47.ip";
connectAttr "polySurfaceShape349.o" "groupParts39.ig";
connectAttr "groupId599.id" "groupParts39.gi";
connectAttr "groupParts40.og" "polyTriangulate48.ip";
connectAttr "polySurfaceShape350.o" "groupParts40.ig";
connectAttr "groupId600.id" "groupParts40.gi";
connectAttr "groupParts41.og" "polyTriangulate49.ip";
connectAttr "polySurfaceShape351.o" "groupParts41.ig";
connectAttr "groupId601.id" "groupParts41.gi";
connectAttr "groupParts42.og" "polyTriangulate50.ip";
connectAttr "polySurfaceShape352.o" "groupParts42.ig";
connectAttr "groupId602.id" "groupParts42.gi";
connectAttr "groupParts43.og" "polyTriangulate51.ip";
connectAttr "polySurfaceShape353.o" "groupParts43.ig";
connectAttr "groupId603.id" "groupParts43.gi";
connectAttr "groupParts44.og" "polyTriangulate52.ip";
connectAttr "polySurfaceShape354.o" "groupParts44.ig";
connectAttr "groupId604.id" "groupParts44.gi";
connectAttr "groupParts45.og" "polyTriangulate53.ip";
connectAttr "polySurfaceShape355.o" "groupParts45.ig";
connectAttr "groupId605.id" "groupParts45.gi";
connectAttr "groupParts46.og" "polyTriangulate54.ip";
connectAttr "polySurfaceShape356.o" "groupParts46.ig";
connectAttr "groupId606.id" "groupParts46.gi";
connectAttr "groupParts47.og" "polyTriangulate55.ip";
connectAttr "polySurfaceShape357.o" "groupParts47.ig";
connectAttr "groupId607.id" "groupParts47.gi";
connectAttr "groupParts48.og" "polyTriangulate56.ip";
connectAttr "polySurfaceShape358.o" "groupParts48.ig";
connectAttr "groupId608.id" "groupParts48.gi";
connectAttr "groupParts49.og" "polyTriangulate57.ip";
connectAttr "polySurfaceShape359.o" "groupParts49.ig";
connectAttr "groupId609.id" "groupParts49.gi";
connectAttr "groupParts50.og" "polyTriangulate58.ip";
connectAttr "polySurfaceShape360.o" "groupParts50.ig";
connectAttr "groupId610.id" "groupParts50.gi";
connectAttr "groupParts51.og" "polyTriangulate59.ip";
connectAttr "polySurfaceShape361.o" "groupParts51.ig";
connectAttr "groupId611.id" "groupParts51.gi";
connectAttr "groupParts52.og" "polyTriangulate60.ip";
connectAttr "polySurfaceShape362.o" "groupParts52.ig";
connectAttr "groupId612.id" "groupParts52.gi";
connectAttr "groupParts53.og" "polyTriangulate61.ip";
connectAttr "polySurfaceShape363.o" "groupParts53.ig";
connectAttr "groupId613.id" "groupParts53.gi";
connectAttr "groupParts54.og" "polyTriangulate62.ip";
connectAttr "polySurfaceShape364.o" "groupParts54.ig";
connectAttr "groupId614.id" "groupParts54.gi";
connectAttr "groupParts55.og" "polyTriangulate63.ip";
connectAttr "polySurfaceShape365.o" "groupParts55.ig";
connectAttr "groupId615.id" "groupParts55.gi";
connectAttr "groupParts56.og" "polyTriangulate64.ip";
connectAttr "polySurfaceShape366.o" "groupParts56.ig";
connectAttr "groupId616.id" "groupParts56.gi";
connectAttr "groupParts57.og" "polyTriangulate65.ip";
connectAttr "polySurfaceShape367.o" "groupParts57.ig";
connectAttr "groupId617.id" "groupParts57.gi";
connectAttr "groupParts58.og" "polyTriangulate66.ip";
connectAttr "polySurfaceShape368.o" "groupParts58.ig";
connectAttr "groupId618.id" "groupParts58.gi";
connectAttr "groupParts59.og" "polyTriangulate67.ip";
connectAttr "polySurfaceShape369.o" "groupParts59.ig";
connectAttr "groupId619.id" "groupParts59.gi";
connectAttr "groupParts60.og" "polyTriangulate68.ip";
connectAttr "polySurfaceShape370.o" "groupParts60.ig";
connectAttr "groupId620.id" "groupParts60.gi";
connectAttr "groupParts61.og" "polyTriangulate69.ip";
connectAttr "polySurfaceShape371.o" "groupParts61.ig";
connectAttr "groupId621.id" "groupParts61.gi";
connectAttr "groupParts62.og" "polyTriangulate70.ip";
connectAttr "polySurfaceShape372.o" "groupParts62.ig";
connectAttr "groupId622.id" "groupParts62.gi";
connectAttr "groupParts63.og" "polyTriangulate71.ip";
connectAttr "polySurfaceShape373.o" "groupParts63.ig";
connectAttr "groupId623.id" "groupParts63.gi";
connectAttr "groupParts64.og" "polyTriangulate72.ip";
connectAttr "polySurfaceShape374.o" "groupParts64.ig";
connectAttr "groupId624.id" "groupParts64.gi";
connectAttr "groupParts65.og" "polyTriangulate73.ip";
connectAttr "polySurfaceShape375.o" "groupParts65.ig";
connectAttr "groupId625.id" "groupParts65.gi";
connectAttr "groupParts66.og" "polyTriangulate74.ip";
connectAttr "polySurfaceShape376.o" "groupParts66.ig";
connectAttr "groupId626.id" "groupParts66.gi";
connectAttr "groupParts67.og" "polyTriangulate75.ip";
connectAttr "polySurfaceShape377.o" "groupParts67.ig";
connectAttr "groupId627.id" "groupParts67.gi";
connectAttr "groupParts68.og" "polyTriangulate76.ip";
connectAttr "polySurfaceShape378.o" "groupParts68.ig";
connectAttr "groupId628.id" "groupParts68.gi";
connectAttr "groupParts69.og" "polyTriangulate77.ip";
connectAttr "polySurfaceShape379.o" "groupParts69.ig";
connectAttr "groupId629.id" "groupParts69.gi";
connectAttr "groupParts70.og" "polyTriangulate78.ip";
connectAttr "polySurfaceShape380.o" "groupParts70.ig";
connectAttr "groupId630.id" "groupParts70.gi";
connectAttr "groupParts71.og" "polyTriangulate79.ip";
connectAttr "polySurfaceShape381.o" "groupParts71.ig";
connectAttr "groupId631.id" "groupParts71.gi";
connectAttr "groupParts72.og" "polyTriangulate80.ip";
connectAttr "polySurfaceShape382.o" "groupParts72.ig";
connectAttr "groupId632.id" "groupParts72.gi";
connectAttr "groupParts73.og" "polyTriangulate81.ip";
connectAttr "polySurfaceShape383.o" "groupParts73.ig";
connectAttr "groupId633.id" "groupParts73.gi";
connectAttr "groupParts74.og" "polyTriangulate82.ip";
connectAttr "polySurfaceShape384.o" "groupParts74.ig";
connectAttr "groupId634.id" "groupParts74.gi";
connectAttr "groupParts75.og" "polyTriangulate83.ip";
connectAttr "polySurfaceShape385.o" "groupParts75.ig";
connectAttr "groupId635.id" "groupParts75.gi";
connectAttr "groupParts76.og" "polyTriangulate84.ip";
connectAttr "polySurfaceShape386.o" "groupParts76.ig";
connectAttr "groupId636.id" "groupParts76.gi";
connectAttr "groupParts77.og" "polyTriangulate85.ip";
connectAttr "polySurfaceShape387.o" "groupParts77.ig";
connectAttr "groupId637.id" "groupParts77.gi";
connectAttr "groupParts78.og" "polyTriangulate86.ip";
connectAttr "polySurfaceShape388.o" "groupParts78.ig";
connectAttr "groupId638.id" "groupParts78.gi";
connectAttr "groupParts79.og" "polyTriangulate87.ip";
connectAttr "polySurfaceShape389.o" "groupParts79.ig";
connectAttr "groupId639.id" "groupParts79.gi";
connectAttr "groupParts80.og" "polyTriangulate88.ip";
connectAttr "polySurfaceShape390.o" "groupParts80.ig";
connectAttr "groupId640.id" "groupParts80.gi";
connectAttr "groupParts81.og" "polyTriangulate89.ip";
connectAttr "polySurfaceShape391.o" "groupParts81.ig";
connectAttr "groupId641.id" "groupParts81.gi";
connectAttr "groupParts82.og" "polyTriangulate90.ip";
connectAttr "polySurfaceShape392.o" "groupParts82.ig";
connectAttr "groupId642.id" "groupParts82.gi";
connectAttr "groupParts83.og" "polyTriangulate91.ip";
connectAttr "polySurfaceShape393.o" "groupParts83.ig";
connectAttr "groupId643.id" "groupParts83.gi";
connectAttr "groupParts84.og" "polyTriangulate92.ip";
connectAttr "polySurfaceShape394.o" "groupParts84.ig";
connectAttr "groupId644.id" "groupParts84.gi";
connectAttr "groupParts85.og" "polyTriangulate93.ip";
connectAttr "polySurfaceShape395.o" "groupParts85.ig";
connectAttr "groupId645.id" "groupParts85.gi";
connectAttr "groupParts86.og" "polyTriangulate94.ip";
connectAttr "polySurfaceShape396.o" "groupParts86.ig";
connectAttr "groupId646.id" "groupParts86.gi";
connectAttr "groupParts87.og" "polyTriangulate95.ip";
connectAttr "polySurfaceShape397.o" "groupParts87.ig";
connectAttr "groupId647.id" "groupParts87.gi";
connectAttr "groupParts88.og" "polyTriangulate96.ip";
connectAttr "polySurfaceShape398.o" "groupParts88.ig";
connectAttr "groupId648.id" "groupParts88.gi";
connectAttr "groupParts89.og" "polyTriangulate97.ip";
connectAttr "polySurfaceShape399.o" "groupParts89.ig";
connectAttr "groupId649.id" "groupParts89.gi";
connectAttr "groupParts90.og" "polyTriangulate98.ip";
connectAttr "polySurfaceShape400.o" "groupParts90.ig";
connectAttr "groupId650.id" "groupParts90.gi";
connectAttr "groupParts91.og" "polyTriangulate99.ip";
connectAttr "polySurfaceShape401.o" "groupParts91.ig";
connectAttr "groupId651.id" "groupParts91.gi";
connectAttr "groupParts92.og" "polyTriangulate100.ip";
connectAttr "polySurfaceShape402.o" "groupParts92.ig";
connectAttr "groupId652.id" "groupParts92.gi";
connectAttr "groupParts93.og" "polyTriangulate101.ip";
connectAttr "polySurfaceShape403.o" "groupParts93.ig";
connectAttr "groupId653.id" "groupParts93.gi";
connectAttr "groupParts94.og" "polyTriangulate102.ip";
connectAttr "polySurfaceShape404.o" "groupParts94.ig";
connectAttr "groupId654.id" "groupParts94.gi";
connectAttr "groupParts95.og" "polyTriangulate103.ip";
connectAttr "polySurfaceShape405.o" "groupParts95.ig";
connectAttr "groupId655.id" "groupParts95.gi";
connectAttr "groupParts96.og" "polyTriangulate104.ip";
connectAttr "polySurfaceShape406.o" "groupParts96.ig";
connectAttr "groupId656.id" "groupParts96.gi";
connectAttr "groupParts97.og" "polyTriangulate105.ip";
connectAttr "polySurfaceShape407.o" "groupParts97.ig";
connectAttr "groupId657.id" "groupParts97.gi";
connectAttr "groupParts98.og" "polyTriangulate106.ip";
connectAttr "polySurfaceShape408.o" "groupParts98.ig";
connectAttr "groupId658.id" "groupParts98.gi";
connectAttr "groupParts99.og" "polyTriangulate107.ip";
connectAttr "polySurfaceShape409.o" "groupParts99.ig";
connectAttr "groupId659.id" "groupParts99.gi";
connectAttr "groupParts100.og" "polyTriangulate108.ip";
connectAttr "polySurfaceShape410.o" "groupParts100.ig";
connectAttr "groupId660.id" "groupParts100.gi";
connectAttr "groupParts101.og" "polyTriangulate109.ip";
connectAttr "polySurfaceShape411.o" "groupParts101.ig";
connectAttr "groupId661.id" "groupParts101.gi";
connectAttr "groupParts102.og" "polyTriangulate110.ip";
connectAttr "polySurfaceShape412.o" "groupParts102.ig";
connectAttr "groupId662.id" "groupParts102.gi";
connectAttr "groupParts103.og" "polyTriangulate111.ip";
connectAttr "polySurfaceShape413.o" "groupParts103.ig";
connectAttr "groupId663.id" "groupParts103.gi";
connectAttr "groupParts104.og" "polyTriangulate112.ip";
connectAttr "polySurfaceShape414.o" "groupParts104.ig";
connectAttr "groupId664.id" "groupParts104.gi";
connectAttr "groupParts105.og" "polyTriangulate113.ip";
connectAttr "polySurfaceShape415.o" "groupParts105.ig";
connectAttr "groupId665.id" "groupParts105.gi";
connectAttr "groupParts106.og" "polyTriangulate114.ip";
connectAttr "polySurfaceShape416.o" "groupParts106.ig";
connectAttr "groupId666.id" "groupParts106.gi";
connectAttr "groupParts107.og" "polyTriangulate115.ip";
connectAttr "polySurfaceShape417.o" "groupParts107.ig";
connectAttr "groupId667.id" "groupParts107.gi";
connectAttr "groupParts108.og" "polyTriangulate116.ip";
connectAttr "polySurfaceShape418.o" "groupParts108.ig";
connectAttr "groupId668.id" "groupParts108.gi";
connectAttr "groupParts109.og" "polyTriangulate117.ip";
connectAttr "polySurfaceShape419.o" "groupParts109.ig";
connectAttr "groupId669.id" "groupParts109.gi";
connectAttr "groupParts110.og" "polyTriangulate118.ip";
connectAttr "polySurfaceShape420.o" "groupParts110.ig";
connectAttr "groupId670.id" "groupParts110.gi";
connectAttr "groupParts111.og" "polyTriangulate119.ip";
connectAttr "polySurfaceShape421.o" "groupParts111.ig";
connectAttr "groupId671.id" "groupParts111.gi";
connectAttr "groupParts112.og" "polyTriangulate120.ip";
connectAttr "polySurfaceShape422.o" "groupParts112.ig";
connectAttr "groupId672.id" "groupParts112.gi";
connectAttr "groupParts113.og" "polyTriangulate121.ip";
connectAttr "polySurfaceShape423.o" "groupParts113.ig";
connectAttr "groupId673.id" "groupParts113.gi";
connectAttr "groupParts114.og" "polyTriangulate122.ip";
connectAttr "polySurfaceShape424.o" "groupParts114.ig";
connectAttr "groupId674.id" "groupParts114.gi";
connectAttr "groupParts115.og" "polyTriangulate123.ip";
connectAttr "polySurfaceShape425.o" "groupParts115.ig";
connectAttr "groupId675.id" "groupParts115.gi";
connectAttr "groupParts116.og" "polyTriangulate124.ip";
connectAttr "polySurfaceShape426.o" "groupParts116.ig";
connectAttr "groupId676.id" "groupParts116.gi";
connectAttr "groupParts117.og" "polyTriangulate125.ip";
connectAttr "polySurfaceShape427.o" "groupParts117.ig";
connectAttr "groupId677.id" "groupParts117.gi";
connectAttr "groupParts118.og" "polyTriangulate126.ip";
connectAttr "polySurfaceShape428.o" "groupParts118.ig";
connectAttr "groupId678.id" "groupParts118.gi";
connectAttr "groupParts119.og" "polyTriangulate127.ip";
connectAttr "polySurfaceShape429.o" "groupParts119.ig";
connectAttr "groupId679.id" "groupParts119.gi";
connectAttr "groupParts120.og" "polyTriangulate128.ip";
connectAttr "polySurfaceShape430.o" "groupParts120.ig";
connectAttr "groupId680.id" "groupParts120.gi";
connectAttr "groupParts121.og" "polyTriangulate129.ip";
connectAttr "polySurfaceShape431.o" "groupParts121.ig";
connectAttr "groupId681.id" "groupParts121.gi";
connectAttr "groupParts122.og" "polyTriangulate130.ip";
connectAttr "polySurfaceShape432.o" "groupParts122.ig";
connectAttr "groupId682.id" "groupParts122.gi";
connectAttr "groupParts123.og" "polyTriangulate131.ip";
connectAttr "polySurfaceShape433.o" "groupParts123.ig";
connectAttr "groupId683.id" "groupParts123.gi";
connectAttr "groupParts124.og" "polyTriangulate132.ip";
connectAttr "polySurfaceShape434.o" "groupParts124.ig";
connectAttr "groupId684.id" "groupParts124.gi";
connectAttr "groupParts125.og" "polyTriangulate133.ip";
connectAttr "polySurfaceShape435.o" "groupParts125.ig";
connectAttr "groupId685.id" "groupParts125.gi";
connectAttr "groupParts126.og" "polyTriangulate134.ip";
connectAttr "polySurfaceShape436.o" "groupParts126.ig";
connectAttr "groupId686.id" "groupParts126.gi";
connectAttr "groupParts127.og" "polyTriangulate135.ip";
connectAttr "polySurfaceShape437.o" "groupParts127.ig";
connectAttr "groupId687.id" "groupParts127.gi";
connectAttr "groupParts128.og" "polyTriangulate136.ip";
connectAttr "polySurfaceShape438.o" "groupParts128.ig";
connectAttr "groupId688.id" "groupParts128.gi";
connectAttr "groupParts129.og" "polyTriangulate137.ip";
connectAttr "polySurfaceShape439.o" "groupParts129.ig";
connectAttr "groupId689.id" "groupParts129.gi";
connectAttr "groupParts130.og" "polyTriangulate138.ip";
connectAttr "polySurfaceShape440.o" "groupParts130.ig";
connectAttr "groupId690.id" "groupParts130.gi";
connectAttr "groupParts131.og" "polyTriangulate139.ip";
connectAttr "polySurfaceShape441.o" "groupParts131.ig";
connectAttr "groupId691.id" "groupParts131.gi";
connectAttr "groupParts132.og" "polyTriangulate140.ip";
connectAttr "polySurfaceShape442.o" "groupParts132.ig";
connectAttr "groupId692.id" "groupParts132.gi";
connectAttr "groupParts133.og" "polyTriangulate141.ip";
connectAttr "polySurfaceShape443.o" "groupParts133.ig";
connectAttr "groupId693.id" "groupParts133.gi";
connectAttr "groupParts134.og" "polyTriangulate142.ip";
connectAttr "polySurfaceShape444.o" "groupParts134.ig";
connectAttr "groupId694.id" "groupParts134.gi";
connectAttr "groupParts135.og" "polyTriangulate143.ip";
connectAttr "polySurfaceShape445.o" "groupParts135.ig";
connectAttr "groupId695.id" "groupParts135.gi";
connectAttr "groupParts136.og" "polyTriangulate144.ip";
connectAttr "polySurfaceShape446.o" "groupParts136.ig";
connectAttr "groupId696.id" "groupParts136.gi";
connectAttr "groupParts137.og" "polyTriangulate145.ip";
connectAttr "polySurfaceShape447.o" "groupParts137.ig";
connectAttr "groupId697.id" "groupParts137.gi";
connectAttr "groupParts138.og" "polyTriangulate146.ip";
connectAttr "polySurfaceShape448.o" "groupParts138.ig";
connectAttr "groupId698.id" "groupParts138.gi";
connectAttr "groupParts139.og" "polyTriangulate147.ip";
connectAttr "polySurfaceShape449.o" "groupParts139.ig";
connectAttr "groupId699.id" "groupParts139.gi";
connectAttr "groupParts140.og" "polyTriangulate148.ip";
connectAttr "polySurfaceShape450.o" "groupParts140.ig";
connectAttr "groupId700.id" "groupParts140.gi";
connectAttr "groupParts141.og" "polyTriangulate149.ip";
connectAttr "polySurfaceShape451.o" "groupParts141.ig";
connectAttr "groupId701.id" "groupParts141.gi";
connectAttr "groupParts142.og" "polyTriangulate150.ip";
connectAttr "polySurfaceShape452.o" "groupParts142.ig";
connectAttr "groupId702.id" "groupParts142.gi";
connectAttr "groupParts143.og" "polyTriangulate151.ip";
connectAttr "polySurfaceShape453.o" "groupParts143.ig";
connectAttr "groupId703.id" "groupParts143.gi";
connectAttr "groupParts144.og" "polyTriangulate152.ip";
connectAttr "polySurfaceShape454.o" "groupParts144.ig";
connectAttr "groupId704.id" "groupParts144.gi";
connectAttr "groupParts145.og" "polyTriangulate153.ip";
connectAttr "polySurfaceShape455.o" "groupParts145.ig";
connectAttr "groupId705.id" "groupParts145.gi";
connectAttr "groupParts146.og" "polyTriangulate154.ip";
connectAttr "polySurfaceShape456.o" "groupParts146.ig";
connectAttr "groupId706.id" "groupParts146.gi";
connectAttr "groupParts147.og" "polyTriangulate155.ip";
connectAttr "polySurfaceShape457.o" "groupParts147.ig";
connectAttr "groupId707.id" "groupParts147.gi";
connectAttr "groupParts148.og" "polyTriangulate156.ip";
connectAttr "polySurfaceShape458.o" "groupParts148.ig";
connectAttr "groupId708.id" "groupParts148.gi";
connectAttr "groupParts149.og" "polyTriangulate157.ip";
connectAttr "polySurfaceShape459.o" "groupParts149.ig";
connectAttr "groupId709.id" "groupParts149.gi";
connectAttr "groupParts150.og" "polyTriangulate158.ip";
connectAttr "polySurfaceShape460.o" "groupParts150.ig";
connectAttr "groupId710.id" "groupParts150.gi";
connectAttr "groupParts151.og" "polyTriangulate159.ip";
connectAttr "polySurfaceShape461.o" "groupParts151.ig";
connectAttr "groupId711.id" "groupParts151.gi";
connectAttr "groupParts152.og" "polyTriangulate160.ip";
connectAttr "polySurfaceShape462.o" "groupParts152.ig";
connectAttr "groupId712.id" "groupParts152.gi";
connectAttr "groupParts153.og" "polyTriangulate161.ip";
connectAttr "polySurfaceShape463.o" "groupParts153.ig";
connectAttr "groupId713.id" "groupParts153.gi";
connectAttr "groupParts154.og" "polyTriangulate162.ip";
connectAttr "polySurfaceShape464.o" "groupParts154.ig";
connectAttr "groupId714.id" "groupParts154.gi";
connectAttr "polySurfaceShape465.o" "polyTriangulate163.ip";
connectAttr "polySurfaceShape466.o" "polyTriangulate164.ip";
connectAttr "groupParts155.og" "polyTriangulate165.ip";
connectAttr "polySurfaceShape467.o" "groupParts155.ig";
connectAttr "groupId715.id" "groupParts155.gi";
connectAttr "groupParts156.og" "polyTriangulate166.ip";
connectAttr "polySurfaceShape468.o" "groupParts156.ig";
connectAttr "groupId716.id" "groupParts156.gi";
connectAttr "groupParts157.og" "polyTriangulate167.ip";
connectAttr "polySurfaceShape469.o" "groupParts157.ig";
connectAttr "groupId717.id" "groupParts157.gi";
connectAttr "groupParts158.og" "polyTriangulate168.ip";
connectAttr "polySurfaceShape470.o" "groupParts158.ig";
connectAttr "groupId718.id" "groupParts158.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "MetalzYellowSG.pa" ":renderPartition.st" -na;
connectAttr "scaffoldFloor:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "pCylinderShape38.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape39.iog" ":initialShadingGroup.dsm" -na;
connectAttr "phongE1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "Metalz.msg" ":defaultShaderList1.s" -na;
connectAttr "MetalzYellow.msg" ":defaultShaderList1.s" -na;
connectAttr "scaffoldFloor:Metalz.msg" ":defaultShaderList1.s" -na;
connectAttr "file34.msg" ":defaultTextureList1.tx" -na;
connectAttr "file35.msg" ":defaultTextureList1.tx" -na;
connectAttr "scaffoldFloor:file34.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "scaffoldFloor:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na
		;
// End of scaffold.ma
