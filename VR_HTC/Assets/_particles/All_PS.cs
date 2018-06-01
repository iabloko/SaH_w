using System.Collections;
using UnityEngine;

namespace VRTK.Controllables.ArtificialBased
{
    public class All_PS : MonoBehaviour
    {
        [HideInInspector] public int PS_i;
        [SerializeField] private ForTriggers _forTriggers;
        [SerializeField] private float _delay = 1;

        [System.Serializable] public struct all_Particles_System
        {
            public ParticleSystem[] m_ParticlesSystem;
        }
        [SerializeField] private all_Particles_System[] ParticlesSystem;

        private WaitForSeconds  m_delay;

        #region Start Methods
        private void Awake()
        {
            //StartCoroutine("_ParticlesSystemAnalyze");
        }

        private void Start()
        {
            m_delay = new WaitForSeconds(_delay);
        }
        #endregion

        #region Public Methods

        public void Particles()
        {
            StartCoroutine("_ParticlesSystemAnalyze");
        }

        #endregion
       
        #region MainMethod

        private IEnumerator _ParticlesSystemAnalyze()
        {
            if (ParticlesSystem[PS_i].m_ParticlesSystem[PS_i].isPlaying)
            {
                for (int i = 0; i < ParticlesSystem[PS_i].m_ParticlesSystem.Length; i++)
                {
                    ParticlesSystem[PS_i].m_ParticlesSystem[i].Stop();
                }
                yield return m_delay;
                _forTriggers.ClickProtection = true;
            }
            else if (ParticlesSystem[PS_i].m_ParticlesSystem[PS_i].isStopped)
            {
                for (int i = 0; i < ParticlesSystem[PS_i].m_ParticlesSystem.Length; i++)
                {
                    ParticlesSystem[PS_i].m_ParticlesSystem[i].Play();
                }
                yield return m_delay;
                _forTriggers.ClickProtection = true;
            }
        }
        #endregion
    }
}
