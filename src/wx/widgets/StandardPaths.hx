package wx.widgets;

@:include("wx/stdpaths.h")
@:unreflective
@:native("wxStandardPaths")
@:structAccess
extern class StandardPaths {
    @:native("GetAppDocumentsDir")      public function getAppDocumentsDir():WxString;
    @:native("GetConfigDir")            public function getConfigDir():WxString;
    @:native("GetDataDir")              public function getDataDir():WxString;
    @:native("GetDocumentsDir")         public function getDocumentsDir():WxString;
    @:native("GetExecutablePath")       public function getExecutablePath():WxString;
    @:native("GetLocalDataDir")         public function getLocalDataDir():WxString;
    @:native("GetResourcesDir")         public function getResourcesDir():WxString;
    @:native("GetTempDir")              public function getTempDir():WxString;
    @:native("GetUserConfigDir")        public function getUserConfigDir():WxString;
    @:native("GetUserDataDir")          public function getUserDataDir():WxString;
    @:native("GetUserLocalDataDir")     public function getUserLocalDataDir():WxString;

    @:native("GetFileLayout")           public function getFileLayout():FileLayout;
    @:native("SetFileLayout")           public function setFileLayout(layout: FileLayout):Void;
}

@:include("wx/stdpaths.h")
extern enum abstract FileLayout(FileLayoutImpl) {
    @:native("wxStandardPaths::FileLayout_Classic")   var Classic;
    @:native("wxStandardPaths::FileLayout_XDG")       var XDG;
}

@:include("wx/stdpaths.h")
@:native("cpp::Struct<wxStandardPaths::FileLayout, cpp::EnumHandler>")
extern class FileLayoutImpl {
}
