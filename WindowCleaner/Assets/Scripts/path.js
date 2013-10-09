//declare a variable to hold the game arrow
var navigationAid : GameObject;

function Update(){
	//check which is the closest ipoint to the player each frame
	var nearestPoint = FindClosestiPoint();
	
	//if there is an iPoint that is still active point at it
	if(nearestPoint != null){
		//point the navigation arrow at the nearest iPoint to the player
		PointAtMe(navigationAid,nearestPoint.transform);
	}else{
		//if there are no more iPoints active in the world, kill the arrpw
		Destroy(navigationAid);
	}
}

//function to find the closest iPoint and point the arrow at that one

function FindClosestiPoint () : GameObject {
    // Find all game objects with tag Enemy
    var ipoints : GameObject[];
    ipoints = GameObject.FindGameObjectsWithTag("infoPoint"); 
    var closest : GameObject; 
    var distance = Mathf.Infinity; 
    var position = transform.position; 
    // Iterate through them and find the closest one
    for (var iP : GameObject in ipoints)  { 
        var diff = (iP.transform.position - position);
        var curDistance = diff.sqrMagnitude; 
        if (curDistance < distance) { 
            closest = iP; 
            distance = curDistance; 
        } 
    } 
    return closest;
}

//function to point the navigation arrow at the iPoint closest to the player
function PointAtMe(navAid : GameObject, nearestPoint : Transform){
		navAid.transform.LookAt(nearestPoint);
}