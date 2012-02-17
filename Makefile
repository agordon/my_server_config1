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
PARALLEL=http://ftp.gnu.org/gnu/parallel/parallel-20120122.tar.bz2
BEDTOOLS_GIT=https://github.com/arq5x/bedtools.git


#R custom installation
R=http://cran.stat.ucla.edu/src/base/R-2/R-2.14.1.tar.gz
R_PREFIX=/opt/$(basename $(basename $(notdir $(R))))
# hard-coded mirror, so that R doesn't pop-up the ugly Tcl GUI and ask for one.
R_CRAN_MIRROR="http://R.research.att.com"

#Perl custom installation
PERL=http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz
PERL_TARNAME=$(notdir $(PERL))
PERL_BASENAME=$(basename $(basename $(PERL_TARNAME)))
PERL_DEST=/opt/$(PERL_BASENAME)/

#UNZIP custom installation
UNZIP=ftp://ftp.info-zip.org/pub/infozip/src/unzip60.zip
UNZIP_ZIPNAME=$(notdir $(UNZIP))
UNZIP_BASENAME=$(basename $(UNZIP_ZIPNAME))

#BIOINFO PACKAGES
SAMTOOLS=http://downloads.sourceforge.net/project/samtools/samtools/0.1.18/samtools-0.1.18.tar.bz2
BOWTIE=http://downloads.sourceforge.net/project/bowtie-bio/bowtie/0.12.7/bowtie-0.12.7-src.zip
CUFFLINKS=http://cufflinks.cbcb.umd.edu/downloads/cufflinks-1.3.0.tar.gz
TOPHAT=http://tophat.cbcb.umd.edu/downloads/tophat-1.4.0.tar.gz
BWA=http://downloads.sourceforge.net/project/bio-bwa/bwa-0.6.1.tar.bz2

# Default URL is dummy. Use must specify a valid one
URL=foo://must/replace/this/with/real/url/of/package
TARNAME=$(notdir $(URL))
#implicit assumption: TARNAME as two extensions: ".tar" and ".gz"/".bz2"/".xz"
DIRNAME=$(basename $(basename $(TARNAME)))

# Allow AutoConf packages to install to specifc prefix
ifdef PREFIX
    PREFIX_PARAM=--prefix $(PREFIX)
else
    PREFIX_PARAM=
endif
DEFAULT_INSTALLATION_PREFIX=/usr/local

CPAN_MODULES=\
		YAML::XS \
		YAML::Any \
		Test::Exception \
		Test::Pod \
		Test::Pod::Coverage \
		Test::More \
		Test::TCP \
		Test::Inter \
		DBD::SQLite \
		DBD::mysql \
		DBD::Pg \
		Data::Dump \
		Carp::Always \
		Carp::Always::Color \
		Class::Load \
		Scalar::Util \
		Math::Round \
		DateTime \
		JSON::XS \
		JSON \
		Crypt::Blowfish \
		Moose \
		Text::CSV_XS \
		URI::Escape:XS \
		Compress::Bzip2 \
		List::Util \
		List::MoreUtils \
		Data::Validate \
		Data::Validate::Struct \
		File::MimeInfo::Magic \
		File::Slurp \
		Number::Format \
		Number::Bytes::Human \
		CGI::Carp \
		Sort::Key::Natural \
		Template \
		Email::Valid \
		Variable::Magic \
		Date::Manip \
		Date::Manip::DM6 \
		Pod::Readme \
		Term::ReadLine \
		Term::ReadLine::Gnu \
		PerlConsole \
		Moo \
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
		Dancer::Session::YAML \
		Dancer::Session::Memcached \
		Plack::Runner \
		Authen::SASL::XS


CENTOS_PACKAGES=\
		memcached.x86_64 \
		memcached-devel.x86_64 \
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

##BioConductor packages
R_BIOC_PACKAGES= \
	preprocessCore \
	DESeq \
	edgeR \
	biomaRt \
	GenomicRanges \
	Genominator \
	ShortRead \
	Rsamtools \
	limma \
	geneplotter

R_CRAN_PACKAGES= \
	statmod \
	UsingR \
	doBy \
	gplots \
	multicore

