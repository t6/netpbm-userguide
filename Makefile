all:
	python2.7 ../netpbm/buildtools/makeman *.html
	mv index.1 netpbm.1
# Remove broken manpages
	rm directory.1 liberror.1 libnetpbm_dir.1 libsystem.3 libtmpfile.3 \
		libtmpfilefd.3 ppmsvgalib.1 vidtoppm.1 extendedopacity.5
	cp *.1 *.3 *.5 ../netpbm/man/

fetch:
	rm -f *.1 *.3 *.5 *.gif *.png *.jpg
	svn export http://svn.code.sf.net/p/netpbm/code/userguide .
