package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
@:include("wx/graphics.h")
@:unreflective
@:native("wxGraphicsPath")
@:structAccess
extern class GraphicsPath extends GraphicsObject {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    @:native("new GraphicsPath")          private static function _new():RawPointer<GraphicsPath>;
                                    public static inline function createInstance():Pointer<GraphicsPath> {
                                        return Pointer.fromRaw(_new());
                                    }

    @:native("new GraphicsPath")                                 private static function _newFromGraphicsPath(gp:GraphicsPath):RawPointer<GraphicsPath>;
                                    public static inline function createInstanceFromGraphicsPath(gp:GraphicsPath):Pointer<GraphicsPath> {
                                        return Pointer.fromRaw(_newFromGraphicsPath(gp));
                                    }


    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////

    //AddCurveToPoint (wxDouble cx1, wxDouble cy1, wxDouble cx2, wxDouble cy2, wxDouble x, wxDouble y)
    
    @:native("MoveToPoint")             public function moveToPoint(x:Float, y:Float):Void;
    @:native("AddArcToPoint")           public function addArcToPoint(x1:Float, y1:Float, x2:Float, y2:Float, r:Float):Void;
    @:native("AddCircle")               public function addCircle(x:Float, y:Float, r:Float):Void;
    @:native("AddCurveToPoint")         public function addCurveToPoint(cx1:Float, cy1:Float, cx2:Float, cy2:Float, x:Float, y:Float):Void;
    @:native("AddEllipse")              public function addEllipse(x:Float, y:Float, w:Float, h:Float):Void;
    @:native("AddLineToPoint")          public function addLineToPoint(x:Float, y:Float):Void;
    @:native("AddPath")                 public function addPath(path:GraphicsPath):Void;
    @:native("AddQuadCurveToPoint")     public function addQuadCurveToPoint (cx:Float,cy:Float,x:Float,y:Float):Void;
    @:native("AddRectangle")            public function addRectangle(x:Float,y:Float,w:Float,h:Float):Void;
    @:native("AddRoundedRectangle")     public function addRoundedRectangle(x:Float,y:Float,w:Float,h:Float,r:Float):Void;
    @:native("CloseSubpath")            public function closeSubpath():Void;
    @:native("AddArc")                  public function addArc(x:Float, y:Float, r:Float, startAngle:Float, endAngle:Float, clockwise:Bool):Void;
}
