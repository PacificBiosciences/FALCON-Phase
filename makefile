build-meson:
	meson --prefix "${PREFIX}" --buildtype=release ./build-meson

install:
	#cp -f ./build-meson/falcon-phase ${PREFIX}/bin # we want RPATH munging from Meson
	ninja -C ./build-meson -v install

install-pl:
	cd bin; cp -a fc_primary_contig_index.pl fc_scrub_names.pl FALCON_headerConverter.pl ${PREFIX}/bin
