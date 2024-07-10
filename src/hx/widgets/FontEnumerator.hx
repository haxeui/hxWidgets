package hx.widgets;

import wx.widgets.FontEnumerator in WxFontEnumerator;

class FontEnumerator {
    public static var useCache:Bool = true;
    private static var _faceNameCache:Array<String> = null;
    
    public static var faceNames(get, null):Array<String>;
    private static function get_faceNames():Array<String> {
        if (useCache && _faceNameCache != null) {
            return _faceNameCache;
        }

        var wxFaceNames = WxFontEnumerator.getFacenames();
        var r = [];
        for (i in 0 ... wxFaceNames.getCount()) {
            var item = wxFaceNames.item(i);
            r.push(new String(item.toUTF8().data()));
        }
        
        if (useCache == true) {
            _faceNameCache = r;
        }
        
        return r;
    }
}