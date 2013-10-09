Shader "Dirty_Window/Transparent_Diffuse_World_Aligned" {
Properties {
	_Color ("Main Color", Color) = (1,1,1,1)
	_MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
	_Scale ("Texture Scale Multiplier", Float) = 0.1
}

SubShader {
	Tags {"Queue"="Transparent-101" "IgnoreProjector"="True" "RenderType"="Transparent"}
	LOD 200
	Cull Off
	Fog {Mode Off}

	CGPROGRAM
	#pragma surface surf Lambert alpha
	
	sampler2D _MainTex;
	float4 _Color;
	float _Scale;
	
	struct Input {
		float2 uv_MainTex; // unused
		float3 worldNormal;
		float3 worldPos;
	};
	
	void surf (Input IN, inout SurfaceOutput o) {
	  // Guess correct planar map from normal. 0.5 is an arbitrary cutoff
	  float2 UV;
	  // NOTE: assuming no bottom-facing, otherwise use abs()
	  if(IN.worldNormal.y>0.5) UV = IN.worldPos.xz; // top
	  else if(abs(IN.worldNormal.x)>0.5) UV = IN.worldPos.yz; // side
	  else UV = IN.worldPos.xy; // front
	
	  // 0.1 is an arbitrary x10 texture size scale 
	  half4 c = tex2D (_MainTex, UV* _Scale)* _Color;
	  o.Albedo = c.rgb;
	  o.Alpha = c.a;
	}
	
	ENDCG
}

Fallback "Transparent/VertexLit"
}