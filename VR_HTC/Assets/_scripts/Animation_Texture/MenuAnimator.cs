using System.Collections;
using UnityEngine;

namespace VRTK.Controllables.ArtificialBased
{

    public class MenuAnimator : MonoBehaviour
    {
        [SerializeField] private int m_FrameRate = 29;                  
        [SerializeField] private MeshRenderer m_ScreenMesh;             
        [SerializeField] private Settings m_Settings; 
        [SerializeField] private Texture[] m_AnimTextures;              
        [SerializeField] private Texture[] e_AnimTextures;

        private WaitForSeconds m_FrameRateWait;                        
        private int m_CurrentTextureIndex;                              
        private bool m_Playing;                                         
        private int e_CurrentTextureIndex;

        void Start()
        {

            // StartCoroutine("PlayTextures");
            PLAY();
        }

           public void PLAY()
        {
            m_Playing = true;
            StartCoroutine("PlayTextures");
        }

        private void Awake ()
        {
            m_FrameRateWait = new WaitForSeconds (1f / m_FrameRate);
        }


        private void OnEnable ()
        {
            m_Settings.OnOver += HandleOver;
            m_Settings.OnOut += HandleOut;
        }


        private void OnDisable ()
        {
            m_Settings.OnOver -= HandleOver;
            m_Settings.OnOut -= HandleOut;
        }


        public void HandleOver ()
        {
            m_Playing = true;
            StartCoroutine (PlayTextures ());
        }


        private void HandleOut ()
        {
            m_Playing = false;
        }


        private IEnumerator PlayTextures ()
        {
            while (m_Playing)
            {
                m_ScreenMesh.material.mainTexture = m_AnimTextures[m_CurrentTextureIndex];
                m_ScreenMesh.material.SetTexture("_EmissionMap", e_AnimTextures[e_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % m_AnimTextures.Length;
                e_CurrentTextureIndex = (e_CurrentTextureIndex + 1) % e_AnimTextures.Length;

                if (m_ScreenMesh.material.mainTexture == m_AnimTextures[m_AnimTextures.Length - 1])
                {
                    //m_Playing = false;
                }

                yield return m_FrameRateWait;
            }
        }
    }
}