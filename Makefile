#PACKAGES - update URLs are necessary
XZUTILS=http://tukaani.org/xz/xz-5.0.3.tar.gz
COREUTILS=http://ftp.gnu.org/gnu/coreutils/coreutils-8.14.tar.xz
GAWK=http://ftp.gnu.org/gnu/gawk/gawk-4.0.0.tar.gz
GSED=ftp://ftp.gnu.org/gnu/sed/sed-4.2.tar.gz
FINDUTILS=http://ftp.gnu.org/pub/gnu/findutils/findutils-4.4.2.tar.gz
GREP=ftp://ftp.gnu.org/gnu/grep/grep-2.9.tar.gz
GIT=http://git-core.googlecode.com/files/git-1.7.7.4.tar.gz
PIGZ=http://www.zlib.net/pigz/pigz-2.1.6.tar.gz
PBZIP2=http://compression.ca/pbzip2/pbzip2-1.1.6.tar.gz
TAR=http://ftp.gnu.org/gnu/tar/tar-1.26.tar.gz


# Default URL is dummy. Use must specify a valid one
URL=foo://must/replace/this/with/real/url/of/package
TARNAME=$(notdir $(URL))
#implicit assumption: TARNAME as two extensions: ".tar" and ".gz"/".bz2"/".xz"
DIRNAME=$(basename $(basename $(TARNAME)))

CENTOS_PACKAGES=curl-devel.x86_64 \
		bzip2-devel.x86_64

all:
	@echo "Possible Targets:"
	@echo "  cshl_centos   - install needed CentOS packages."
	@echo "                  (requires 'sudo')"
	@echo ""
	@echo "  common_build  - build all the packages listed below\:"
	@echo ""
	@echo "    coreutils     - GNU coreutils"
	@echo "    tar           - GNU tar"
	@echo "    awk           - GNU awk"
	@echo "    sed           - GNU sed"
	@echo "    findutils     - GNU find/xargs"
	@echo "    grep          - GNU grep"
	@echo "    git           - Git source control"
	@echo "    xzutils       - XZ/LZMA compression programs"
	@echo "    pigz          - Parallel gzip"
	@echo "    pbzip2        - Parallel bzip2"
	@echo ""
	@echo "  common_install - Installs all the above pacakages."
	@echo "                   Assumes 'common_build' was successfully executed."
	@echo "                   (requires 'sudo')."

.PHONY: cshl_centos
cshl_centos:
	yum install $(CENTOS_PACKAGES)

.PHONY: common_build
common_build: xzutils \
	tar \
	findutils \
	grep \
	awk \
	sed \
	git \
	coreutils \
	pigz \
	pbzip2

.PHONY: build-autoconf-package
build-autoconf-package:
	rm -f "$(TARNAME)"
	rm -rf "$(DIRNAME)"
	wget "$(URL)"
	tar -xvf "$(TARNAME)"
	( cd "$(DIRNAME)" ; ./configure ; make )

.PHONY: install-autoconf-package
install-autoconf-package:
	( [ -d "$(DIRNAME)" ] && ( cd "$(DIRNAME)" ; make install ) )

.PHONY: build-make-package
build-make-package:
	rm -f "$(TARNAME)"
	rm -rf "$(DIRNAME)"
	wget "$(URL)"
	tar -xvf "$(TARNAME)"
	( cd "$(DIRNAME)" ; make )

.PHONY: coreutils
coreutils:
	$(MAKE) URL="$(COREUTILS)" build-autoconf-package

.PHONY: findutils
findutils:
	$(MAKE) URL="$(FINDUTILS)" build-autoconf-package

.PHONY: grep
grep:
	$(MAKE) URL="$(GREP)" build-autoconf-package

.PHONY: awk
awk:
	$(MAKE) URL="$(GAWK)" build-autoconf-package

.PHONY: sed
sed:
	$(MAKE) URL="$(GSED)" build-autoconf-package

.PHONY: git
git:
	$(MAKE) URL="$(GIT)" build-autoconf-package

.PHONY: tar
tar:
	$(MAKE) URL="$(TAR)" build-autoconf-package

.PHONY: xzutils
xzutils:
	$(MAKE) URL="$(XZUTILS)" build-autoconf-package

.PHONY: pigz
pigz:
	$(MAKE) URL="$(PIGZ)" build-make-package

## pigz doesn't have INSTALL target
## need to manually copy the executables
.PHONY: pigz-install
pigz-install:
	( [ -d "$(DIRNAME)" ] && ( cd "$(DIRNAME)" ; cp pigz unpigz /usr/local/bin/ ) )

.PHONY: pbzip2
pbzip2:
	$(MAKE) URL="$(PBZIP2)" build-make-package

## pbzip2 requires customized installation command (with PREFIX)
.PHONY: pbzip2-install
pbzip2-install:
	$(MAKE) URL="$(PBZIP2)" PREFIX=/usr/local/ install


.PHONY: common_install
common_install:
	$(MAKE) URL="$(PIGZ)" pigz-install
	$(MAKE) URL="$(PBZIP2)" bzip2-install
	$(MAKE) URL="$(COREUTILS)" install-autoconf-package
	$(MAKE) URL="$(FINDUTILS)" install-autoconf-package
	$(MAKE) URL="$(GREP)" install-autoconf-package
	$(MAKE) URL="$(GAWK)" install-autoconf-package
	$(MAKE) URL="$(GSED)" install-autoconf-package
	$(MAKE) URL="$(GIT)" install-autoconf-package
	$(MAKE) URL="$(XZUTILS)" install-autoconf-package
