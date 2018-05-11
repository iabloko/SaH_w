// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33170,y:32669,varname:node_4795,prsc:2|emission-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32178,y:32603,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b4a092da36a97e24bafdd2525ee0cb95,ntxv:0,isnm:False|UVIN-3040-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32969,y:32770,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT,E-8799-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32010,y:32731,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32010,y:32882,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32010,y:33025,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Time,id:869,x:31608,y:32601,varname:node_869,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7004,x:31427,y:32727,ptovrint:False,ptlb:Speed_X,ptin:_Speed_X,varname:node_7004,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:3182,x:31427,y:32794,ptovrint:False,ptlb:Speed_Y,ptin:_Speed_Y,varname:node_3182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:7769,x:31608,y:32750,varname:node_7769,prsc:2|A-7004-OUT,B-3182-OUT;n:type:ShaderForge.SFN_Multiply,id:3195,x:31809,y:32622,varname:node_3195,prsc:2|A-869-T,B-7769-OUT;n:type:ShaderForge.SFN_Add,id:3040,x:32010,y:32603,varname:node_3040,prsc:2|A-1362-OUT,B-3195-OUT;n:type:ShaderForge.SFN_Tex2d,id:6962,x:32010,y:33112,ptovrint:False,ptlb:Gradient_1,ptin:_Gradient_1,varname:node_6962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5f5a4cf136587354eba82d5c4527ecb4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8799,x:32761,y:32851,varname:node_8799,prsc:2|A-6074-A,B-6962-R;n:type:ShaderForge.SFN_Time,id:199,x:30637,y:32299,varname:node_199,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5908,x:30637,y:32516,ptovrint:False,ptlb:Speed_Y_2,ptin:_Speed_Y_2,varname:node_5908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:9095,x:30637,y:32445,ptovrint:False,ptlb:Speed_X_2,ptin:_Speed_X_2,varname:node_9095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_TexCoord,id:2396,x:30637,y:32125,varname:node_2396,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:5121,x:31292,y:32155,varname:node_5121,prsc:2|A-2396-UVOUT,B-2983-OUT;n:type:ShaderForge.SFN_Append,id:3828,x:30843,y:32445,varname:node_3828,prsc:2|A-9095-OUT,B-5908-OUT;n:type:ShaderForge.SFN_Multiply,id:2983,x:31042,y:32317,varname:node_2983,prsc:2|A-199-T,B-3828-OUT;n:type:ShaderForge.SFN_Tex2d,id:1386,x:31539,y:32155,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_1386,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:24003c34072d4944cb972b0b2aa4ff0d,ntxv:0,isnm:False|UVIN-5121-OUT;n:type:ShaderForge.SFN_Slider,id:3314,x:31311,y:32381,ptovrint:False,ptlb:Noise_amount,ptin:_Noise_amount,varname:node_3314,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Lerp,id:879,x:31824,y:32283,varname:node_879,prsc:2|A-2642-UVOUT,B-1386-R,T-3314-OUT;n:type:ShaderForge.SFN_TexCoord,id:2642,x:31539,y:31996,varname:node_2642,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:1362,x:32144,y:32352,varname:node_1362,prsc:2|A-7151-UVOUT,B-879-OUT,T-3097-R;n:type:ShaderForge.SFN_Tex2d,id:3097,x:31824,y:32442,ptovrint:False,ptlb:Noise_Mask,ptin:_Noise_Mask,varname:node_3097,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c414f233d867c644fb9987be3efca312,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:7151,x:31824,y:32136,varname:node_7151,prsc:2,uv:0,uaff:False;proporder:6074-797-7004-3182-6962-5908-9095-1386-3314-3097;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _Speed_X ("Speed_X", Float ) = 0.1
        _Speed_Y ("Speed_Y", Float ) = 0.1
        _Gradient_1 ("Gradient_1", 2D) = "white" {}
        _Speed_Y_2 ("Speed_Y_2", Float ) = 0.1
        _Speed_X_2 ("Speed_X_2", Float ) = 0.1
        _Noise ("Noise", 2D) = "white" {}
        _Noise_amount ("Noise_amount", Range(0, 1)) = 0.1
        _Noise_Mask ("Noise_Mask", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _Speed_X;
            uniform float _Speed_Y;
            uniform sampler2D _Gradient_1; uniform float4 _Gradient_1_ST;
            uniform float _Speed_Y_2;
            uniform float _Speed_X_2;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Noise_amount;
            uniform sampler2D _Noise_Mask; uniform float4 _Noise_Mask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_199 = _Time;
                float2 node_5121 = (i.uv0+(node_199.g*float2(_Speed_X_2,_Speed_Y_2)));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_5121, _Noise));
                float4 _Noise_Mask_var = tex2D(_Noise_Mask,TRANSFORM_TEX(i.uv0, _Noise_Mask));
                float4 node_869 = _Time;
                float2 node_3040 = (lerp(i.uv0,lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Noise_amount),_Noise_Mask_var.r)+(node_869.g*float2(_Speed_X,_Speed_Y)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3040, _MainTex));
                float4 _Gradient_1_var = tex2D(_Gradient_1,TRANSFORM_TEX(i.uv0, _Gradient_1));
                float3 node_2393 = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0*(_MainTex_var.a*_Gradient_1_var.r));
                float3 emissive = node_2393;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
