using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sirius
{
    public class Animator_all : MonoBehaviour
    {
        [System.Serializable] public struct _TestStruct
        {
            public Texture[] m_AnimTextures_Test;
        }

        [HideInInspector] public int _i = 0;

        [SerializeField] private int m_FrameRate = 29;
        [SerializeField] private float _delay = 1;
        [SerializeField] private Settings m_Settings;
        [SerializeField] private ForTriggers s_ForTriggers;
        [Header("Mesh_and_texture")]
        [SerializeField] private List<MeshRenderer> _MeshRender;

        [SerializeField] private _TestStruct[] Test;

        #region Bool
        private WaitForSeconds m_FrameRateWait, Delay;
        private int m_CurrentTextureIndex;

        private bool m_Start_Animations;
        #endregion

        #region Start_Metod
        private void Awake()
        {
            m_FrameRateWait = new WaitForSeconds(1f / m_FrameRate);
            Delay = new WaitForSeconds(_delay);
        }

        public void Public_Start_Animation()
        {
            m_Start_Animations = true;
            StartCoroutine("Start_Animation");
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
            m_Start_Animations = true;
        }

        private void HandleOut()
        {
            m_Start_Animations = false;
        }
        #endregion

        #region Start_Animation
        private IEnumerator Start_Animation()
        {
            while (m_Start_Animations)
            {
                //Lunohod Film Mesh render
                _MeshRender[_i].material.mainTexture = Test[_i].m_AnimTextures_Test[m_CurrentTextureIndex];
                _MeshRender[_i].material.SetTexture("_EmissionMap", Test[_i].m_AnimTextures_Test[m_CurrentTextureIndex]);

                m_CurrentTextureIndex = (m_CurrentTextureIndex + 1) % Test[_i].m_AnimTextures_Test.Length;

                if (_MeshRender[_i].material.mainTexture == Test[_i].m_AnimTextures_Test[Test[_i].m_AnimTextures_Test.Length - 1])
                {
                    m_Start_Animations = false;
                    yield return Delay;
                    s_ForTriggers.ClickProtection = true;
                }
                yield return m_FrameRateWait;
            }
        }
        #endregion
    }
}