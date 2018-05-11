using System.Collections;
using UnityEngine;

namespace Sirius
{

    public class Animator_all : MonoBehaviour
    {
        [SerializeField] private int m_FrameRate = 29;
        [SerializeField] private VRInteractiveItem m_VRInteractiveItem;
        [Header("                            ICC_MOON")]
        [SerializeField] private MeshRenderer ICC_MOON;
        [SerializeField] private Texture[] m_AnimTextures_iccMoon;
        [Header("                            ICC_EARTH")]
        [SerializeField] private MeshRenderer ICC_EARTH;
        [SerializeField] private Texture[] m_AnimTextures_iccEarth;
        [Header("                            ICC_MARS")]
        [SerializeField] private MeshRenderer ICC_MARS;
        [SerializeField] private Texture[] m_AnimTextures_iccMars;
        [Header("                            Lunohod")]
        [SerializeField] private MeshRenderer Lunohod_Screen;
        [SerializeField] private Texture[] m_AnimTextures_LunohodScreen;
        [Header("                            Lunohod_film")]
        [SerializeField] private MeshRenderer Lunohod_Film;
        [SerializeField] private Texture[] m_AnimTextures_LunohodFilm;

        //[SerializeField] private Texture[] e_AnimTextures;

        private WaitForSeconds m_FrameRateWait;
        private int m_CurrentTextureIndex;
        private bool m_Playing_moon;
        private bool m_Playing_earth;
        private bool m_Playing_mars;
        private bool m_Lunohod_Screen;
        private bool m_Lunohod_Film;
        private int e_CurrentTextureIndex;

        void Start()
        {
            // StartCoroutine("PlayTextures");
            //PLAY();
        }

        public void PLAY()
        {
            m_Playing_moon = true;
            m_Playing_earth = true;
            m_Playing_mars = true;
            m_Lunohod_Screen = true;
            m_Lunohod_Film = true;

            StartCoroutine("iccMoon");
            StartCoroutine("iccEARTH");
            StartCoroutine("iccMARS");
        }

        private void Awake()
        {
            m_FrameRateWait = new WaitForSeconds(1f / m_FrameRate);
        }


        #region OnEnable/OnDisable
        private void OnEnable()
        {
            m_VRInteractiveItem.OnOver += HandleOver;
            m_VRInteractiveItem.OnOut += HandleOut;
        }


        private void OnDisable()
        {
            m_VRInteractiveItem.OnOver -= HandleOver;
            m_VRInteractiveItem.OnOut -= HandleOut;
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

        #region IccMoon
        private IEnumerator iccMoon()
        {
            Debug.Log("Mooon");
            while (m_Playing_moon)
            {
                ICC_MOON.material.mainTexture = m_AnimTextures_iccMoon[m_CurrentTextureIndex];
                //m_ScreenMesh.material.SetTexture("_EmissionMap", e_AnimTextures[e_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % m_AnimTextures_iccMoon.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (ICC_MOON.material.mainTexture == m_AnimTextures_iccMoon[m_AnimTextures_iccMoon.Length - 1])
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
                ICC_EARTH.material.mainTexture = m_AnimTextures_iccEarth[m_CurrentTextureIndex];
                //m_ScreenMesh.material.SetTexture("_EmissionMap", e_AnimTextures[e_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % m_AnimTextures_iccEarth.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (ICC_EARTH.material.mainTexture == m_AnimTextures_iccEarth[m_AnimTextures_iccEarth.Length - 1])
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
                ICC_MARS.material.mainTexture = m_AnimTextures_iccMars[m_CurrentTextureIndex];
                //m_ScreenMesh.material.SetTexture("_EmissionMap", e_AnimTextures[e_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % m_AnimTextures_iccMars.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (ICC_MARS.material.mainTexture == m_AnimTextures_iccMars[m_AnimTextures_iccMars.Length - 1])
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
                Lunohod_Screen.material.mainTexture = m_AnimTextures_LunohodScreen[m_CurrentTextureIndex];
                //m_ScreenMesh.material.SetTexture("_EmissionMap", e_AnimTextures[e_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % m_AnimTextures_LunohodScreen.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (Lunohod_Screen.material.mainTexture == m_AnimTextures_LunohodScreen[m_AnimTextures_LunohodScreen.Length - 1])
                {
                    m_Playing_mars = false;
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
                Lunohod_Film.material.mainTexture = m_AnimTextures_LunohodFilm[m_CurrentTextureIndex];
                //m_ScreenMesh.material.SetTexture("_EmissionMap", e_AnimTextures[e_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % m_AnimTextures_LunohodFilm.Length;
                //e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (Lunohod_Film.material.mainTexture == m_AnimTextures_LunohodFilm[m_AnimTextures_LunohodFilm.Length - 1])
                {
                    m_Playing_mars = false;
                }

                yield return m_FrameRateWait;
            }
        }
        #endregion

        public void JustTest()
        {
            Debug.Log("Just_Test");
        }

        public void JustTest2()
        {
            Debug.Log("Just_Test_2");
        }
    }
}