package hx.widgets;

import haxe.io.Bytes;
import haxe.Resource;
import hx.widgets.Bitmap.WxBitmapRef;
import hx.widgets.Image.WxImageRef;

@:access(hx.widgets.Image)
class Bitmap {
	private var _ref:WxBitmapRef;
	public function new(image:Image) {
		_ref = WxBitmapRef.createInstance(image._ref);
	}
	
	public function getWidth():Int {
		return _ref.getWidth();
	}
	
	public function getHeight():Int {
		return _ref.getHeight();
	}
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	// HELPERS
	//////////////////////////////////////////////////////////////////////////////////////////////////////////
	public static function fromHaxeResource(resourceId:String):Bitmap {
		return fromHaxeBytes(Resource.getBytes(resourceId));
	}
	
	public static function fromHaxeBytes(bytes:Bytes):Bitmap {
		var image:Image = new Image(bytes);
		return new Bitmap(image);
	}
}

@:include("wx/bitmap.h")
@:native("cpp.Reference<wxBitmap>")
extern class WxBitmapRef extends WxBitmap {
	@:native("new wxBitmap") public static function createInstance(stream:WxImageRef):WxBitmapRef;
}

@:include("wx/bitmap.h")
@:native("wxBitmap")
extern class WxBitmap {
	@:native("GetWidth") public function getWidth():Int;
	@:native("GetHeight") public function getHeight():Int;
}