#ifdef HX_WINDOWS
#include "setup_hx_windows.h"
#elif defined(HXCPP_RPI)
#include "setup_hx_rpi.h"
#elif defined(HX_MACOS)
#include "setup_hx_mac.h"
#elif defined(HX_LINUX)
   #ifdef HXCPP_M64
   #include "setup_hx_linux64.h"
   #else
   #include "setup_hx_linux.h"
   #endif
#else
#error "Unknown platform"
#endif
