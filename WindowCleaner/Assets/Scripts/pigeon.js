var thud: AudioSource;
var particles1: GameObject;
var particles2: GameObject;

function Update () {
}

function thump_sound(){
	thud.Play();
}

function impact1(){
	(particles1.GetComponent(ParticleRenderer) as Renderer).enabled = true;
}

function impact2(){
	(particles2.GetComponent(ParticleRenderer) as Renderer).enabled = true;
}

function particles1Disabled(){
	(particles1.GetComponent(ParticleRenderer) as Renderer).enabled = false;
}

function particles2Disabled(){
	(particles2.GetComponent(ParticleRenderer) as Renderer).enabled = false;
}