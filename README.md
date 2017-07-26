# hxWidgets

[![Build Status linux/osx](https://img.shields.io/travis/haxeui/hxWidgets/master.svg?maxAge=2592000?style=plastic)](https://travis-ci.org/haxeui/hxWidgets)
[![Build status windows](https://ci.appveyor.com/api/projects/status/ura3uv2fsf2gjml0?svg=true)](https://ci.appveyor.com/project/ibilon/hxwidgets)
[![Issue Count](https://img.shields.io/codeclimate/issues/github/haxeui/hxWidgets.svg?maxAge=2592000?style=plastic)](https://codeclimate.com/github/haxeui/hxWidgets/issues)

Haxe externs (and wrappers) for wxWidgets

## Dependencies

You need the [hxcpp](https://lib.haxe.org/p/hxcpp) library and **at least Haxe 3.4.0**, we recommend [Haxe 3.4.2](https://haxe.org/download/version/3.4.2/).

## Windows

* Download and install wxWidgets using installer from [https://www.wxwidgets.org/downloads/](https://www.wxwidgets.org/downloads/)
* Create `WXWIN` environment var if setup didnt (eg: `C:\wxWidgets-3.0.2`)
* Run `vcvarsall.bat` from Visual Studio dir
  (eg: `"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"`)
* Build shared and static releases of wxWidgets:
  * `cd %WXWIN%\build\msw\`
  * `nmake.exe -f makefile.vc BUILD=release`
  * `nmake.exe -f makefile.vc BUILD=release SHARED=1`

## Requirements for Linux and Mac

You need wxWidgets 3.x and wx-config available in your path.

### Linux

You can install wxWidgets with:

* on debian/ubuntu: `apt-get install libwxgtk3.0-dev libwxbase3.0-dev libwxgtk-webview3.0-dev`

### Mac

You need at least OSX 10.7 and you can install wxWidgets with:

```bash
brew update
brew install wxwidgets
```
