using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sirius
{
    public class Animator_all : MonoBehaviour
    {
        [System.Serializable] public struct Textture
        {
            public Texture[] m_AnimTextures;
        }

        [HideInInspector] public int _i = 0;
        [SerializeField] private int m_FrameRate_One = 1;
        [SerializeField] private int m_FrameRate_Film = 30;
        [SerializeField] private float _delay = 1;

        [SerializeField] private Settings m_Settings;
        [SerializeField] private ForTriggers s_ForTriggers;
        [Header("Mesh_and_texture")]
        [SerializeField] private List<MeshRenderer> _MeshRender;

        [SerializeField] private Textture[] Textures;

        private WaitForSeconds m_FrameRateWait, Delay, m_FasterFrameRateWait;
        private int m_CurrentTextureIndex;

        #region Bool
        private bool m_FilmPick;

        #endregion

        #region Start_Metod
        private void Awake()
        {
            m_FrameRateWait = new WaitForSeconds(1f / m_FrameRate_One);
            m_FasterFrameRateWait = new WaitForSeconds(1 / m_FrameRate_Film);
            Delay = new WaitForSeconds(_delay);
        }

        public void One_Pic()
        {
            StartCoroutine("OnePick");
        }

        public void Film_Pick()
        {
            m_FilmPick = true;
            StartCoroutine("FilmPick");
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

        #region HandleOver/HandleOut
        public void HandleOver()
        {
            m_FilmPick = true;
        }

        private void HandleOut()
        {
            m_FilmPick = false;
        }
        #endregion

        #region Start_OnePick
        private IEnumerator OnePick()
        {
            //Start_Animation_for _i MeshRender, with _i Texture massive;
            _MeshRender[_i].material.mainTexture = Textures[_i].m_AnimTextures[m_CurrentTextureIndex];
            _MeshRender[_i].material.SetTexture("_EmissionMap", Textures[_i].m_AnimTextures[m_CurrentTextureIndex]);

            m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % Textures[_i].m_AnimTextures.Length;
            yield return Delay;
            s_ForTriggers.ClickProtection = true;

            yield return m_FrameRateWait;
        }
        #endregion

        #region Start_FilmPick
        private IEnumerator FilmPick()
        {
            while (m_FilmPick)
            {
                //Start_Animation_for _i MeshRender, with _i Texture massive;
                _MeshRender[_i].material.mainTexture = Textures[_i].m_AnimTextures[m_CurrentTextureIndex];
                _MeshRender[_i].material.SetTexture("_EmissionMap", Textures[_i].m_AnimTextures[m_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % Textures[_i].m_AnimTextures.Length;

                if (_MeshRender[_i].material.mainTexture == Textures[_i].m_AnimTextures[Textures[_i].m_AnimTextures.Length - 1])
                {
                    m_FilmPick = false;
                    s_ForTriggers.ClickProtection = true;
                }
                yield return m_FasterFrameRateWait;
            }
        }
        #endregion
    }
}