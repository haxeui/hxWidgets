package hx.widgets;

import cpp.ConstCharStar;
import haxe.io.Bytes;
import haxe.io.BytesData;

class MemoryInputStream {
	private var _bytes:Bytes;
	private var _ref:WxMemoryInputStreamRef;
	public function new(bytes:Bytes) {
		_bytes = bytes;
		_ref = WxMemoryInputStreamRef.createInstance(_bytes.getData().toString(), _bytes.length);
	}
}

@:include("wx/mstream.h")
@:native("cpp.Reference<wxMemoryInputStream>")
extern class WxMemoryInputStreamRef extends WxMemoryInputStream {
	//@:native("new wxMemoryInputStream") public static function createInstance(data:BytesData, len:Int):WxMemoryInputStreamRef;
	@:native("new wxMemoryInputStream") public static function createInstance(data:ConstCharStar, len:Int):WxMemoryInputStreamRef;
}

@:include("wx/mstream.h")
@:native("wxMemoryInputStream")
extern class WxMemoryInputStream {
	//@:native("Create") public function create(parent:WxWindowRef, id:Int, title:ConstCharStar):Bool;
}