var rainObject : GameObject;
private var randomStartingTime;

function Start(){   
    randomStartingTime = Random.Range(0.0, 700.0);
    PlaySound();
}

function disableTheseWhileRaining(){
	
}

function PlaySound(){
	rainObject.animation["rainCycle"].time = randomStartingTime;
    animation.Play("rainCycle");
}

function Update(){
	//print  (soundToPlay.time);
}