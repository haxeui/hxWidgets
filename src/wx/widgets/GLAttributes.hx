package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/glcanvas.h")
@:unreflective
@:native("cpp::Reference<wxGLAttributes>")
extern class GLAttributes extends GLAttributesImpl {
    @:native("new wxGLAttributes") public static function createInstance():GLAttributes;
}

@:include("wx/glcanvas.h")
@:unreflective
@:native("wxGLAttributes")
extern class GLAttributesImpl {
    @:native("RGBA")            public function rgba():GLAttributes;
    @:native("BufferSize")      public function bufferSize(val:Int):GLAttributes;
    @:native("Level")           public function level(val:Int):GLAttributes;
    @:native("DoubleBuffer")    public function doubleBuffer():GLAttributes;
    @:native("Stereo")          public function stereo():GLAttributes;
    @:native("AuxBuffers")      public function auxBuffers(val:Int):GLAttributes;
    @:native("MinRGBA")         public function minRgba(mRed:Int, mGreen:Int, mBlue:Int, mAlpha:Int):GLAttributes;
    @:native("Depth")           public function depth(val:Int):GLAttributes;
    @:native("Stencil")         public function stencil(val:Int):GLAttributes;
    @:native("MinAcumRGBA")     public function minAcumRGBA(mRed:Int, mGreen:Int, mBlue:Int, mAlpha:Int):GLAttributes;
    @:native("SampleBuffers")   public function sampleBuffers(val:Int):GLAttributes;
    @:native("Samplers")        public function samplers(val:Int):GLAttributes;
    @:native("FrameBuffersRGB") public function frameBuffersRGB():GLAttributes;
    @:native("PlatformDefaults")public function platformDefaults():GLAttributes;
    @:native("Defaults")        public function defaults():GLAttributes;
    @:native("EndList")         public function endList():Void;
}