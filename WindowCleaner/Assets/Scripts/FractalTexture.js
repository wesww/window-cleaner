// This script is placed in public domain. The author takes no responsibility for any possible harm.

var gray = true;
var width = 128;
var height = 128;
var lacunarity = 6.18;
var h = 0.69;
var octaves = 8.379;
var offset = 0.75;
var scale = 0.09;
var offsetPos = 0.0;
//var textureSpeed = 0.0;
private var texture : Texture2D;
private var perlin : Perlin;
private var fractal : FractalNoise;
var noiseSpeed = 2.00;
private var noisePlus = 0.00;


function Start (){
	texture = new Texture2D(width, height, TextureFormat.ARGB32, false);
	renderer.material.mainTexture = texture;
	InvokeRepeating("Calculate", .02, .02); //wait__ seconds, then every __ seconds, recalculate the noise texture math
	InvokeRepeating("newNoise", .02, 1); //wait__ seconds, then every __  seconds, slightly offset the noise texture
}

/*function runCalculate(){
	yield WaitForSeconds (1);
	Calculate();
}*/

function Update(){
	//Calculate();
	print (noisePlus);
}

function newNoise(){
	noisePlus += .008;
}

function Calculate(){
	if (perlin == null){
		perlin = new Perlin();
	}
	fractal = new FractalNoise(h, lacunarity, octaves, perlin);
	for (var y = 0;y<height;y++){
		for (var x = 0; x<width; x++)
		{
			if (gray){
				var value = fractal.HybridMultifractal(x*scale + noisePlus, y * scale + noisePlus, offset);
				texture.SetPixel(x, y, Color (value, value, value, value));
			}
			else{
				offsetPos = Time.time;
				var valuex = fractal.HybridMultifractal(x*scale + offsetPos * 0.6, y*scale + offsetPos * 0.6, offset);
				var valuey = fractal.HybridMultifractal(x*scale + 161.7 + offsetPos * 0.2, y*scale + 161.7 + offsetPos * 0.3, offset);
				var valuez = fractal.HybridMultifractal(x*scale + 591.1 + offsetPos, y*scale + 591.1 + offsetPos * 0.1, offset);
				texture.SetPixel(x, y, Color (valuex, valuey, valuez, 1));
			}
		}	
	}
	texture.Apply();
}