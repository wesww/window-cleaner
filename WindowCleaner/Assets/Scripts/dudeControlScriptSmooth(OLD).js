#pragma strict
#pragma implicit
#pragma downcast

var dude: GameObject;
//-1.66 is the rightmost boundary on the scaffold, 1.52 the left
// The speed of the keyboard controls. A higher value will 
// cause the object to move more rapidly.
private var keyboardSpeed = 0.05;

function Update()
{
	if ( Input.GetButtonDown("Fire1") ) {
		dude.animation.CrossFade("clean");
	}
}

function FixedUpdate () {
	// Get input from the keyboard, with automatic smoothing (GetAxis instead of GetAxisRaw).
	// We always want the movement to be framerate independent, so we multiply by Time.deltaTime.
	var keyboardX = Input.GetAxis("Horizontal") * keyboardSpeed * Time.deltaTime;
	var newPos = rigidbody.position + Vector3(-keyboardX, 0, 0.0);
	if (newPos.x < -1.66){
		newPos.x = -1.66;
	}
	else if (newPos.x > 1.52){
		newPos.x = 1.52;
	}
	
	
	// Move the object.
	rigidbody.MovePosition(newPos);
}


// Require a Rigidbody component to be attached to the same GameObject.
@script RequireComponent(Rigidbody)