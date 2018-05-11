using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sirius
{ 
    public class ForTriggers : MonoBehaviour
    {
        public GameObject Script_Animation;

        void OnTriggerStay(Collider other)
        {
            if (other.tag == "icc_moon_collider" && Input.GetKeyDown(KeyCode.Space))
            {
                Animator_all _Animation = Script_Animation.GetComponent<Animator_all>();
                _Animation.PLAY();
            }
            else if (other.tag == "icc_earth_collider" && Input.GetKeyDown(KeyCode.Space))
            {
                Animator_all _Animation = Script_Animation.GetComponent<Animator_all>();
                _Animation.JustTest2();
            }
        }
    }
}
