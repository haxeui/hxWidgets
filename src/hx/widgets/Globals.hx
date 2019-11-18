package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.Globals in WxGlobals;
import wx.widgets.Process in WxProcess;
import wx.widgets.ExecuteEnv in WxExecuteEnv;
import wx.widgets.EnvVariableHashMap in WxEnvVariableHashMap;
import wx.widgets.WxString;

@:headerCode("
#include <wx/utils.h>
#undef RegisterClass
")
class Globals {
    public static function shell(command:String = "") {
        var s = WxString.createInstance(command);
        WxGlobals.shell(s.ref);
        s.destroy();
    }
    
    @:access(hx.widgets.Process)
    public static function execute(cmd:String, flags:Int = 0, callback:Process = null, env:ExecuteEnv = null):Int {
        if (env == null) {
            env = {};
        }

        var pCallback:RawPointer<WxProcess> = null;
        if (callback != null) {
            pCallback = callback.processRef.raw;
        }
        
        var pEnv:RawPointer<WxExecuteEnv> = null;
        var s:String = env.cwd;
        var cwd = WxString.createInstance(s);
        var map = WxEnvVariableHashMap.createInstance();
        var param = WxExecuteEnv.alloc(cwd.ref, map.ref);
        pEnv = Pointer.addressOf(param).raw;
        
        var wxCmd = WxString.createInstance(cmd);
        var pid = WxGlobals.execute(wxCmd.ref, flags, pCallback, pEnv);
        wxCmd.destroy();
        
        return pid;
    }
}