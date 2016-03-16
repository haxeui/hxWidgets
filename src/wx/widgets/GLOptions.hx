package wx.widgets;

@:headerCode("
#include <wx/glcanvas.h>
#undef RegisterClass
")
class GLOptions {
    public static var RGBA:Int                    = untyped __cpp__("WX_GL_RGBA");
    public static var BUFFER_SIZE:Int             = untyped __cpp__("WX_GL_BUFFER_SIZE");
    public static var LEVEL:Int                   = untyped __cpp__("WX_GL_LEVEL");
    public static var DOUBLEBUFFER:Int            = untyped __cpp__("WX_GL_DOUBLEBUFFER");
    public static var STEREO:Int                  = untyped __cpp__("WX_GL_STEREO");
    public static var AUX_BUFFERS:Int             = untyped __cpp__("WX_GL_AUX_BUFFERS");
    public static var MIN_RED:Int                 = untyped __cpp__("WX_GL_MIN_RED");
    public static var MIN_GREEN:Int               = untyped __cpp__("WX_GL_MIN_GREEN");
    public static var MIN_BLUE:Int                = untyped __cpp__("WX_GL_MIN_BLUE");
    public static var MIN_ALPHA:Int               = untyped __cpp__("WX_GL_MIN_ALPHA");
    public static var DEPTH_SIZE:Int              = untyped __cpp__("WX_GL_DEPTH_SIZE");
    public static var STENCIL_SIZE:Int            = untyped __cpp__("WX_GL_STENCIL_SIZE");
    public static var MIN_ACCUM_RED:Int           = untyped __cpp__("WX_GL_MIN_ACCUM_RED");
    public static var MIN_ACCUM_GREEN:Int         = untyped __cpp__("WX_GL_MIN_ACCUM_GREEN");
    public static var MIN_ACCUM_BLUE:Int          = untyped __cpp__("WX_GL_MIN_ACCUM_BLUE");
    public static var MIN_ACCUM_ALPHA:Int         = untyped __cpp__("WX_GL_MIN_ACCUM_ALPHA");
    public static var SAMPLE_BUFFERS:Int          = untyped __cpp__("WX_GL_SAMPLE_BUFFERS");
    public static var SAMPLES:Int                 = untyped __cpp__("WX_GL_SAMPLES");
    //public static var FRAMEBUFFER_SRGB:Int        = untyped __cpp__("WX_GL_FRAMEBUFFER_SRGB");
    //public static var MAJOR_VERSION:Int           = untyped __cpp__("WX_GL_MAJOR_VERSION");
    //public static var MINOR_VERSION:Int           = untyped __cpp__("WX_GL_MINOR_VERSION");
    //public static var CORE_PROFILE:Int            = untyped __cpp__("WX_GL_CORE_PROFILE");
    //public static var COMPAT_PROFILE:Int          = untyped __cpp__("wx_GL_COMPAT_PROFILE");
    //public static var FORWARD_COMPAT:Int          = untyped __cpp__("WX_GL_FORWARD_COMPAT");
    //public static var ES2:Int                     = untyped __cpp__("WX_GL_ES2");
    //public static var DEBUG:Int                   = untyped __cpp__("WX_GL_DEBUG");
    //public static var ROBUST_ACCESS:Int           = untyped __cpp__("WX_GL_ROBUST_ACCESS");
    //public static var NO_RESET_NOTIFY:Int         = untyped __cpp__("WX_GL_NO_RESET_NOTIFY");
    //public static var LOSE_ON_RESET:Int           = untyped __cpp__("WX_GL_LOSE_ON_RESET");
    //public static var RESET_ISOLATION:Int         = untyped __cpp__("WX_GL_RESET_ISOLATION");
    //public static var RELEASE_FLUSH:Int           = untyped __cpp__("WX_GL_RELEASE_FLUSH");
    //public static var RELEASE_NONE:Int            = untyped __cpp__("WX_GL_RELEASE_NONE");
}