#pragma strict
#pragma implicit
#pragma downcast

var speed: float;
//var amtToMove = 0;
private var amtMoved: float = 0;
static var movin: boolean = false;
private var yLimit: float = 0;

function Update () {
	if (movin == true){
		amtMoved += speed;
		transform.position.y +=  speed * Time.deltaTime;
	}
	if (transform.position.y > yLimit){  //this needs to be changed (for animation controller) based on amt of Time.deltaTime instead of position
		movin = false;
		transform.position.y = yLimit;
	}
}

function moveUp(){
	print( "Moving it up");
	movin = true;
	amtMoved = 0;
	yLimit = transform.position.y + spawnDirtyWindows.scaley * 10;
	var windowCreationScript: spawnDirtyWindows = GameObject.Find("DirtyScripts").GetComponent(spawnDirtyWindows);
	windowCreationScript.createWindowRow();  
}

@script RequireComponent(Rigidbody)