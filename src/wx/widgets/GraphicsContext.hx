package wx.widgets;
import cpp.ConstCharStar;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/graphics.h")
@:unreflective
@:native("wxGraphicsContext")
extern class GraphicsContext {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("wxGraphicsContext::Create")       private static function _new(window:RawPointer<Window>):RawPointer<GraphicsContext>;
                                                public static inline function createInstance(window:RawPointer<Window>):Pointer<GraphicsContext> return Pointer.fromRaw(_new(window));
                                                
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("StrokeLine")                      public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float):Void;
    @:native("SetPen")                          public function setPen(pen:Pen):Void;
    @:native("SetBrush")                        public function setBrush(brush:Brush):Void;
    @:native("SetFont")                         public function setFont(font:Font, colour:Colour):Void;
    @:native("DrawText")                        public function drawText(text:ConstCharStar, x:Float, y:Float):Void;
    @:native("DrawRoundedRectangle")            public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float):Void;
    @:native("DrawBitmap")                      public function drawBitmap(bmp:Bitmap, x:Float, y:Float, width:Float, height:Float):Void;
    @:native("SetAntialiasMode")                public function setAntialiasMode(mode:AntialiasMode):Bool;
    @:native("SetInterpolationQuality")         public function setInterpolationQuality(mode:InterpolationQuality):Bool;

}

/*
@:include("wx/graphics.h")
@:unreflective
@:native("cpp::Reference<wxGraphicsContext>")
extern class GraphicsContext extends GraphicsContextImpl {
     @:native("wxGraphicsContext::Create")          public static function createInstance(window:Window):GraphicsContext;
     @:native("wxGraphicsContext::Create")          public static function createInstanceFromWindowDC(dc:WindowDC):GraphicsContext;
     @:native("wxGraphicsContext::Create")          public static function createInstanceFromMemoryDC(dc:MemoryDC):GraphicsContext;
}

@:include("wx/graphics.h")
@:unreflective
@:native("wxGraphicsContext")
extern class GraphicsContextImpl {
    @:native("StrokeLine")                  public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float):Void;
    @:native("SetPen")                      public function setPen(pen:Pen):Void;
    @:native("SetBrush")                    public function setBrush(brush:Brush):Void;
    @:native("SetFont")                     public function setFont(font:Font, colour:Colour):Void;
    @:native("DrawText")                    public function drawText(text:ConstCharStar, x:Float, y:Float):Void;
    @:native("DrawRoundedRectangle")        public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float):Void;
    @:native("DrawBitmap")                  public function drawBitmap(bmp:Bitmap, x:Float, y:Float, width:Float, height:Float):Void;
    @:native("SetAntialiasMode")            public function setAntialiasMode(mode:AntialiasMode):Bool;
    @:native("SetInterpolationQuality")     public function setInterpolationQuality(mode:InterpolationQuality):Bool;
}

*/