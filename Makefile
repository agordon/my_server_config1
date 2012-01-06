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
NANO=http://www.nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz
PV=http://pipeviewer.googlecode.com/files/pv-1.2.0.tar.bz2

#BIOINFO PACKAGES
SAMTOOLS=http://downloads.sourceforge.net/project/samtools/samtools/0.1.18/samtools-0.1.18.tar.bz2
BOWTIE=http://downloads.sourceforge.net/project/bowtie-bio/bowtie/0.12.7/bowtie-0.12.7-src.zip
CUFFLINKS=http://cufflinks.cbcb.umd.edu/downloads/cufflinks-1.3.0.tar.gz

# Default URL is dummy. Use must specify a valid one
URL=foo://must/replace/this/with/real/url/of/package
TARNAME=$(notdir $(URL))
#implicit assumption: TARNAME as two extensions: ".tar" and ".gz"/".bz2"/".xz"
DIRNAME=$(basename $(basename $(TARNAME)))

CPAN_MODULES=\
		YAML::XS \
		YAML::Any \
		Test::Exception \
		Test::Pod \
		Test::Pod::Coverage \
		Test::More \
		Test::TCP \
		DBD::SQLite \
		DBD::mysql \
		DBD::Pg \
		Data::Dump \
		Carp::Always \
		Carp::Always::Color \
		DateTime \
		JSON::XS \
		JSON \
		Crypt::Blowfish \
		Moose \
		Text::CSV_XS \
		URI::Escape:XS \
		Compress::Bzip2 \
		List::MoreUtils \
		Data::Validate \
		Data::Validate::Struct \
		File::MimeInfo::Magic \
		File::Slurp \
		Number::Format \
		Sort::Key::Natural \
		Template \
		Variable::Magic \
		Date::Manip \
		Pod::Readme \
		Devel::CheckLib

CPAN_DANCER_MODULES=\
		Dancer \
		Dancer::Plugin::Database \
		Dancer::Plugin::DebugDump \
		Dancer::Plugin::Email \
		Dancer::Plugin::FlashMessage \
		Dancer::Plugin::EncodeID \
		Dancer::Plugin::SimpleCRUD \
		Dancer::Plugin::Passphrase \
		Authen::SASL::XS


CENTOS_PACKAGES=\
		ImageMagick.x86_64 \
		blas-devel.x86_64 \
		blas.x86_64 \
		boost-devel.x86_64 \
		boost.x86_64 \
		bzip2-devel.x86_64 \
		bzip2-devel.x86_64 \
		bzip2.x86_64 \
		ctags.x86_64 \
		curl-devel.x86_64 \
		curl-devel.x86_64 \
		dos2unix.x86_64 \
		fftw3-devel.x86_64 \
		fftw3.x86_64 \
		fuse-devel.x86_64 \
		fuse.x86_64 \
		gcc44-c++.x86_64 \
		gcc44.x86_64 \
		gd-devel.x86_64 \
		gettext-devel.x86_64 \
		lapack-devel.x86_64 \
		lapack.x86_64 \
		libjpeg-devel.x86_64 \
		libpng-devel.x86_64 \
		mod_perl-devel.x86_64 \
		mod_perl.x86_64 \
		mod_python.x86_64 \
		mod_ssl.x86_64 \
		mod_xsendfile.x86_64 \
		mysql-devel.x86_64 \
		mysql.x86_64 \
		ncurses-devel.x86_64 \
		nmap.x86_64 \
		octave.x86_64 \
		openssl-devel.x86_64 \
		pcre-devel.x86_64 \
		pdftk.x86_64 \
		php-cli.x86_64 \
		php-common.x86_64 \
		php-devel.x86_64 \
		php-ldap.x86_64 \
		php-mbstring.x86_64 \
		php-mysql.x86_64 \
		php.x86_64 \
		postgresql-devel.x86_64 \
		python26-devel.x86_64 \
		python26-setuptools.noarch \
		python26.x86_64 \
		readline-devel.x86_64 \
		sqlite-devel.x86_64 \
		sqlite.x86_64 \
		strace.x86_64 \
		tcpdump.x86_64 \
		valgrind.x86_64 \
		vim-enhanced.x86_64 \
		wireshark.x86_64 \
		zlib-devel.x86_64 \




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
	@echo "    nano          - GNU Nano text editor"
	@echo "    pv            - Pipe Viewer"
	@echo ""
	@echo "  bioinfo         - build the packages below\:"
	@echo ""
	@echo "    samtools"
	@echo "    bowtie"
	@echo "    cufflinks"
	@echo ""
	@echo "  common_install - Installs all the above pacakages."
	@echo "                   Assumes 'common_build' was successfully executed."
	@echo "                   (requires 'sudo')."
	@echo ""
	@echo "  cpan           - Install CPAN modules."
	@echo ""
	@echo "  cpan_dancer    - Install CPAN Dancer-related modules."

