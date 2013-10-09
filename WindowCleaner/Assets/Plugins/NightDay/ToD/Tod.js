var SunNight : Color;
var SunDay : Color;
var NightFogColor : Color;
var NightAmbientLight : Color;
var NightTint : Color;
var DuskFogColor : Color;
var DuskAmbientLight : Color;
var DuskTint : Color;
var MorningFogColor : Color;
var MorningAmbientLight : Color;
var MorningTint : Color;
var MiddayFogColor : Color;
var MiddayAmbientLight : Color;
var MiddayTint : Color;
var SkyBoxMaterial1 : Material;
var SkyBoxMaterial2 : Material;
var sun1: Light;
var sun2: Light;
var scaffoldLights: GameObject;

 var slider : float;
 var slider2 : float;
 var Hour : float;
 var Tod: float;
 var daySpeed : float;
daySpeed = 2000;
 var nightSpeed : float;
nightSpeed = 1000;
 var cycleSpeed : float;

//Hour = Random.Range(0, 1);
//slider = Random.Range(0, 1);
//slider2 = Random.Range(0, 1);

function FixedUpdate () {
	//print("  slider_" + slider + "  Hour_" + Hour + "  TOD_" + Tod + "  sun1.intensity_" + sun1.intensity);

	if(slider >=1){
		slider = 0;
	}
	//slider= GUI.HorizontalSlider( Rect(20,20,200,30), slider, 0,1.0);
	Hour= slider*24;
	Tod= slider2*24;
	sun1.transform.localEulerAngles.y= 95;
	sun2.transform.localEulerAngles.y= 95;
	sun1.transform.localEulerAngles.z= 10;
	sun2.transform.localEulerAngles.z= 10;
	sun1.transform.localEulerAngles.x= (slider*360)-90;
	sun2.transform.localEulerAngles.x= (slider*360)-90;
	if(Input.GetButton ("FasterDays")){
		slider = slider +Time.deltaTime/cycleSpeed*60;
	}
	else{
		slider = slider +Time.deltaTime/cycleSpeed;
	}
	sun1.color = Color.Lerp (SunNight, SunDay, slider*2);
	sun2.color = Color.Lerp (SunNight, SunDay, slider*2);
	if(slider<0.5){
		slider2= slider;
	}
	if(slider>0.5){
		slider2= (1-slider);
	}
	sun1.intensity = (slider2-0.2)*4;
	sun2.intensity = (slider2-0.2)*4;
	/*
	if(Tod>6 && Tod<19){ 
		scaffoldLights.SetActiveRecursively(false);
		//print("night lamps off!");
	}
	if(Tod<6 || Tod>19){ 
		scaffoldLights.SetActiveRecursively(true);
		//print("night lamps on!);
	}*/
	if(Tod<4){
		RenderSettings.skybox=SkyBoxMaterial1;
		RenderSettings.skybox.SetFloat("_Blend", 0);
		SkyBoxMaterial1.SetColor ("_Tint", NightTint);
		RenderSettings.ambientLight = NightAmbientLight;
		RenderSettings.fogColor = NightFogColor;
		cycleSpeed = nightSpeed;
		//print("it is Night");
	}
	if(Tod>4&&Tod<6){
		RenderSettings.skybox=SkyBoxMaterial1;
		RenderSettings.skybox.SetFloat("_Blend", 0);
		RenderSettings.skybox.SetFloat("_Blend", (Tod/2)-2);
		SkyBoxMaterial1.SetColor ("_Tint", Color.Lerp (NightTint, DuskTint, (Tod/2)-2) );
		RenderSettings.ambientLight = Color.Lerp (NightAmbientLight, DuskAmbientLight, (Tod/2)-2);
		RenderSettings.fogColor = Color.Lerp (NightFogColor,DuskFogColor, (Tod/2)-2);
		cycleSpeed = nightSpeed;
		//print("it is Sunrise or Dusk");
	}
	if(Tod>6&&Tod<8){
		RenderSettings.skybox=SkyBoxMaterial2;
		RenderSettings.skybox.SetFloat("_Blend", 0);
		RenderSettings.skybox.SetFloat("_Blend", (Tod/2)-3);
		SkyBoxMaterial2.SetColor ("_Tint", Color.Lerp (DuskTint,MorningTint,  (Tod/2)-3) );
		RenderSettings.ambientLight = Color.Lerp (DuskAmbientLight, MorningAmbientLight, (Tod/2)-3);
		RenderSettings.fogColor = Color.Lerp (DuskFogColor,MorningFogColor, (Tod/2)-3);
		cycleSpeed = daySpeed;
		//print("it is Mid-Morning or Early-Afternoon");
	}
	if(Tod>8&&Tod<10){
		RenderSettings.ambientLight = MiddayAmbientLight;
		RenderSettings.skybox=SkyBoxMaterial2;
		RenderSettings.skybox.SetFloat("_Blend", 1);
		SkyBoxMaterial2.SetColor ("_Tint", Color.Lerp (MorningTint,MiddayTint,  (Tod/2)-4) );
		RenderSettings.ambientLight = Color.Lerp (MorningAmbientLight, MiddayAmbientLight, (Tod/2)-4);
		RenderSettings.fogColor = Color.Lerp (MorningFogColor,MiddayFogColor, (Tod/2)-4);
		cycleSpeed = daySpeed;
		//print("it is getting Midday");
	}
}