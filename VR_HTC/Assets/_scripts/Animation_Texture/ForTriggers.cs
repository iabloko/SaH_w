using UnityEngine;

namespace VRTK
{ 
    public class ForTriggers : MonoBehaviour
    {
        [SerializeField] private Animator_all _Animation;
        [SerializeField] private All_PS _Allps;
        
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
                    _Animation.One_Pic();
                }
            }
            else if (other.tag == "icc_earth_collider" && Input.GetKey(KeyCode.Space))
            {
                //Earth
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 1;
                    _Animation.One_Pic();
                }
            }
            else if (other.tag == "icc_mars_collider" && Input.GetKey(KeyCode.Space))
            {
                //Mars
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 2;
                    _Animation.One_Pic();
                }
            }
            else if (other.tag == "Lunohod_Screen" && Input.GetKey(KeyCode.Space))
            {
                //Lunohod_Screen
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 3;
                    _Animation.One_Pic();
                }
            }

            else if (other.tag == "Lunohod_Film_Collider" && Input.GetKey(KeyCode.Space))
            {
                //Lunohod_Film
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 4;
                    _Animation.Film_Pick();
                }
            }
            else if (other.tag == "Capsula_Collider" && Input.GetKey(KeyCode.Space))
            {
                //Capsula_Collider
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Animation._i = 5;
                    _Animation.One_Pic();
                }
            }
            else if (other.tag == "pult" && Input.GetKey(KeyCode.Space))
            {
                //Pult
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Allps.PS_i = 0;
                    _Allps.Particles();

                }
            }
            else if (other.tag == "SolarSystemCollider" && Input.GetKey(KeyCode.Space))
            {
                //SolarSystem
                if (ClickProtection)
                {
                    ClickProtection = false;
                    _Allps.PS_i = 1;
                    _Allps.Particles();
                }
            }
        }
    }
}
