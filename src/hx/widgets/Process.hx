package hx.widgets;

import cpp.Pointer;
import wx.widgets.Process in WxProcess;

class Process extends EvtHandler {
    public function new(id:Int = -1) {
        _ref = WxProcess.createInstance(id).reinterpret();
        super();
    }
    
    public function redirect() {
        processRef.ptr.redirect();
    }

    /*
     NOTE: input may not be available just after passing this to wxExecute, time will be needed to start the process, etc
     An easy way is to loop until we have something:
        while (process.isInputAvailable == false) {
            // do nothing
        }
     This has been added to get input stream at the moment, but it may be wholly ill-concieved   
     */
    
    private var _inputStream:InputStream = null;
    public var inputStream(get, null):InputStream; // It returns an input stream corresponding to the standard output stream of the subprocess.
    @:access(hx.widgets.StreamBase)
    private function get_inputStream():InputStream {
        if (_inputStream != null) {
            return _inputStream;
        }
        
        // could be ill concieved
        while (isInputAvailable == false) {
            // do nothing
        }
        
        _inputStream = new InputStream();
        var p = processRef.ptr.getInputStream();
        _inputStream._ref = Pointer.fromRaw(p).reinterpret();
        return _inputStream;
    }
    
    public var isInputAvailable(get, null):Bool;
    private function get_isInputAvailable():Bool {
        return processRef.ptr.isInputAvailable();
    }
    
    public var isInputOpened(get, null):Bool;
    private function get_isInputOpened():Bool {
        return processRef.ptr.isInputOpened();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var processRef(get, null):Pointer<WxProcess>;
    private function get_processRef():Pointer<WxProcess> {
        return _ref.reinterpret();
    }
}