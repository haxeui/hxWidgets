# hxWidgets

[![Build Status](https://img.shields.io/travis/ianharrigan/hxWidgets.svg?maxAge=2592000?style=plastic)](https://travis-ci.org/ianharrigan/hxWidgets)
[![Issue Count](https://img.shields.io/codeclimate/issues/github/ianharrigan/hxWidgets.svg?maxAge=2592000?style=plastic)](https://codeclimate.com/github/ianharrigan/hxWidgets/issues)

Haxe externs (and wrappers) for wxWidgets

## Dependencies

You need a development version of hxcpp for now.

```
git clone https://github.com/HaxeFoundation/hxcpp.git
haxelib dev hxcpp hxcpp/
```

and then see <https://github.com/HaxeFoundation/hxcpp#building> for
instruction on how to build it.

## Windows

* Download and install wxWidgets using installer from [https://www.wxwidgets.org/downloads/](https://www.wxwidgets.org/downloads/)
* Create `WXWIN` environment var if setup didnt (eg: `C:\wxWidgets-3.1.0`)
* Run `vcvarsall.bat` from Visual Studio dir
  (eg: `"C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"`)
* Build shared and static releases of wxWidgets:
  * `nmake.exe -f %WXWIN%\build\msw\makefile.vc BUILD=release`
  * `nmake.exe -f %WXWIN%\build\msw\makefile.vc BUILD=release SHARED=1`

## Requirements for Linux and Mac

You need wxWidgets 3.x and wx-config available in your path.

### Linux

You can install wxWidgets with:

* on debian/ubuntu: `apt-get install libwxgtk3.0-dev libwxbase3.0-dev`

### Mac

You need at least OSX 10.7 and you can install wxWidgets with:

```
brew update
brew install wxwidgets
```
