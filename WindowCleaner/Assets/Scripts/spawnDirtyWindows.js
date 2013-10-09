#pragma strict
#pragma implicit
#pragma downcast

var dirtyPrefab : GameObject;
//var windowDestroyer : GameObject;
var parentOfDirty : Transform;
var theDude : GameObject;
var DudeScaffold : GameObject;
var squeegee: GameObject; //Locater for where the dude is currently cleaning, tells which dirty area will die
var WindowRotater: GameObject;
var WindowRotaterSpecial: GameObject;
var WindowRotaterSpecialBottom: GameObject;
var staticSqueegee: GameObject;
var staticSqueegee180: GameObject;
static var scalex: float = 0.05;
static var scaley: float = 0.05;
var windowCounter :  int = 0;
var lockControls : boolean;
lockControls = false;
private var newWindowNum : int = 0;
var bigDirty : GameObject;

var correctForAmtMovedMinusMoveAmt : float;

function Start(){
	var dirtWidth: float = 3.45;
	var pos: Vector3 = staticSqueegee.transform.position;
	pos.x += dirtWidth/2;
	var leftLimit: Vector3 = pos;
	var rightLimit: Vector3 = pos - Vector3(dirtWidth, 0, 0);
	var topLimit: Vector3 = pos; 
	topLimit.y += 2; //This controls how many new rows are generated initially
	var dirty: GameObject;
	while (pos.y < topLimit.y) {
		while(pos.x >   rightLimit.x) {
			dirty = Instantiate (dirtyPrefab, pos, Quaternion.identity);
			newWindowNum++;
			dirty.name = "dirty "+ newWindowNum;
			dirty.gameObject.layer=14;
			dirty.transform.parent = parentOfDirty;
			dirty.transform.localScale.x = scalex;
			dirty.transform.localScale.z = scaley;
			dirty.transform.Rotate(90, 0, 0);
			pos.x -= scalex * 10;
		}
		pos.x = leftLimit.x;
		pos.y += scaley *10;
	}
}

function Cleaning(){
	var windows : GameObject[];
	windows = GameObject.FindGameObjectsWithTag("window"); 
	var position1 = squeegee.transform.position; 
	//var position2 = windowDestroyer.transform.position;
	// Iterate through all the windows to see which one is under the cleaner object
	for (var win : GameObject in windows)  { 
		 var windowArea = Rect (win.collider.bounds.min.x, win.collider.bounds.min.y, win.collider.bounds.size.x, win.collider.bounds.size.y);
		// var destroyArea = Rect (windowDestroyer.collider.bounds.min.x, windowDestroyer.collider.bounds.min.y,windowDestroyer.collider.bounds.size.x, windowDestroyer.collider.bounds.size.y);
		 if (windowArea.Contains(Vector2(position1.x, position1.y))   ){//     || windowArea.Contains(Vector2(position2.x, position2.y)) ) { //if a window is under the squeegee OR under the killbox
			iTween.FadeTo(win,{"alpha":0, "time":5.4, "onComplete":"destroy"});
			Destroy(win, 5.4);
			windowCounter++;
			var windowsLeftToClean = (7-windowCounter);
			print(windowCounter + " windows cleaned this row," + windowsLeftToClean + "more to go");
			if(windowCounter == 7 ){
				moveUpFire();
			}
			break;
		}
   }
}

function Update() {
	//ZRot = WindowRotater.transform.eulerAngles;
	//parentOfDirty.transform.localEulerAngles = ZRot;
	
	//ZRot = WindowRotater.transform.eulerAngles; //THIS CODE WORKS TO ROTATE THE WINDOWS
	//parentOfDirty.transform.eulerAngles = ZRot;   //THIS CODE WORKS TO ROTATE THE WINDOWS
	
	var YPos = DudeScaffold.transform.position.y;
	bigDirty.transform.position.y = YPos; 
	
	//ZRot = WindowRotater.transform.rotation;
	//parentOfDirty.transform.localRotation = ZRot;
	
	//ZRot = WindowRotater.transform.rotation;
	//parentOfDirty.transform.Rotation = ZRot;
	
	//parentOfDirty.transform.rotation = ZRot * Quaternion.AngleAxis (???, ???); //I don't know how AngleAxis works

	//print(ZRot);
	
	if (Input.GetButtonDown("Fire1") && lockControls == false) {
		lockControls = true;
		Cleaning();
		controlUnlock();
	}
	if (Input.GetButton("cheat")){
		cheat();
	}
}

function cheat(){ //identical to "function moveUpFire" but with no WaitForSeconds. Cheater.
//	print("function cheat");
	var script : scaffoldControlScriptAnimPath = DudeScaffold.GetComponent(scaffoldControlScriptAnimPath);
	script.cheat();
	windowCounter = 0;
//	print(windowCounter + " windows cleaned this row");
}

