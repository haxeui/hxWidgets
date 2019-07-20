del haxelib.zip
7z a haxelib.zip *.hx *.h *.cpp *.manifest *.png *.hxml *.hxproj *.bat -r LICENCE.md README.md haxelib.json Build.xml -xr!bin
haxelib submit haxelib.zip
