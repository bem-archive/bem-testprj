test:
	-rm -rf blocks/blabla
	bem create block -l blocks -T bl/b/bem-tech/b.xsl.js blabla
	bem create elem -l blocks -T bl/b/bem-tech/b.xsl.js -b blabla bla
