package hx.widgets;

import wx.widgets.GLAttributes in WxGLAttributes;

@:headerCode("#undef RegisterClass")
class GLAttributes {

    private var _ref:WxGLAttributes;
    
    public function new() {
        _ref = WxGLAttributes.createInstance();
    }

    public function rgba():GLAttributes {
        _ref = _ref.rgba();
        return this;
    }
    
    public function bufferSize(val:Int):GLAttributes {
        _ref = _ref.bufferSize(val);
        return this;
    }
    
    public function level(val:Int):GLAttributes {
        _ref = _ref.level(val);
        return this;
    }
    
    public function doubleBuffer():GLAttributes {
        _ref = _ref.doubleBuffer();
        return this;
    }
    
    public function stereo():GLAttributes {
        _ref = _ref.stereo();
        return this;
    }
    
    public function auxBuffers(val:Int):GLAttributes {
        _ref = _ref.auxBuffers(val);
        return this;
    }
    
    public function minRgba(mRed:Int, mGreen:Int, mBlue:Int, mAlpha:Int):GLAttributes {
        _ref = _ref.minRgba(mRed, mGreen, mBlue, mAlpha);
        return this;
    }
    
    public function depth(val:Int):GLAttributes {
        _ref = _ref.depth(val);
        return this;
    }
    
    public function stencil(val:Int):GLAttributes {
        _ref = _ref.stencil(val);
        return this;
    }
    
    public function minAcumRGBA(mRed:Int, mGreen:Int, mBlue:Int, mAlpha:Int):GLAttributes {
        _ref = _ref.minAcumRGBA(mRed, mGreen, mBlue, mAlpha);
        return this;
    }
    
    public function sampleBuffers(val:Int):GLAttributes {
        _ref = _ref.sampleBuffers(val);
        return this;
    }
    
    public function samplers(val:Int):GLAttributes {
        _ref = _ref.samplers(val);
        return this;
    }
    
    public function frameBuffersRGB():GLAttributes {
        _ref = _ref.frameBuffersRGB();
        return this;
    }
    
    public function platformDefaults():GLAttributes {
        _ref = _ref.platformDefaults();
        return this;
    }
    
    public function defaults():GLAttributes {
        _ref = _ref.defaults();
        return this;
    }
    
    public function endList():Void {
        _ref.endList();
    }
}