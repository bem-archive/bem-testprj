bembuild:
	bem build -d index.bemdecl.js -n index -t css -t ../../bl/b/bem-tech/b.xsl.js -l ../../bl -l ../../blocks/
	xsltproc index.xsl index.xml

bemdecl:
	@echo -n 'bemdecl: [' ; \
	xsltproc --stringparam output module ../../bl/b/bem-tech/xmlxsl2decl.xsl index.xml > index.bemdecl.js ; \
	bem decl merge -d bemdecl.js -d index.bemdecl.js -o tmp1.bemdecl.js ; \
	touch tmp2.bemdecl.js ; \
	N=1 ; \
	until diff -q tmp1.bemdecl.js tmp2.bemdecl.js &> /dev/null ; do \
		N=$$((N+1)) ; \
		echo -n + ; \
		cp tmp1.bemdecl.js tmp2.bemdecl.js ; \
		bem build -d tmp2.bemdecl.js -n tmp1 -t ../../bl/b/bem-tech/bemdecl.js.js -l ../../bl -l ../../blocks/ ; \
		bem decl merge -d tmp2.bemdecl.js -d tmp1.bemdecl.js -o tmp1.bemdecl.js ; \
	done ; \
	cp tmp1.bemdecl.js index.bemdecl.js ; \
	rm tmp1.bemdecl.js tmp2.bemdecl.js ; \
	echo ']'
