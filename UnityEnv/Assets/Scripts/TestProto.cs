using System;
using System.IO;
using System.Runtime.InteropServices;
using UnityEngine;

public class TestProto : MonoBehaviour
{
    private string basePath;
    
#if UNITY_IPHONE || UNITY_XBOX360
	[DllImport("__Internal")]
#else
    [DllImport("ptotobuf-lib")]
#endif
    public static extern int iDeserial(IntPtr pb, int length);

    void Start()
    {
        basePath = Path.GetDirectoryName(Application.dataPath);
        Debug.Log("Start: " + basePath);
    }

    private void OnGUI()
    {
        if (GUI.Button(new Rect(140, 140, 100, 60), "LoadStudent"))
        {
            Byte[] bytes = Resources.Load<TextAsset>("student").bytes; 

            GCHandle hObject = GCHandle.Alloc(bytes, GCHandleType.Pinned);
            IntPtr pObject = hObject.AddrOfPinnedObject();

            int ret = iDeserial(pObject, bytes.Length);
            Debug.Log("return:" + ret);
        }
    }


}
