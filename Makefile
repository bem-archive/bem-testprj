test:
	-rm -rf blocks/blabla
	bem create block -l blocks -T bl/b/bem-tech/b.xsl.js blabla
	bem create elem -l blocks -T bl/b/bem-tech/b.xsl.js -b blabla bla

	# TODO
	#mkdir tests
	#bem create level -o tests -T bl/b/bem-tech/b.xsl.js level-test
	# создать блок с технологией по имени
	#bem create block -l tests/level-test -T b.xsl blabla
	# создать блок с технологией по пути (должно работать также)
	#bem create block -l tests/level-test -T bl/b/bem-tech/b.xsl.js blabla2
