using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sirius
{ 
    public class ForTriggers : MonoBehaviour
    {
        public Animator_all _Animation;

        void OnTriggerStay(Collider other)
        {
            if (other.tag == "icc_moon_collider" && Input.GetKeyDown(KeyCode.Space))
            {
                //Moon
                _Animation.Moon();
            }
            else if (other.tag == "icc_earth_collider" && Input.GetKeyDown(KeyCode.Space))
            {
                //Earth
                _Animation.Earth();
            }
            else if (other.tag == "icc_mars_collider" && Input.GetKeyDown(KeyCode.Space))
            {
                //Mars
                _Animation.Mars();
            }

            else if (other.tag == "Lunohod_Film_Collider" && Input.GetKeyDown(KeyCode.Space))
            {
                //Lunohod_Film
                _Animation.Lunohod_Film();
            }
            else if (other.tag == "Lunohod_Screen" && Input.GetKeyDown(KeyCode.Space))
            {
                //Lunohod_Screen
                _Animation.Lunohod_Screen();
            }
        }

        private void OnTriggerExit(Collider other)
        {
            
        }
    }
}
