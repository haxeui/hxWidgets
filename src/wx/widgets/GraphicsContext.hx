package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/graphics.h")
@:unreflective
@:native("wxGraphicsContext")
@:structAccess
extern class GraphicsContext extends GraphicsObject {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("wxGraphicsContext::Create")       private static function _new(window:RawPointer<Window>):RawPointer<GraphicsContext>;
                                                public static inline function createInstance(window:RawPointer<Window>):Pointer<GraphicsContext> {
                                                    return Pointer.fromRaw(_new(window));
                                                }

    @:native("wxGraphicsContext::Create")       private static function _newFromDC(dc:RawPointer<WindowDC>):RawPointer<GraphicsContext>;
                                                public static inline function createInstanceFromDC(dc:RawPointer<WindowDC>):Pointer<GraphicsContext> {
                                                    return Pointer.fromRaw(_newFromDC(dc));
                                                }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("CreatePath")                      public function createPath():GraphicsPath;
    @:native("StrokePath")                      public function strokePath(path:GraphicsPath):Void;
    @:native("StrokeLine")                      public function strokeLine(x1:Float, y1:Float, x2:Float, y2:Float):Void;
    @:native("SetPen")                          public function setPen(pen:Pen):Void;
    @:native("SetBrush")                        public function setBrush(brush:Brush):Void;
    @:native("SetFont")                         public function setFont(font:Font, colour:Colour):Void;
    @:native("DrawText")                        public function drawText(text:WxString, x:Float, y:Float):Void;
    @:native("DrawRoundedRectangle")            public function drawRoundedRectangle(x:Float, y:Float, width:Float, height:Float, radius:Float):Void;
    @:native("DrawBitmap")                      public function drawBitmap(bmp:Bitmap, x:Float, y:Float, width:Float, height:Float):Void;
    @:native("SetAntialiasMode")                public function setAntialiasMode(mode:AntialiasMode):Bool;
    @:native("SetInterpolationQuality")         public function setInterpolationQuality(mode:InterpolationQuality):Bool;
    @:native("DrawRectangle")                   public function drawRectangle(x:Int, y:Int, width:Int, height:Int):Void;

}
