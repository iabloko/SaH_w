// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33125,y:32704,varname:node_2865,prsc:2|diff-4018-OUT,spec-5513-OUT,gloss-7142-OUT,normal-4332-OUT,emission-4229-OUT;n:type:ShaderForge.SFN_Tex2d,id:1285,x:31475,y:32598,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:5513,x:32267,y:32203,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7142,x:32267,y:32113,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Tex2d,id:771,x:31652,y:32784,ptovrint:False,ptlb:Fast_speed,ptin:_Fast_speed,varname:node_1348,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:624a37bda6b3ca14fb7d570f1a288e0a,ntxv:0,isnm:False|UVIN-8382-OUT;n:type:ShaderForge.SFN_TexCoord,id:1015,x:30352,y:32788,varname:node_1015,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:5478,x:30942,y:32782,varname:node_5478,prsc:2,spu:0.25,spv:0|UVIN-9500-UVOUT,DIST-6119-OUT;n:type:ShaderForge.SFN_Slider,id:4660,x:31475,y:32509,ptovrint:False,ptlb:Normal_Power,ptin:_Normal_Power,varname:node_488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.5,max:2;n:type:ShaderForge.SFN_Vector1,id:8908,x:31822,y:32543,varname:node_8908,prsc:2,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:5830,x:31632,y:32598,varname:node_5830,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1285-RGB;n:type:ShaderForge.SFN_Multiply,id:5439,x:31822,y:32598,varname:node_5439,prsc:2|A-5830-OUT,B-4660-OUT;n:type:ShaderForge.SFN_Append,id:4332,x:32009,y:32598,varname:node_4332,prsc:2|A-5439-OUT,B-8908-OUT;n:type:ShaderForge.SFN_RemapRange,id:8382,x:31462,y:32782,varname:node_8382,prsc:2,frmn:1,frmx:-1,tomn:0,tomx:-1|IN-5861-UVOUT;n:type:ShaderForge.SFN_Panner,id:5861,x:31294,y:32782,varname:node_5861,prsc:2,spu:0,spv:0.2|UVIN-5478-UVOUT,DIST-8720-OUT;n:type:ShaderForge.SFN_Slider,id:6119,x:30195,y:32961,ptovrint:False,ptlb:X_Offset,ptin:_X_Offset,varname:node_9574,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:5.853844,max:10;n:type:ShaderForge.SFN_Tex2d,id:8725,x:31652,y:33198,ptovrint:False,ptlb:Medium_Speed,ptin:_Medium_Speed,varname:node_9189,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d7e1bded471a35940864d52a9113a215,ntxv:0,isnm:False|UVIN-9122-OUT;n:type:ShaderForge.SFN_Color,id:3217,x:31652,y:32965,ptovrint:False,ptlb:Color_Fast_Speed,ptin:_Color_Fast_Speed,varname:node_7239,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1865,x:32161,y:32784,varname:node_1865,prsc:2|A-771-RGB,B-3217-RGB;n:type:ShaderForge.SFN_Tex2d,id:5444,x:31631,y:32080,ptovrint:False,ptlb:Albedo,ptin:_Albedo,varname:node_3712,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5026,x:31631,y:32271,ptovrint:False,ptlb:Albedo_Color,ptin:_Albedo_Color,varname:node_6203,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:4018,x:31851,y:32177,varname:node_4018,prsc:2|A-5444-RGB,B-5026-RGB;n:type:ShaderForge.SFN_Slider,id:3211,x:30432,y:33693,ptovrint:False,ptlb:X_Offset_2,ptin:_X_Offset_2,varname:_X_Offset_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:5.853844,max:10;n:type:ShaderForge.SFN_TexCoord,id:2081,x:30589,y:33530,varname:node_2081,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:8071,x:30815,y:33530,varname:node_8071,prsc:2,spu:0.5,spv:0|UVIN-2081-UVOUT,DIST-3211-OUT;n:type:ShaderForge.SFN_Panner,id:1233,x:31228,y:33352,varname:node_1233,prsc:2,spu:0,spv:0.15|UVIN-8071-UVOUT,DIST-6864-OUT;n:type:ShaderForge.SFN_RemapRange,id:9122,x:31429,y:33328,varname:node_9122,prsc:2,frmn:1,frmx:-1,tomn:0,tomx:-1|IN-1233-UVOUT;n:type:ShaderForge.SFN_Add,id:4229,x:32490,y:32866,varname:node_4229,prsc:2|A-1865-OUT,B-7271-OUT,C-688-OUT;n:type:ShaderForge.SFN_Color,id:8051,x:31652,y:33389,ptovrint:False,ptlb:Folor_Medium_Speed,ptin:_Folor_Medium_Speed,varname:node_9400,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7271,x:31874,y:33198,varname:node_7271,prsc:2|A-8725-RGB,B-8051-RGB;n:type:ShaderForge.SFN_Tex2d,id:6698,x:31658,y:34174,ptovrint:False,ptlb:Low_Speed,ptin:_Low_Speed,varname:_Emission_Text_3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d7e1bded471a35940864d52a9113a215,ntxv:0,isnm:False|UVIN-4186-OUT;n:type:ShaderForge.SFN_Slider,id:9935,x:30494,y:34422,ptovrint:False,ptlb:X_Offset_3,ptin:_X_Offset_3,varname:_X_Offset_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:5.853844,max:10;n:type:ShaderForge.SFN_TexCoord,id:9159,x:30651,y:34259,varname:node_9159,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7284,x:30877,y:34259,varname:node_7284,prsc:2,spu:0.5,spv:0|UVIN-9159-UVOUT,DIST-9935-OUT;n:type:ShaderForge.SFN_Panner,id:8067,x:31095,y:34259,varname:node_8067,prsc:2,spu:0,spv:0.05|UVIN-7284-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:4186,x:31298,y:34259,varname:node_4186,prsc:2,frmn:1,frmx:-1,tomn:0,tomx:-1|IN-8067-UVOUT;n:type:ShaderForge.SFN_Color,id:5696,x:31658,y:34365,ptovrint:False,ptlb:Color_Low_Speed,ptin:_Color_Low_Speed,varname:_EmissionColor_3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:688,x:31880,y:34174,varname:node_688,prsc:2|A-6698-RGB,B-5696-RGB;n:type:ShaderForge.SFN_Rotator,id:9500,x:30685,y:32691,varname:node_9500,prsc:2|UVIN-1015-UVOUT,ANG-485-OUT,SPD-6173-OUT;n:type:ShaderForge.SFN_Slider,id:485,x:30274,y:32591,ptovrint:False,ptlb:1,ptin:_1,varname:node_485,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6173,x:30274,y:32687,ptovrint:False,ptlb:2,ptin:_2,varname:node_6173,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:8936,x:29816,y:33588,varname:node_8936,prsc:2;n:type:ShaderForge.SFN_Multiply,id:533,x:30553,y:33077,varname:node_533,prsc:2|A-6880-OUT,B-8936-TSL;n:type:ShaderForge.SFN_ValueProperty,id:6880,x:30164,y:33136,ptovrint:False,ptlb:Speed_1,ptin:_Speed_1,varname:node_6880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_RemapRange,id:8720,x:31112,y:32916,varname:node_8720,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-6129-OUT;n:type:ShaderForge.SFN_ValueProperty,id:64,x:30011,y:33804,ptovrint:False,ptlb:Speed_2,ptin:_Speed_2,varname:node_64,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9760,x:30222,y:33825,varname:node_9760,prsc:2|A-64-OUT,B-8936-TSL;n:type:ShaderForge.SFN_Tan,id:7603,x:30401,y:33825,varname:node_7603,prsc:2|IN-9760-OUT;n:type:ShaderForge.SFN_RemapRange,id:6864,x:30865,y:33742,varname:node_6864,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5464-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:5464,x:30611,y:33815,varname:node_5464,prsc:2,a:0,b:1|IN-7603-OUT;n:type:ShaderForge.SFN_Tan,id:4912,x:30737,y:33038,varname:node_4912,prsc:2|IN-533-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:6129,x:30930,y:32999,varname:node_6129,prsc:2,a:0,b:1|IN-4912-OUT;proporder:5444-5026-771-6880-6119-3217-8725-3211-64-8051-6698-9935-5696-1285-4660-5513-7142-485-6173;pass:END;sub:END;*/

