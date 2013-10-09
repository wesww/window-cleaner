var soundToPlay : AudioSource;
var randomStartingTime;

function Start(){   
    randomStartingTime = Random.Range(0.0, 780.0);
    PlaySound();
}

function PlaySound(){
	soundToPlay.time = randomStartingTime;
    soundToPlay.Play();
}

function Update(){
	//print  (soundToPlay.time);
}