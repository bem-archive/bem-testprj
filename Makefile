test:
	-rm -rf tests
	mkdir -p tests/level1

	bem create block -l tests/level1 -T bl/b/bem-tech/b.xsl.js blabla
	bem create elem -l tests/level1 -T bl/b/bem-tech/b.xsl.js -b blabla bla


	# создать уровень с технологиями по имени и по пути
	bem create level -o tests -T bl/b/bem-tech/b.xsl.js -T css -T xsl level2

	# создать блок с технологией по имени
	bem create block -l tests/level2 -T b.xsl blabla

	# создать блок с технологией по пути (должно работать также)
	bem create block -l tests/level2 -T bl/b/bem-tech/b.xsl.js blabla2

