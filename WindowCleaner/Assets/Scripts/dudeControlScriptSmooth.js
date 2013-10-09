#pragma strict
#pragma implicit
#pragma downcast

var dude: GameObject;
//private var dudeIdles : Animation = null;
//dudeIdles=dude.GetComponent(Animation);
var dudeControl: GameObject;
var cleanSound: AudioSource;
var scaffold: GameObject;
//-1.66 is the rightmost boundary on the scaffold, 1.52 the left
// The speed of the keyboard controls. A higher value will 
// cause the object to move more rapidly.

var percentDudeSpeed = 1.00;
private var dudeSync = 0.144;

var lockControls : boolean;
lockControls = false;
public var upsideDown: boolean;
upsideDown = false;
private var walkDirec : int; 
private var randomIdle : float;
private var idling : boolean;

function Start(){
	dude.animation["breathe"].layer = 1;
	dude.animation["clean"].layer = 10;
	dude.animation["walkLeft"].layer = 10;
	dude.animation["walkRight"].layer = 10;
	dude.animation["idle01"].layer = 10;
}
function Update(){
	//ZRot = GameObject.Find("DudeScaffold").transform.eulerAngles.z;
	var newSpeed;
	if(upsideDown == true){
		walkDirec = -1 ;
	}
	if(upsideDown == false){
		walkDirec = 1 ;
	}
}
function Idle(){
	if(idling == true){
		randomIdle = Random.Range(0,10);
		if(lockControls == false) {
			dude.animation.CrossFade("idle01");
			dude.animation.CrossFade("breathe");
			/* //working on a system of random idle animations
			if (randomIdle > 0 && randomIdle < 5) {
				//dude.animation.CrossFade("idle01");
				yield WaitForSeconds (idle01.length);
				print("idle01");
			} 
			if (randomIdle > 5 && randomIdle < 10) {
				//dude.animation.CrossFade("idle02");
				yield WaitForSeconds (idle02.length);
				print("idle02");
			} */
		}
	}
}
function controlUnlock(){
	yield WaitForSeconds (5.4);
	//dude.animation.Stop("walkRight");
	//dude.animation.Stop("walkLeft");
	lockControls = false;
}
function FixedUpdate () {
	//dude.animation.CrossFade("idle01");
	if( lockControls == false) {
		if (Input.GetButtonUp("Fire1")){
			idling = false;
			lockControls = true;
			cleanSound.PlayOneShot(cleanSound.clip);
			dudeControl.animation.Stop("guy_walk_sounds");
			dude.animation.CrossFade("clean");
			controlUnlock();
		}
		else if (Input.GetButton("left") && !dude.animation.IsPlaying("clean") ) { 
			idling = false;
			//dude.animation["walkLeft"].speed = 1;
			dude.animation.CrossFade("walkLeft");
			dudeControl.animation.CrossFade("guy_walk_sounds");
		}
		else if (Input.GetButton("right") && !dude.animation.IsPlaying("clean") ) { 
			idling = false;
			//dude.animation["walkRight"].speed = 1;
			dude.animation.CrossFade("walkRight");
			dudeControl.animation.CrossFade("guy_walk_sounds");
		}
		else{
			idling = true;
			Idle();
			//dude.animation["walkRight"].speed = 0;
			//dude.animation["walkLeft"].speed = 0;
			//dude.animation.Stop("walkRight");
			//dude.animation.Stop("walkLeft");
			dudeControl.animation.Stop("guy_walk_sounds");
			lockControls = false;
		}
		// Get input from the keyboard, with automatic smoothing (GetAxis instead of GetAxisRaw).
		// We always want the movement to be framerate independent, so we multiply by Time.deltaTime.
		var keyboardX = percentDudeSpeed * (Input.GetAxis("Horizontal") * dudeSync * Time.deltaTime);
		dude.animation["walkLeft"].speed = percentDudeSpeed;
		dude.animation["walkRight"].speed = percentDudeSpeed;
		//ZRot = GameObject.Find("DudeScaffold").transform.eulerAngles.z;
		var newPos = rigidbody.position + Vector3( (-keyboardX*walkDirec), 0, 0); 
		if (newPos.x < -1.66){
			newPos.x = -1.66;
		}
		else if (newPos.x > 1.52){
			newPos.x = 1.52;
		}
		rigidbody.MovePosition(newPos); // Move the object.
	}
}

// Require a Rigidbody component to be attached to the same GameObject.
@script RequireComponent(Rigidbody)