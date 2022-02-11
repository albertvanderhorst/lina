# lina
The linux native version of ciforth for 32 bit.

This package contain all source material for lina in a way that fullfills all Debian requirements and could be the startingpoint of a .deb binary package.
It is an excerpt of the generic system at
https://github.com/albertvanderhorst/ciforth
with only Linux relevant material.
In addition it contains the generated executables and documentation, such that you can used lina immediately from the directory where you've copied it.

For a legenda of the files that are present, how to start the program, how to install the program and its documentation system wide, see the file READMElina.txt.
Required for builds are pdftex and fasm, and basic utilities such as m4 and make.

You can run immediately via:
   lina
or
   lina -a
You can build your own binary, if you wish:
   make

See READMElina.txt if you want to go beyond trying.
