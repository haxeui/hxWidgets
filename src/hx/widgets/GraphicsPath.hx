package hx.widgets;

import cpp.Reference;
import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.GraphicsPath in WxGraphicsPath ;


class GraphicsPath extends Object {

    public function new() {
        //_ref = Pointer.addressOf(gp).reinterpret();
        //WxGraphicsPath.createInstanceFromGraphicsPath(gp).reinterpret();
    }
    

    public function moveToPoint(x:Float, y:Float) {
        trace(gpRef.ptr);
        gpRef.ptr.moveToPoint(x, y);
    }

    public function addQuadCurveToPoint(cx:Float, cy:Float, x:Float, y:Float) {
        gpRef.ptr.addQuadCurveToPoint(cx, cy, x, y);
    }

    public function addCurveToPoint(cx1:Float, cy1:Float, cx2:Float, cy2:Float, x:Float, y:Float) {
        gpRef.ptr.addCurveToPoint(cx1, cy1, cx2, cy2, x, y);
    }

    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var gpRef(get, null):Pointer<WxGraphicsPath>;
    private function get_gpRef():Pointer<WxGraphicsPath> {
        return _ref.reinterpret();
    }

/*
    @:native("MoveToPoint")             public function moveToPoint(x:Float, y:Float);
    @:native("AddCurveToPoint")         public function addCurveToPoint(cx1:Float, cy1:Float, cx2:Float, cy2:Float, x:Float, y:Float):Void;
    @:native("AddQuadCurveToPoint")     public function addQuadCurveToPoint (cx:Float,cy:Float,x:Float,y:Float):Bool;
*/
}