Shader "Shader Forge/Main" {
    Properties {
        _Albedo ("Albedo", 2D) = "white" {}
        _Albedo_Color ("Albedo_Color", Color) = (0.5,0.5,0.5,1)
        _Fast_speed ("Fast_speed", 2D) = "white" {}
        _Speed_1 ("Speed_1", Float ) = 1
        _X_Offset ("X_Offset", Range(0.1, 10)) = 5.853844
        _Color_Fast_Speed ("Color_Fast_Speed", Color) = (1,1,1,1)
        _Medium_Speed ("Medium_Speed", 2D) = "white" {}
        _X_Offset_2 ("X_Offset_2", Range(0.1, 10)) = 5.853844
        _Speed_2 ("Speed_2", Float ) = 1
        _Folor_Medium_Speed ("Folor_Medium_Speed", Color) = (1,1,1,1)
        _Low_Speed ("Low_Speed", 2D) = "white" {}
        _X_Offset_3 ("X_Offset_3", Range(0.1, 10)) = 5.853844
        _Color_Low_Speed ("Color_Low_Speed", Color) = (1,1,1,1)
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Normal_Power ("Normal_Power", Range(0.1, 2)) = 0.5
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _1 ("1", Range(0, 1)) = 0
        _2 ("2", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _Fast_speed; uniform float4 _Fast_speed_ST;
            uniform float _Normal_Power;
            uniform float _X_Offset;
            uniform sampler2D _Medium_Speed; uniform float4 _Medium_Speed_ST;
            uniform float4 _Color_Fast_Speed;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float4 _Albedo_Color;
            uniform float _X_Offset_2;
            uniform float4 _Folor_Medium_Speed;
            uniform sampler2D _Low_Speed; uniform float4 _Low_Speed_ST;
            uniform float _X_Offset_3;
            uniform float4 _Color_Low_Speed;
            uniform float _1;
            uniform float _2;
            uniform float _Speed_1;
            uniform float _Speed_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = float3((_BumpMap_var.rgb.rg*_Normal_Power),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float3 diffuseColor = (_Albedo_var.rgb*_Albedo_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_8936 = _Time;
                float node_533 = (_Speed_1*node_8936.r);
                float node_4912 = tan(node_533);
                float node_9500_ang = _1;
                float node_9500_spd = _2;
                float node_9500_cos = cos(node_9500_spd*node_9500_ang);
                float node_9500_sin = sin(node_9500_spd*node_9500_ang);
                float2 node_9500_piv = float2(0.5,0.5);
                float2 node_9500 = (mul(i.uv0-node_9500_piv,float2x2( node_9500_cos, -node_9500_sin, node_9500_sin, node_9500_cos))+node_9500_piv);
                float2 node_5861 = ((node_9500+_X_Offset*float2(0.25,0))+(lerp(0,1,node_4912)*0.5+0.5)*float2(0,0.2));
                float2 node_8382 = (node_5861*0.5+-0.5);
                float4 _Fast_speed_var = tex2D(_Fast_speed,TRANSFORM_TEX(node_8382, _Fast_speed));
                float2 node_9122 = (((i.uv0+_X_Offset_2*float2(0.5,0))+(lerp(0,1,tan((_Speed_2*node_8936.r)))*0.5+0.5)*float2(0,0.15))*0.5+-0.5);
                float4 _Medium_Speed_var = tex2D(_Medium_Speed,TRANSFORM_TEX(node_9122, _Medium_Speed));
                float4 node_5535 = _Time;
                float2 node_4186 = (((i.uv0+_X_Offset_3*float2(0.5,0))+node_5535.g*float2(0,0.05))*0.5+-0.5);
                float4 _Low_Speed_var = tex2D(_Low_Speed,TRANSFORM_TEX(node_4186, _Low_Speed));
                float3 emissive = ((_Fast_speed_var.rgb*_Color_Fast_Speed.rgb)+(_Medium_Speed_var.rgb*_Folor_Medium_Speed.rgb)+(_Low_Speed_var.rgb*_Color_Low_Speed.rgb));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _Fast_speed; uniform float4 _Fast_speed_ST;
            uniform float _Normal_Power;
            uniform float _X_Offset;
            uniform sampler2D _Medium_Speed; uniform float4 _Medium_Speed_ST;
            uniform float4 _Color_Fast_Speed;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float4 _Albedo_Color;
            uniform float _X_Offset_2;
            uniform float4 _Folor_Medium_Speed;
            uniform sampler2D _Low_Speed; uniform float4 _Low_Speed_ST;
            uniform float _X_Offset_3;
            uniform float4 _Color_Low_Speed;
            uniform float _1;
            uniform float _2;
            uniform float _Speed_1;
            uniform float _Speed_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = float3((_BumpMap_var.rgb.rg*_Normal_Power),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float3 diffuseColor = (_Albedo_var.rgb*_Albedo_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _Fast_speed; uniform float4 _Fast_speed_ST;
            uniform float _X_Offset;
            uniform sampler2D _Medium_Speed; uniform float4 _Medium_Speed_ST;
            uniform float4 _Color_Fast_Speed;
            uniform sampler2D _Albedo; uniform float4 _Albedo_ST;
            uniform float4 _Albedo_Color;
            uniform float _X_Offset_2;
            uniform float4 _Folor_Medium_Speed;
            uniform sampler2D _Low_Speed; uniform float4 _Low_Speed_ST;
            uniform float _X_Offset_3;
            uniform float4 _Color_Low_Speed;
            uniform float _1;
            uniform float _2;
            uniform float _Speed_1;
            uniform float _Speed_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_8936 = _Time;
                float node_533 = (_Speed_1*node_8936.r);
                float node_4912 = tan(node_533);
                float node_9500_ang = _1;
                float node_9500_spd = _2;
                float node_9500_cos = cos(node_9500_spd*node_9500_ang);
                float node_9500_sin = sin(node_9500_spd*node_9500_ang);
                float2 node_9500_piv = float2(0.5,0.5);
                float2 node_9500 = (mul(i.uv0-node_9500_piv,float2x2( node_9500_cos, -node_9500_sin, node_9500_sin, node_9500_cos))+node_9500_piv);
                float2 node_5861 = ((node_9500+_X_Offset*float2(0.25,0))+(lerp(0,1,node_4912)*0.5+0.5)*float2(0,0.2));
                float2 node_8382 = (node_5861*0.5+-0.5);
                float4 _Fast_speed_var = tex2D(_Fast_speed,TRANSFORM_TEX(node_8382, _Fast_speed));
                float2 node_9122 = (((i.uv0+_X_Offset_2*float2(0.5,0))+(lerp(0,1,tan((_Speed_2*node_8936.r)))*0.5+0.5)*float2(0,0.15))*0.5+-0.5);
                float4 _Medium_Speed_var = tex2D(_Medium_Speed,TRANSFORM_TEX(node_9122, _Medium_Speed));
                float4 node_9261 = _Time;
                float2 node_4186 = (((i.uv0+_X_Offset_3*float2(0.5,0))+node_9261.g*float2(0,0.05))*0.5+-0.5);
                float4 _Low_Speed_var = tex2D(_Low_Speed,TRANSFORM_TEX(node_4186, _Low_Speed));
                o.Emission = ((_Fast_speed_var.rgb*_Color_Fast_Speed.rgb)+(_Medium_Speed_var.rgb*_Folor_Medium_Speed.rgb)+(_Low_Speed_var.rgb*_Color_Low_Speed.rgb));
                
                float4 _Albedo_var = tex2D(_Albedo,TRANSFORM_TEX(i.uv0, _Albedo));
                float3 diffColor = (_Albedo_var.rgb*_Albedo_Color.rgb);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
