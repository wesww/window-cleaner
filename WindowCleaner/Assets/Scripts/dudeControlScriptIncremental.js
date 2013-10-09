
var dude: GameObject;

var stepDistance: float;
var stepTime: float;

var stepStartTime: float;
var moving: boolean;
var startPos: Vector3;
var endPos: Vector3;

function Update () {
	if (!moving) {
		var dir = Input.GetAxisRaw("Horizontal");
		if (dir != 0) {
			moving = true;
			startPos = transform.position;
			endPos = transform.position + Vector3(-1,0,0) * stepDistance * dir;
			stepStartTime = Time.time;
		}
	} else {
		var progress: float;
		progress = (Time.time - stepStartTime) / stepTime;
		
		if (progress >= 1.0) {
			transform.position = endPos;
			moving = false;
		} else {
			transform.position = Vector3.Lerp(startPos, endPos, progress);
		}
	}

   if (Input.GetButtonDown ("Fire1")){
      dude.animation.CrossFade("clean");
	  print("clean");
	}

	if (Input.GetKeyDown (KeyCode.RightArrow)){
      dude.animation.CrossFade("walkRight");
	}
} 
