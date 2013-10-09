var footstep01: AudioSource;
var footstep02: AudioSource;

function Update () {
}

function aFootHitTheFloor01(){
	print("foot sound 01");
	footstep01.PlayOneShot(footstep02.clip);
}

function aFootHitTheFloor02(){
	print("foot sound 02");
	footstep02.PlayOneShot(footstep02.clip);
}