.PHONY: cshl_centos
cshl_centos:
	yum install $(CENTOS_PACKAGES)

.PHONY: cpan
cpan:
	PERL_MM_USE_DEFAULT=1 cpan $(CPAN_MODULES)

.PHONY: cpan_dancer
cpan_dancer:
	PERL_MM_USE_DEFAULT=1 cpan $(CPAN_DANCER_MODULES)

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
	pbzip2 \
	nano \
	pv


##
##  Building an autotools package
##


## 1. download the tarball if it doesn't exist
## 2. Extract the tarball, create the directory with the source files.
$(DIRNAME)/configure:
	@( [ -e "$(TARNAME)" ] || wget "$(URL)" )
	@( [ -d "$(DIRNAME)" ] || tar -xvf "$(TARNAME)" )

## 3. run "./configure" to create the make files
$(DIRNAME)/Makefile: $(DIRNAME)/configure
	( cd "$(DIRNAME)" ; ./configure )

## 4. run "make" to build the package
.PHONY: autoconf-step-make
autoconf-step-make: $(DIRNAME)/Makefile
	( cd "$(DIRNAME)" ; make )

.PHONY: build-autoconf-package
build-autoconf-package: autoconf-step-make


.PHONY: install-autoconf-package
install-autoconf-package:
	( [ -d "$(DIRNAME)" ] && ( cd "$(DIRNAME)" ; make install ) )



##
## building a simple "Make" package
## (not autotools / configure support)

.PHONY: build-make-package
build-make-package:
	@( [ -e "$(TARNAME)" ] || wget "$(URL)" )
	@( [ -d "$(DIRNAME)" ] || tar -xvf "$(TARNAME)" )
	@( cd "$(DIRNAME)" ; make )

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

.PHONY: nano
nano:
	$(MAKE) URL="$(NANO)" build-autoconf-package

.PHONY: pv
pv:
	$(MAKE) URL="$(PV)" build-autoconf-package

.PHONY: xzutils
xzutils:
	$(MAKE) URL="$(XZUTILS)" build-autoconf-package

.PHONY: pigz
pigz:
	$(MAKE) URL="$(PIGZ)" build-make-package

.PHONY: samtools
samtools:
	$(MAKE) URL="$(SAMTOOLS)" build-make-package

.PHONY: bowtie
bowtie:
	$(MAKE) URL="$(BOWTIE)" DIRNAME=bowtie-0.12.7 build-make-package

.PHONY: cufflinks
cufflinks:
	$(MAKE) URL="$(CUFFLINKS)" build-autoconf-package


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
	( cd "$(DIRNAME)" ; $(MAKE) PREFIX=/usr/local/ install )


.PHONY: common_install
common_install:
	$(MAKE) URL="$(PIGZ)" pigz-install
	$(MAKE) URL="$(PBZIP2)" pbzip2-install
	$(MAKE) URL="$(COREUTILS)" install-autoconf-package
	$(MAKE) URL="$(FINDUTILS)" install-autoconf-package
	$(MAKE) URL="$(GREP)" install-autoconf-package
	$(MAKE) URL="$(GAWK)" install-autoconf-package
	$(MAKE) URL="$(GSED)" install-autoconf-package
	$(MAKE) URL="$(GIT)" install-autoconf-package
	$(MAKE) URL="$(XZUTILS)" install-autoconf-package
	$(MAKE) URL="$(NANO)" install-autoconf-package
	$(MAKE) URL="$(PV)" install-autoconf-package
