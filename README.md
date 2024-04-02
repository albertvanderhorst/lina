# lina
Newer versions (unsigned by pgp) are in https://github.com/albertvanderhorst/ciforth
The linux native version of ciforth for 32 bit.
This version complies with the Debian rules and you can find a digitally signed copy of the original and the modifications in dsc.
It was a disappointment that a this program could not find a sponsor after this much work. 

*The version 5.3.0 for linux will remain the only version of ciforth that is digitally signed by pgp.*

The supplementary documentation files refer to 5.3.0 32 bit only.
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

# 64 bit
You can build a 64 bit version using lina64.cfg. This is inferior to the procedure in https://github.com/albertvanderhorst/ciforth
where fitting documentation is generated at the same time.
