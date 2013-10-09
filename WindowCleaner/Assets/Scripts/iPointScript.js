//create a boolean to be set to true in certain situations

function Start(){
	
	//set to false
	
	//set all objects to active
	this.gameObject.active = true;
}

function Update(){
	
	
}

function OnTriggerEnter(c : Collider){
	if(c.CompareTag("Player")){
		
		//display a GUI and play a sound
		//broadcast message that calls a function to remove
		playAudio(); 
	}
}

function OnTriggerExit(c : Collider){
	if(c.CompareTag("Player")){
		
		//when visited set this state to false
		this.gameObject.active = false;

	}	
}

//play the relevant audio file depending on the waypoint visited
function playAudio(){
	if(this.gameObject.name == "Red Bar"){
		Debug.Log("Red Bar Audio");	
	} else if(this.gameObject.name == "Library"){
		Debug.Log("Library Audio");
	} else if(this.gameObject.name == "Job Shop"){
		Debug.Log("Job Shop Audio");
	}	
}