function moveUpFire(){
	print("function moveUpFire");
	yield WaitForSeconds (5.4);
	var script : scaffoldControlScriptAnimPath = DudeScaffold.GetComponent(scaffoldControlScriptAnimPath);
	script.moveUp();
	windowCounter = 0;
}

function controlUnlock(){
	yield WaitForSeconds (5.4);
	lockControls = false;
}

/*function destroy(win : GameObject) {
	Destroy(win);
}*/

function createWindowRow() {
	var dirtWidth: float = 3.45;
	var pos0: Vector3 = staticSqueegee.transform.position;
	var pos180: Vector3 = staticSqueegee180.transform.position;
	var pos: Vector3;
	var scafRotZ = DudeScaffold.transform.eulerAngles.z;
	if(scafRotZ >= -0.5 && scafRotZ <= 0.5){
		pos = pos0;
	}
	if(scafRotZ >= 179.5 && scafRotZ <= 180.5){
		pos = pos180;
	}
	pos.x += dirtWidth/2;
	pos.y = (WindowRotater.transform.position.y - correctForAmtMovedMinusMoveAmt);
	print("WindowRotater.transform.position.y: " + WindowRotater.transform.position.y + ";  correctForAmtMovedMinusMoveAmt: " + correctForAmtMovedMinusMoveAmt + ";  pos.y:" + pos.y);
	var leftLimit: Vector3 = pos;
	var rightLimit: Vector3 = pos - Vector3(dirtWidth, 0, 0);
	var newWindow: GameObject;
//	print("function createWindowRow");
	while(pos.x >  rightLimit.x) {
		newWindow = Instantiate (dirtyPrefab, pos, Quaternion.identity);
		newWindowNum++;
		newWindow.name = "dirty "+ newWindowNum;
		newWindow.gameObject.layer=14;
		newWindow.transform.Rotate(90,0,0); 
		newWindow.transform.parent = parentOfDirty;
		//newWindow.transform.Rotate(90,0,0, Space.Self);  // doesn't work
		//newWindow.transform.Rotate(90,0,0, Space.World);
		newWindow.transform.localEulerAngles.x =90; 
		newWindow.transform.localEulerAngles.y =0; 
		newWindow.transform.localEulerAngles.z =0; 
		
		newWindow.transform.localScale.x = scalex;
		newWindow.transform.localScale.z = scaley;
		pos.x -= scalex * 10;
	}
}

function specialWindowSpawn(){
	var dirtWidth: float = 3.45;
	var pos: Vector3 = WindowRotaterSpecial.transform.position;
	pos.x += dirtWidth/2;
	var leftLimit: Vector3 = pos;
	var rightLimit: Vector3 = pos - Vector3(dirtWidth, 0, 0);
	var topLimit: Vector3 = pos; 
	topLimit.y += 2; //This controls how many new rows are generated initially
	var dirty: GameObject;
	while (pos.y < topLimit.y) {
		while(pos.x >   rightLimit.x) {
			dirty = Instantiate (dirtyPrefab, pos, Quaternion.identity);
			newWindowNum++;
			dirty.name = "dirty "+ newWindowNum;
			dirty.gameObject.layer=14;
			dirty.transform.parent = parentOfDirty;
			dirty.transform.localScale.x = scalex;
			dirty.transform.localScale.z = scaley;
			dirty.transform.Rotate(90, 0, 0);
			pos.x -= scalex * 10;
		}
		pos.x = leftLimit.x;
		pos.y += scaley *10;
	}
}

function specialWindowSpawnBottom(){
	var dirtWidth: float = 3.45;
	var pos: Vector3 = WindowRotaterSpecialBottom.transform.position;
	pos.x += dirtWidth/2;
	var leftLimit: Vector3 = pos;
	var rightLimit: Vector3 = pos - Vector3(dirtWidth, 0, 0);
	var topLimit: Vector3 = pos; 
	topLimit.y += 2; //This controls how many new rows are generated initially
	var dirty: GameObject;
	while (pos.y < topLimit.y) {
		while(pos.x >   rightLimit.x) {
			dirty = Instantiate (dirtyPrefab, pos, Quaternion.identity);
			newWindowNum++;
			dirty.name = "dirty "+ newWindowNum;
			dirty.gameObject.layer=14;
			dirty.transform.parent = parentOfDirty;
			dirty.transform.localScale.x = scalex;
			dirty.transform.localScale.z = scaley;
			dirty.transform.Rotate(90, 0, 0);
			pos.x -= scalex * 10;
		}
		pos.x = leftLimit.x;
		pos.y += scaley *10;
	}
}