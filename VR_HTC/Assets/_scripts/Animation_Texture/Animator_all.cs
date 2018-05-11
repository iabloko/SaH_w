using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sirius
{
    public class Animator_all : MonoBehaviour
    {
        [System.Serializable]
        public struct _AllTextures
        {
            public Texture[] m_AnimTextures_iccMoon;
            public Texture[] m_AnimTextures_iccEarth;
            public Texture[] m_AnimTextures_iccMars;
            public Texture[] m_AnimTextures_LunohodScreen;
            public Texture[] m_AnimTextures_LunohodFilm;

        }

        [SerializeField] private int m_FrameRate = 29;
        [SerializeField] private Settings m_Settings;
        [SerializeField] private List<MeshRenderer> _MeshRender;

        [SerializeField] private _AllTextures _allTexture;

        //[Header("ICC_MOON texture")]
        //[SerializeField] private Texture[] e_AnimTextures;

        private void Awake()
        {
            m_FrameRateWait = new WaitForSeconds(1f / m_FrameRate);

        }

        #region Bool
        private WaitForSeconds m_FrameRateWait;
        private int m_CurrentTextureIndex;
        private bool m_Playing_moon;
        private bool m_Playing_earth;
        private bool m_Playing_mars;
        private bool m_Lunohod_Screen;
        private bool m_Lunohod_Film;
        //private int e_CurrentTextureIndex;
        #endregion

        #region Start_Metod
        public void PLAY()
        {
            m_Lunohod_Screen = true;
            m_Lunohod_Film = true;
        }
        public void Moon()
        {
            m_Playing_moon = true;
            StartCoroutine("iccMoon");
        }
        public void Earth()
        {
            m_Playing_earth = true;
            StartCoroutine("iccEARTH");
        }
        public void Mars()
        {
            m_Playing_mars = true;
            StartCoroutine("iccMARS");
        }
        public void Lunohod_Screen()
        {
            m_Lunohod_Screen = true;
            StartCoroutine("LunohodScreen");
        }
        public void Lunohod_Film()
        {
            m_Lunohod_Film = true;
            StartCoroutine("LunohodFilm");
        }
        #endregion

        #region OnEnable/OnDisable
        private void OnEnable()
        {
            m_Settings.OnOver += HandleOver;
            m_Settings.OnOut += HandleOut;
        }


        private void OnDisable()
        {
            m_Settings.OnOver -= HandleOver;
            m_Settings.OnOut -= HandleOut;
        }
        #endregion

        #region HandleOver/handleOut
        public void HandleOver()
        {
            m_Playing_moon = true;
            m_Playing_earth = true;
            m_Playing_mars = true;

            StartCoroutine(iccMoon());
        }


        private void HandleOut()
        {
            m_Playing_moon = false;
            m_Playing_earth = false;
            m_Playing_mars = false;
        }
#endregion

        #region iccMoon
        private IEnumerator iccMoon()
        {
            while (m_Playing_moon)
            {
                //Moon Mesh render
                _MeshRender[0].material.mainTexture = _allTexture.m_AnimTextures_iccMoon[m_CurrentTextureIndex];
                _MeshRender[0].material.SetTexture("_EmissionMap", _allTexture.m_AnimTextures_iccMoon[m_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % _allTexture.m_AnimTextures_iccMoon.Length;

                if (_MeshRender[0].material.mainTexture == _allTexture.m_AnimTextures_iccMoon[_allTexture.m_AnimTextures_iccMoon.Length - 1])
                {
                    m_Playing_moon = false;
                }

                yield return m_FrameRateWait;
            }
        }
        #endregion

        #region iccEarth
        private IEnumerator iccEARTH()
        {
            while (m_Playing_earth)
            {
                //Earth mesh render
                _MeshRender[1].material.mainTexture = _allTexture.m_AnimTextures_iccEarth[m_CurrentTextureIndex];
                _MeshRender[1].material.SetTexture("_EmissionMap", _allTexture.m_AnimTextures_iccEarth[m_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % _allTexture.m_AnimTextures_iccEarth.Length;

                if (_MeshRender[1].material.mainTexture == _allTexture.m_AnimTextures_iccEarth[_allTexture.m_AnimTextures_iccEarth.Length - 1])
                {
                    m_Playing_earth = false;
                }

                yield return m_FrameRateWait;
            }
        }
        #endregion

        #region iccMars
        private IEnumerator iccMARS()
        {
            while (m_Playing_mars)
            {
                //Mesh render Mars
                _MeshRender[2].material.mainTexture = _allTexture.m_AnimTextures_iccMars[m_CurrentTextureIndex];
                _MeshRender[2].material.SetTexture("_EmissionMap", _allTexture.m_AnimTextures_iccMars[m_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % _allTexture.m_AnimTextures_iccMars.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (_MeshRender[2].material.mainTexture == _allTexture.m_AnimTextures_iccMars[_allTexture.m_AnimTextures_iccMars.Length - 1])
                {
                    m_Playing_mars = false;
                }

                yield return m_FrameRateWait;
            }
        }
        #endregion

        #region LunohodScreen
        private IEnumerator LunohodScreen()
        {
            while (m_Lunohod_Screen)
            {
                //Lunohod Mesh render
                _MeshRender[3].material.mainTexture = _allTexture.m_AnimTextures_LunohodScreen[m_CurrentTextureIndex];
                _MeshRender[3].material.SetTexture("_EmissionMap", _allTexture.m_AnimTextures_LunohodScreen[m_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % _allTexture.m_AnimTextures_LunohodScreen.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (_MeshRender[3].material.mainTexture == _allTexture.m_AnimTextures_LunohodScreen[_allTexture.m_AnimTextures_LunohodScreen.Length - 1])
                {
                    m_Lunohod_Screen = false;
                }

                yield return m_FrameRateWait;
            }
        }
        #endregion

        #region LunohodFilm
        private IEnumerator LunohodFilm()
        {
            while (m_Lunohod_Film)
            {
                //Lunohod Film Mesh render
                _MeshRender[4].material.mainTexture = _allTexture.m_AnimTextures_LunohodFilm[m_CurrentTextureIndex];
                _MeshRender[4].material.SetTexture("_EmissionMap", _allTexture.m_AnimTextures_LunohodFilm[m_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % _allTexture.m_AnimTextures_LunohodFilm.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (_MeshRender[4].material.mainTexture == _allTexture.m_AnimTextures_LunohodFilm[_allTexture.m_AnimTextures_LunohodFilm.Length - 1])
                {
                    m_Lunohod_Film = false;
                }

                yield return m_FrameRateWait;
            }
        }
        #endregion

        public void Test()
        {
            Debug.Log("Test");
        }
    }
}