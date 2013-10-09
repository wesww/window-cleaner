#pragma strict
#pragma implicit
#pragma downcast

var speed: float;

static var movin: boolean = false;
private var yLimit: float = 0;
var DudeScaffold : GameObject;
var DudeControl : GameObject;
var bird : GameObject;
var scaffoldSound : AudioSource;
//var mainCamera : GameObject;

private var amtMoved : float = 0.0; //current distance travelled
private var moveAmt : float  = .5; //goal distance amount to travel
private var scaffoldCurrentPos: float; //current position
private var scaffoldStartPos: float; //starting position

private var amtRotated : float = 0.0; //current rotate travelled
private var rotateAmt : float  = 180.0; //goal rotate amount to travel
private var scaffoldCurrentRot: float; //current position
private var scaffoldStartRot: float; //starting position

private var rowCount: int = 0;
private var totalRowCount: int = 0;
private var rowTimer: float = 0.0;
private var specialWindowSpawnOnce: int = 0;

function Start(){
	animation["ScaffoldAnimPath"].speed = 0; 
	animation.CrossFade("ScaffoldAnimPath"); 
	//mainCamera.animation["camera"].speed = 0; 
	//mainCamera.animation.CrossFade("camera"); 
	scaffoldCurrentPos = DudeScaffold.transform.position.y; //current Y axis location
	scaffoldStartPos = DudeScaffold.transform.position.y; //set the starting Y axis location
	scaffoldCurrentRot = DudeScaffold.transform.rotation.z; //current Y axis location
	scaffoldStartRot = DudeScaffold.transform.rotation.z; //set the starting Y axis location ( == 0 )
	//print(scaffoldStartRot); //
}
function FixedUpdate () {
	scaffoldCurrentPos = DudeScaffold.transform.position.y; //current Y axis location
	amtMoved = Mathf.Abs(scaffoldCurrentPos - scaffoldStartPos); //how far scaffold has moved
	amtRotated = Mathf.Abs(scaffoldCurrentRot - scaffoldStartRot); //how far scaffold has moved
	rowTimer = rowTimer + (1*Time.deltaTime);
	if(rowTimer > 300){
		rowCount = 0;
		rowTimer = 0;
	}
	//print("rowTimer = " + rowTimer); //+ "Time.time = " + Time.time);
	var scafRotZ = DudeScaffold.transform.eulerAngles.z;
	if (amtMoved >= moveAmt){
		stopMoving();
	}
	//print(scafRotZ);
	//print("rowCount == " + rowCount + "  rowTimer ==" + rowTimer);
	//if((scafRotZ >= -0.4 && scafRotZ <= 0.4) || (scafRotZ >= 179.5 && scafRotZ <= 180.5)){
		/*if (amtMoved >= moveAmt){
			stopMoving();
		}
		else if (amtRotated >= (rotateAmt-1)){
			stopMoving();
			print("Stopping based on amtRotated >= rotateAmt");
		}/*
	//}
	/*
	if((scafRotZ <= -0.5 && scafRotZ >= 0.5) || (scafRotZ <= 179.5 && scafRotZ >= 180.5)){
		if(specialWindowSpawnOnce == 0){
			specialWindowSpawnFunction();
		}
		specialWindowSpawnOnce++;
	}*/
}
function moveUp(){
	//animate the scaffold path for a sec
	print( "function moveUp");
	scaffoldSound.Play();
	animation["ScaffoldAnimPath"].speed = 1;
	//mainCamera.animation["camera"].speed = 1; 
}
function cheat(){
	//animate the scaffold path for a sec
//	print( "function moveUp");
	scaffoldSound.Play();
	animation["ScaffoldAnimPath"].speed = 5;
	//mainCamera.animation["camera"].speed = 0; 
	/*
	var cheatCleaning = (totalRowCount*7);
	var windows : GameObject[];
	windows = GameObject.Find("window"); 
	if(){
	}
	*/
}
function specialStopMoving(){
	//yLimit = transform.position.y + spawnDirtyWindows.scaley * 10; //
	//var script: spawnDirtyWindows = GameObject.Find("DirtyScripts").GetComponent(spawnDirtyWindows); //
	//script.createWindowRow();  //calls "function createWindowRow" in "spawnDirtyWindow.js"
	//yield WaitForSeconds(3);
	animation["ScaffoldAnimPath"].speed = 0;
	//mainCamera.animation["camera"].speed = 0; 
	scaffoldSound.Stop();
	scaffoldStartPos = scaffoldCurrentPos;
	totalRowCount++;
	rowCount ++;
	if(rowCount >= 4 && rowTimer <= 300){
		bird.animation.Play();
		rowCount = 0;
		rowTimer = 0;
	}
}
function stopMoving(){
	//New window rows are spawned based on the position of the scaffold
	//when it stops moving.
	//The position of the scaffold is based on an animation.
	//I need the position to be very precise or else there will be seams
	//between rows.
	//However, since animation frames and graphics card frames don't
	//align, I need to correct for the difference of how much 
	//the animation overshoots the target spot.
	//Thus:
	amtMovedMinusMoveAmt = Mathf.Abs(amtMoved - moveAmt);
	print("(amtMoved:"+amtMoved + ")-  (moveAmt" +moveAmt +")" + "= amtMovedMinusMoveAmt" + amtMovedMinusMoveAmt);
	var script: spawnDirtyWindows = GameObject.Find("DirtyScripts").GetComponent(spawnDirtyWindows);
	script.correctForAmtMovedMinusMoveAmt = amtMovedMinusMoveAmt;

	//yLimit = transform.position.y + spawnDirtyWindows.scaley * 10; //
	script.createWindowRow();  //calls "function createWindowRow" in "spawnDirtyWindow.js"
	animation["ScaffoldAnimPath"].speed = 0;
	//mainCamera.animation["camera"].speed = 0; 
	scaffoldSound.Stop();
	scaffoldStartPos = scaffoldCurrentPos;
	totalRowCount++;
	rowCount ++;
	if(rowCount >= 4 && rowTimer <= 300){
		bird.animation.Play();
		rowCount = 0;
		rowTimer = 0;
	}
}
function specialWindowSpawnFunction(){
	DudeControl.GetComponent.< dudeControlScriptSmooth >().upsideDown = true;
	print("SPECIAL WINDOW SPAWN TIME ANIMATION EVENT CALLED");
	var script: spawnDirtyWindows = GameObject.Find("DirtyScripts").GetComponent(spawnDirtyWindows); //
	script.specialWindowSpawn();
	//yield WaitForSeconds(10);
	//specialWindowSpawnOnce = 0;
}
function specialWindowSpawnFunctionBottom(){
	DudeControl.GetComponent.< dudeControlScriptSmooth >().upsideDown = false;	
	print("SPECIAL WINDOW SPAWN TIME ANIMATION EVENT CALLED");
	var script: spawnDirtyWindows = GameObject.Find("DirtyScripts").GetComponent(spawnDirtyWindows); //
	script.specialWindowSpawnBottom();
	//yield WaitForSeconds(10);
	//specialWindowSpawnOnce = 0;
}

@script RequireComponent(Rigidbody);