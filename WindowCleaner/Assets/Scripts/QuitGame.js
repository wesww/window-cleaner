/* position of a button that toggles visibility */
var textureToDisplay  :  Texture2D;
/* position of the label that displays an image */
var isVisible : boolean  =  false;
function OnGUI (){
    /* display an image if isVisible is true */
    if ( isVisible ) {
        GUI.Label(Rect ( ((Screen.width/2)-(textureToDisplay.width/2)), ((Screen.height/2)-(textureToDisplay.height/2)), textureToDisplay.width, textureToDisplay.height), textureToDisplay);
    }
}

function Update(){
	if ( Input.GetButtonUp("Pause") ) {
        isVisible = ! isVisible;
		/*pause all game events except for audio*/
		/*if (Time.timeScale == 1.0){
			Time.timeScale = 0.0;
		}
		else{
			Time.timeScale = 1.0;
		}*/
	}
	if( isVisible ){
		if ( Input.GetButtonUp("Quit") ) {
			Application.Quit();
		}
	}
}