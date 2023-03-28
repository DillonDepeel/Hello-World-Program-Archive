$ cat hello-0.0/debian/control
Source: hello
Section: Hello-world
Priority: optional
Maintainer: "Dillon Depeel" <dillondepeel@hotmail.com>
Build-Depends: debhelper-compat (= 13)
Standards-Version: 4.5.1
Homepage: <https://dillondepeel.github.io/The-Hello-World-Project/>
Rules-Requires-Root: no

Package: hello
Architecture: any
Multi-Arch: foreign
Depends: ${misc:Depends}, ${shlibs:Depends}
Description: Hello world in debian package control file format for the Hello World Project.