all:
	@echo "NOTE about 'sudo': you might need to use:"
	@echo "     sudo -E make"
	@echo "to enable sudo'd program to use locally insalled programs (based on your \$$PATH)"
	@echo "(Especially relevaly for perl/cpan, and anything installed in /usr/local/bin/ )"
	@echo ""
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
	@echo "    parallel      - GNU parallel and niceload"
	@echo ""
	@echo "  perl            - download and build perl"
	@echo "  perl-install    - install perl into /opt/ , create symlinks in ~/bin/"
	@echo
	@echo "  unzip           - download and build latest unzip"
	@echo "  unzip-install   - install unzip to /usr/local/bin"
	@echo ""
	@echo "  bedtools        - fetch the latest vesion of Bedtools (from github)"
	@echo "  bedtools-install- copy 'bedtools' to /usrlocal/bin"
	@echo ""
	@echo "  bioinfo         - build the packages below\:"
	@echo ""
	@echo "    samtools"
	@echo "    bowtie"
	@echo "    tophat"
	@echo "    cufflinks"
	@echo "    bwa"
	@echo ""
	@echo "  bioinfo_install - build & install the above BioInfo packages"
	@echo ""
	@echo "  common_install - Installs all the above pacakages."
	@echo "                   Assumes 'common_build' was successfully executed."
	@echo "                   (requires 'sudo')."
	@echo ""
	@echo "  cpan           - Install CPAN modules."
	@echo ""
	@echo "  cpan_dancer    - Install CPAN Dancer-related modules."
	@echo ""
	@echo "  R              - Build the latest R and BioConductor"
	@echo "                   NOTE: it will be insalled in specific directory"
	@echo "                         (e.g. /opt/R-2.14.1/)"
	@echo ""
	@echo "  R-install       - Install the R software"
	@echo "                    (requires sudo -E)"
	@echo ""
	@echo "  R-packages      - Install common R packages:"
	@echo "                    (requires sudo -E)"
	@echo "                    preprocessCore, DESeq, edgeR, biomaRt, GenomicRanges,"
	@echo "                    Genominator, ShortRead, Rsamtools, limma, geneplotter,"
	@echo "                    multicore"
	@echo ""

##
## Helper variables, used later on - do not change.
##
SAMTOOLS_DIR=$(CURDIR)/$(basename $(basename $(notdir $(SAMTOOLS))))
BWA_DIR=$(CURDIR)/$(basename $(basename $(notdir $(BWA))))




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
	( cd "$(DIRNAME)" ; ./configure $(PREFIX_PARAM) $(CONFIG_PARAMS) )

## 4. run "make" to build the package
.PHONY: autoconf-step-make
autoconf-step-make: $(DIRNAME)/Makefile
	( cd "$(DIRNAME)" ; $(MAKE) )

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

.PHONY: parallel
parallel:
	$(MAKE) URL="$(PARALLEL)" build-autoconf-package

.PHONY: xzutils
xzutils:
	$(MAKE) URL="$(XZUTILS)" build-autoconf-package

.PHONY: R
R:
	$(MAKE) URL="$(R)" PREFIX="$(R_PREFIX)" CONFIG_PARAMS="--enable-R-shlib" build-autoconf-package

# install "R" to "/opt/R-X.Y.Z" and create symlinks to /usr/local/bin/R-X.Y.Z
.PHONY: R-install
R-install:
	$(MAKE) URL="$(R)" install-autoconf-package
	@echo
	@echo "R is installed in $(R_PREFIX)"
	@echo
	@echo "R executables are '$(R_PREFIX)/bin'"
	@echo
	@echo "To use it, add it to your PATH, as so:"
	@echo "  export PATH=$(R_PREFIX)/bin/:$$PATH"
	@echo
	@echo "Don't forget to install R modules (e.g. 'sudo -E make R-packages') after updating your PATH".
	@echo


##This convoluted shell scripts generates R commands to install each package, e.g.:
##	install.packages("multicore")
##	source("http://bioconductor.org/biocLite.R")
##	biocLite("preprocessCore")
##	biocLite("DESeq")
##	biocLite("edgeR")
##	biocLite("biomaRt")

