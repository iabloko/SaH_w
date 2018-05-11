using System;
using UnityEngine;

namespace Sirius
{
    public class VRInteractiveItem : MonoBehaviour
    {
        public event Action OnOver;             
        public event Action OnOut;              
        public event Action OnClick;           
        public event Action OnDoubleClick;      
        public event Action OnUp;               
        public event Action OnDown;             

        protected bool m_IsOver;


        public bool IsOver
        {
            get { return m_IsOver; }              
        }

        public void Over()
        {
            m_IsOver = true;

            if (OnOver != null)
                OnOver();
        }

        public void Out()
        {
            m_IsOver = false;

            if (OnOut != null)
                OnOut();
        }

        public void Click()
        {
            if (OnClick != null)
                OnClick();
        }

        public void DoubleClick()
        {
            if (OnDoubleClick != null)
                OnDoubleClick();
        }

        public void Up()
        {
            if (OnUp != null)
                OnUp();
        }

        public void Down()
        {
            if (OnDown != null)
                OnDown();
        }
    }
}