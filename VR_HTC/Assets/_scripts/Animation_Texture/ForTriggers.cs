using UnityEngine;

namespace Sirius
{ 
    public class ForTriggers : MonoBehaviour
    {
        public Animator_all _Animation;
        
        [HideInInspector] public bool ClickProtection = true;

        void OnTriggerStay(Collider other)
        {
            if (other.tag == "icc_moon_collider" && Input.GetKey(KeyCode.Space))
            {
                //Moon
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 0;
                    _Animation.Public_Start_Animation();
                }
            }
            else if (other.tag == "icc_earth_collider" && Input.GetKey(KeyCode.Space))
            {
                //Earth
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 1;
                    _Animation.Public_Start_Animation();
                }
            }
            else if (other.tag == "icc_mars_collider" && Input.GetKey(KeyCode.Space))
            {
                //Mars
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 2;
                    _Animation.Public_Start_Animation();
                }
            }
            else if (other.tag == "Lunohod_Screen" && Input.GetKey(KeyCode.Space))
            {
                //Lunohod_Screen
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 3;
                    _Animation.Public_Start_Animation();
                }
            }

            else if (other.tag == "Lunohod_Film_Collider" && Input.GetKey(KeyCode.Space))
            {
                //Lunohod_Film
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 4;
                    _Animation.Public_Start_Animation();
                }
            }
            else if (other.tag == "Capsula_Collider" && Input.GetKey(KeyCode.Space))
            {
                //Capsula_Collider
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 5;
                    _Animation.Public_Start_Animation();
                }
            }
        }
    }
}
