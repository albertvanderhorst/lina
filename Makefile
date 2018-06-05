# Adapted for initial release of lina
# Copyright (2017): Albert van der Horst {by GNU Public License 2}
# This generates all buildables from a source distribution of lina.

# This makefile contains the targets that can be build based on
# the assembler file.

# Generated files
GEN = \
lina      \
lina.info \
lina.html \
lina.pdf \
lina.ps \
ci86.lina.fas \
# That's all folks!

# gnu type destination
DESTDIR=/

# Define fasm as *the* assembler generating bin files.
%:%.fas ; fasm $< -m256000

build: $(GEN)

ci86.lina.fas :
	(cd extract; \
	ln -sf lina32.cfg lina.cfg; \
	make -f extract.mak $@ ; \
	rm lina.cfg ; \
	mv $@ ..)

lina : ci86.lina.fas
	fasm $< -m256000
	#./ci86.lina -g 1000 lina
	mv ci86.lina lina

clean :
	rm -f $(GEN)

install : lina forth.lab
	mkdir -p $(DESTDIR)/usr/bin
	cp lina $(DESTDIR)/usr/bin
	mkdir -p $(DESTDIR)/usr/lib
	cp forth.lab $(DESTDIR)/usr/lib

lina.html : ci86.lina.html
	sed -e 's/ *$$//g'  $< > $@

lina.info : ci86.lina.texinfo
	cat $< |\
	sed -e 's/ *$$//g' |\
	sed -e 's/^ *@example/@example/g' >lina.texinfo
	makeinfo lina.texinfo --no-split -o $@
	rm lina.texinfo

lina.pdf : ci86.lina.pdf
	cp -l $< $@

lina.ps : ci86.lina.ps
	sed -e 's/ *$$//g'  $< > $@