R_BIOC_INSTALL_COMMANDS=$(patsubst %,biocLite(\"%\");\\n, $(R_BIOC_PACKAGES))
R_CRAN_INSTALL_COMMANDS=$(patsubst %,install.packages(\"%\", repos=\"$(R_CRAN_MIRROR)\");\\n, $(R_CRAN_PACKAGES))

.PHONY: R-packages
R-packages:
	@( \
	  printf "$(R_CRAN_INSTALL_COMMANDS)" ; \
	  printf 'source("http://bioconductor.org/biocLite.R")\n' ;  \
	  printf "$(R_BIOC_INSTALL_COMMANDS)" ; \
	) | R --vanilla

.PHONY: pigz
pigz:
	$(MAKE) URL="$(PIGZ)" build-make-package

.PHONY: samtools
samtools:
	$(MAKE) URL="$(SAMTOOLS)" build-make-package
	@## Post-installation crap, create an "include" lib, to make "cufflinks" compile successfully
	@## Alternatively: copy files to /usr/local/include and /usr/local/lib
	mkdir -p $(SAMTOOLS_DIR)/include/bam
	cp $(SAMTOOLS_DIR)/*.h $(SAMTOOLS_DIR)/include/bam/

.PHONY: bwa
bwa:
	$(MAKE) URL="$(BWA)" build-make-package


.PHONY: bowtie
bowtie:
	$(MAKE) URL="$(BOWTIE)" DIRNAME=bowtie-0.12.7 build-make-package

.PHONY: tophat
tophat: samtools
	$(MAKE) URL="$(TOPHAT)" \
		CONFIG_PARAMS="--with-bam=$(SAMTOOLS_DIR) --with-bam-libdir=$(SAMTOOLS_DIR)" \
		build-autoconf-package

.PHONY: cufflinks
cufflinks: samtools
	[ -r "$(SAMTOOLS_DIR)/include/bam/bam.h" ] || { echo -e "Error: samtools files ( $(SAMTOOLS_DIR)/include/bam/bam.h ) not found. Please compile SAMTOOLS before cufflinks, and prepare the ./include/bam sub directory.\n\"make samtools\" should do the job. " >&3 ; exit 1 ; }
	$(MAKE) URL="$(CUFFLINKS)" \
		CONFIG_PARAMS="--with-bam=$(SAMTOOLS_DIR) --with-bam-libdir=$(SAMTOOLS_DIR)" \
		build-autoconf-package


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
	$(MAKE) URL="$(PARALLEL)" install-autoconf-package


##
## no "proper" installation for samtools/bwa, just copy the files
##
.PHONY: samtools_install
samtools_install:
	cp $$(find $(SAMTOOLS_DIR) -type f -executable) $(DEFAULT_INSTALLATION_PREFIX)/bin

.PHONY: bwa_install
bwa_install:
	cp $$(find $(BWA_DIR) -type f -executable) $(DEFAULT_INSTALLATION_PREFIX)/bin

.PHONY: bioinfo_install
bioinfo_install: samtools_install  bwa_install
	$(MAKE) URL="$(TOPHAT)" install-autoconf-package
	$(MAKE) URL="$(CUFFLINKS)" install-autoconf-package


##
## Perl requires custom commands :(
##
.PHONY: perl
perl:
	rm -rf ./$(PERL_BASENAME)
	rm -rf ./$(PERL_TARNAME)
	( wget "$(PERL)" && \
	tar -xzf $(PERL_TARNAME) && \
	cd $(PERL_BASENAME) && \
	./Configure -Dusethreads -des -Dprefix=$(PERL_DEST) && \
	make )
	@echo
	@echo "Perl is compiled. To install:"
	@echo "  $$ sudo make perl-install"
	@echo
	@echo "Will install perl in /opt/ and create symlinks in /usr/local/bin/perl-X.Y.Z"
	@echo
	@echo "The system's perl WILL NOT be overridden."
	@echo

## Custom perl installation:
##  install to /opt/perl-X.Y.Z,
##  then create symlinks to /usr/local/bin/perl-X.Y.Z
.PHONY: perl-install
perl-install: $(PERL_BASENAME)/perl
	( cd $(PERL_BASENAME) && make install )
	@echo
	@echo
	@echo "Perl is installed in $(PERL_DEST)"
	@echo
	@echo "perl executables are symlinked in '$(PERL_DEST)/bin'
	@echo
	@echo "To use it, add it to your PATH, as so:"
	@echo "  export PATH=$(PERL_DEST)/bin:$$PATH"
	@echo
	@echo "Don't forget to install cpan modules (e.g. 'sudo -E make cpan') after updating your PATH".
	@echo

##
## Unzip needs custom commands
## (assumes there's an old "unzip" already installed...)
.PHONY: unzip
unzip:
	rm -rf ./$(UNZIP_ZIPNAME)
	rm -rf ./$(UNZIP_BASENAME)
	wget $(UNZIP)
	unzip $(UNZIP_ZIPNAME)
	( cd unzip60 && \
	  cp unix/Makefile . && \
	  make generic )

.PHONY: unzip-install
unzip-install: $(UNZIP_BASENAME)/unzip
	( cd $(UNZIP_BASENAME) && \
	  cp unzip funzip /usr/local/bin )

.PHONY: bedtools
bedtools:
	[ -d "bedtools" ] || git clone $(BEDTOOLS_GIT) bedtools
	( cd "bedtools" ; \
	  git pull ; \
	  $(MAKE) clean ; \
	  $(MAKE) ; \
	)

.PHONY: bedtools-install
bedtools-install:
	cp ./bedtools/bin/bedtools /usr/local/bin
