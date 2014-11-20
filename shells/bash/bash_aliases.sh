#!/bin/bash
#+TITLE:     bash-aliases
#+AUTHOR:    Bingwei TIAN
#+EMAIL:     bwtian@gmail.com
#+DATE:      2012-09-10 Mon
#+DESCRIPTION: if you donot want use alias, add a \ before alias name
#+LINK_HOME:
#+KEYWORDS: alaias, \,unalias,


# #####################################################################
# # Global Variables
# #####################################################################
codename=$(lsb_release -c | cut -d : -f 2 |sed -e 's/^[ \t]*//') # delete space

# #####################################################################
# # Functions
# #####################################################################
alias uu='source ~/Dropbox/config/deb/3_update/1_update.deb.sh'
function uPPA(){
    ppas=" "
sudo add-apt-repository ppa:ubuntugis/ppa
for i in $ppas; do sudo add-apt-repository $i; done
}
function uStart(){
    apps="ubuntu-restricted-extras   flashplugin-installer  openjdk-7-jre
          unity-tweak-tool  nautilus-open-terminal  rdesktop
          vlc fping nmap synaptic
          nautilus-dropbox  sparkleshare  git  Curl  emacs graphviz
          texstudio texlive-full texlive-latex-pandoc base
          qgis  gdal-bin libgdal-dev r-base abiword  "
    for i in $apps; do sudo apt-get build-dep -y $i; done
    for i in $apps; do sudo apt-get install -y $i; done
#  virtualbox mendeleydesktop chromium-browser rstudio
}

function geInstall(){
sudo apt-get install -y lsb-core  libfontconfig.so.1
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_i386.deb
sudo dpkg -i google-earth-stable_current_i386.deb -y
uu
}

function debAll(){
sudo dpkg -i *.deb
}
# alias e='gedit' set to emacs select
alias c='tcsh'
alias d='dropbox start'
alias dt='dropbox stop'

alias dfix="echo fs.inotify.max_user_watches=100000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p"
alias s='sparkleshare start'
alias st='sparkleshare stop'
alias freem='sudo echo 3 > /proc/sys/vm/drop_caches'
alias du1='du -hd1 | sort -h'
alias du2='du -hd2 | sort -h'
alias emi='emacs --debug-init'
alias o='xdg-open .' #gnome-open .
alias r='rstudio'
alias web='chromium-browser'
alias men='mendeleydesktop'
function pdf2html(){
pdftohtml -noframes -q -p -c $1 ${1%\.pdf}-img.html
abiword --to=doc ${1%\.pdf}-img.html
}

function mvt(){
    echo "mvt Usage: mv file.ext to file_yyyymmdd-hhmmss.ext"
    file=$1
    pre=${file%.*}
    suf=${file##*.}
    now=$(date +%Y%m%d_%H%M%S)
    mv $1 ${pre}_${now}.${suf}
}
toucht(){
    file=$1
    pre=${file%.*}
    suf=${file##*.}
    now=$(date +%Y%m%d_%H%M)
    touch ${pre}_${now}.${suf}
}
alias eps='gvfs-open'
alias pdf="evince"
alias gitc='git clone'
alias cp='cp -v'
alias ln='ln -siv'
alias mv='mv -v'
alias wgetr='wget -r -nc'
teamv(){
    sudo teamviewer --daemon startno
    teamviewer
}

alias rin='R CMD INSTALL'
alias rout='R CMD REMOVE'
alias R='R --no-save'
r3(){
    \ln -sfv ~/Dropbox/config/Rconfig/Rprofile/R3.0_Rprofile.R  ~/.Rprofile
    R3
}
# ##############################################################################
# Systems
# ##############################################################################
alias logout='pkill -KILL -u tian'
alias app='sudo apt-get install'
alias in='sudo aptitude install'
makein(){
./configure
make
sudo make install
}
alias out='sudo aptitude remove '
# Update and Internet with proxy

# uu()
# {
#     export http_proxy=http://proxy.kuins.net:8080
#     source ~/Dropbox/config/deb/1_update.deb.sh
# }
# install()
# {
#     export http_proxy=http://proxy.kuins.net:8080
#     sudo apt-get install $1
# }
# ##############################################################################
# The 'ls' family (this assumes you use a recent GNU ls)
# ##############################################################################
alias l='ls -CF'           # only non-hiden folder
alias ll='ls -Flsa'         # long listing format
alias ls='ls -lhF --color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'
alias cls='clear;ls'
# ##############################################################################
# Directory
# ##############################################################################
## dir
alias ..='cd ..'
alias ...='cd ../..'
#alias --='cd --'
alias md=’mkdir’
alias rd=’rmdir’
# Make Dir form a filelist # cat dirlist | xargs -L 1 mkdir
mdlist()
{
    echo  "#mdf $1 S2: make a series of dir form dirlist with parenets"
    mkdir $1
    for i in $(cat $2); do mkdir -p ./$1/$i; done
}

## directory tree
alias treed='find . -type d | sort -n | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias treef='find . | sort -n | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
## directory Usage
alias df='df -lh'
alias du='du -kh'
# ##############################################################################
# Find and Search
# ##############################################################################
## find and grep
alias findf="find ${1:/home} -type f -name"
alias findd="find ${1:/home} -type d -name"
alias findbig="find . -type f -exec ls -hs {} \; | sort -n -r | head -10"  # Find top 5 big files
alias finddu="find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c
-print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate"
alias delbak='find ~ -name "*bak" -exec rm {} \;'
alias deltemp='find ~ -name "*temp" -ok rm {} \;'
alias delemptydir='find -empty -type d -delete'
alias lsconflictfile='find . -type f -name "*conflicted*copy*" -exec ls {} \;'
alias delconflictfile='find . -type f -name "*conflicted*copy*"  -exec rm -v {} \;'
alias delconflictdir='find . -type d -name "*conflicted*copy*"  -exec rm -rv {} \;'
findcp(){
    echo "find files $1:regex and copy to $2 directory"
    echo "Example findcp *.mp4 mp4 findcp *.srt mp4"
    dirname=$(pwd | xargs basename)
    mkdir ${2:-$dirname-mp4}
    #find . ! -type d | grep "$1" | xargs cp -t $2
    # figure out Xargs: Unmatched Single Quote error using -printf 
    find . -type f -name ${1:-*.mp4} -printf '"%p"\n' | xargs cp -v -t  ${2:-$dirname-mp4}
    find . -type f -name ${1:-*.srt} -printf '"%p"\n' | xargs cp -v -t  ${2:-$dirname-mp4}
}
findmv() {
    echo "findmv grep pattern"
}
mvout(){
    # mv all the file from a subfolder and delete the empty folder
    mv ./* .
    find -empty -type d -delete
}
mvoutf(){
    # mv all the file from a subfolder and delete the empty folder
    for i in $(\ls -fra) ; do mv $i .; done 
    find -empty -type d -delete
    find -empty -type f -delete
}
mvoutv(){
    # mv all the file from a subfolder and delete the empty folder
    mv */* .
    find -empty -type d -delete
    find -type f -name *.txt -delete
    }


alias findsd5='find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate'
alias findmd5='find . -type f -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate'
# ##############################################################################
# tClearup cleanup files not in a folder folders
# ##############################################################################
clearup(){
    find . -empty -type d -delete #delete empty folder
    find . -empty -type f -delete #delete empty folder
    dir=" 00data 01pdf 02doc 03pic 04audio 05video 06exe 07zip 08code 09tex"
    for i in $dir; do mkdir $i; done
    pdf="*.pdf"
    tex= "*.tex *.Rnw"
    doc="*.doc *.docx *.xls *.xlsx *.ppt *.pptx *.htm *.html"
    pic="*.png *.jpg *.jpeg *.bmp *.eps *.gif *.svg"
    vecData="*.csv *.xml *.kml *.kmz *.tiff *.nc *.shp *.e00"
    grdData="*.tif *.tiff *.img *.dem *.geotiff "
    zip="*.zip *.7z *.tar *.rar *.gz"
    exe="*.exe *.msi *.deb"
    video="*.mp4 *.avi *.srt"
    audio="*.mp3 *.wav "
    code="*.R *.py *.c *.m .r"
    
    for i in $pdf; do mv -f $i 01pdf; done
    for i in $doc; do mv -f $i 02doc; done
    for i in $pic; do mv -f $i 03pic; done
    for i in $tex; do mv -f $i 09tex; done
    for i in $zip; do mv -f $i 07zip; done
    for i in $exe; do mv -f $i 06exe; done
    for i in $video; do mv -f $i 05video; done
    for i in $audio; do mv -f $i 04audio; done
    for i in $code; do mv -f $i 08code; done
    for i in $vecData; do mv  -f $i 00data; done
    for i in $grdData; do mv -f $i 00data; done
    find . -empty -type d -delete
    # #TODO same name file 
}
tclearup(){
    find . -empty -type d -delete #delete empty folder
    dir=" 0data 1pdf 2doc 3pic 4audio 5video 6exe 7zip 8code"
    for i in $dir; do mkdir $i; done
    pdf="*.pdf"
    doc="*.doc *.docx *.xls *.xlsx *.ppt *.pptx *.htm *.html"
    pic="*.png *.jpg *.jpeg *.bmp *.eps *.gif"
    vecData="*.csv *.xml *.kml *.kmz *.tiff *.nc *.shp *.e00"
    grdData="*.tif *.tiff *.img *.dem *.geotiff "
    zip="*.zip *.7z *.tar *.rar *.gz"
    exe="*.exe *.msi *.deb"
    video="*.mp4 *.avi *.srt"
    audio="*.mp3 *.wav "
    code="*.R *.py *.c *.m"
    
    for i in $pdf; do mv $i 1pdf; done
    for i in $doc; do mv $i 2doc; done
    for i in $pic; do mv $i 3pic; done

    for i in $zip; do mv $i 7zip; done
    for i in $exe; do mv $i 6exe; done
    for i in $video; do mv $i 5video; done
    for i in $audio; do mv $i 4audio; done
    for i in $vecData; do mv $i 0data; done
    for i in $grdData; do mv $i 0data; done
    find . -empty -type d -delete
    #TODO same name file 
}
clearfile(){
file=$(\ls .)
filename=${file%.*}
extension=${file##*.}
echo $extension
#for i in $extension; do mkdir $i; done
    
}
tfindup(){
OUTF=rem-duplicates.sh;
echo "#! /bin/sh" > $OUTF;
find "$@" -type f -printf "%s\n" | sort -n | uniq -d |
    xargs -I@@ -n1 find "$@" -type f -size @@c -exec md5sum {} \; |
    sort --key=1,32 | uniq -w 32 -d --all-repeated=separate |
    sed -r 's/^[0-9a-f]*( )*//;s/([^a-zA-Z0-9./_-])/\\\1/g;s/(.+)/#rm -v \1/' >> $OUTF;
chmod a+x $OUTF; ls -l $OUTF
}
function tdeldup(){
    # delete  duplicated files and report who are keeped
    fdupes -rdN $1 > keepedDups.txt
    find -empty -type d -delete
    find -empty -type f -delete
}

# ==============================================================================
# Delete and Rename
# ==============================================================================
nospace() {
    echo "!!! remove all leading and trailing whitespace (including tabs)"
    echo "Usage: nospace infile outfile"
    cat $1 | sed 's/^[ \t]*//;s/[ \t]*$//' > $2
}
noleading() {
    echo "!!! remove all leading whitespace (including tabs)"
    echo "Usage: nospace infile outfile"
    cat $1 | sed 's/^[ \t]*//' > $2
}
noblank() {
    echo "!!! remove all blank lines"
    echo "Usage: nospaceblank infile outfile"
    cat $1 | sed '/^$/d' > $2
}

delN(){
    echo "!!! remove any N chracters"
    echo "Usage: delN N"
    rename 's/.{$1}//' * 
}

delSpace() {
    echo "Delete the space in the Filename"
    find . -name "*" -print | while read file
    do
        mv "${file}" "${file// /_}"
    done
}


# ==============================================================================
# 
# ==============================================================================

alias psg="ps -aux ¦ grep bash"
alias grep="grep -i"  # ignore case
# Copy,Move and Delete
alias cp='cp -iv'           # prompt before overwrite (same general problem as the rm)
alias rm='rm -i'           # prompt before overwrite (but dangerous, see Rm for a better approach)
alias mv='mv -iv'           # prompt before overwrite (same general problem as the rm)
#SSH and Internet
alias curl='curl --proxy-ntlm --proxy proxy.kuins.net:8080'
alias server_name="ssh -v -l USERNAME IP ADDRESS"
alias server_name='ssh 192.168.1.1 -l tom' # change the ip & user name
alias ser2='ssh www.dbserver.com -l kgf' # create as many alias as required.
export CVS_RSH=/usr/local/bin/ssh
alias cvl='cvs -d :ext:username@cvs.server.com:/usr/local/cvsroot'  # change required.
# ##############################################################################
# ## File Processing
# ##############################################################################
## unzip all the .zip file in the pwd
unzipall() {
for i in *.zip
do
    unzip $i
done
}
## cat file to make a new org file which every file have 1 titile
cat2org() {
echo "Usage: cat2org PATTERN(regex) outfile"
for i in $(\ls | grep $1); do
    echo "* $i"  # Filename.suf as Header, * for org-mode format
    # TODO: Non-suffix Filename as Header
    echo 
    cat "$i"
    echo
    done > $2
echo "Porcessing Finished"
}

function catR2org() {
echo "Usage: R2org PATTERN(regex) outfile"
    package=$(cat ../DESCRIPTION | grep "Package:" | awk '{print $2}' | sed -e 's/^[ \t]*//')
    version=$(cat ../DESCRIPTION | grep "version:" | awk '{print $2}' | sed -e 's/^[ \t]*//')
for i in $(\ls | grep ${1:-.[Rr]$}); do
    echo "* $i"  # subtree header title
    echo "#+BEGIN_SRC R" # R session
    echo
    cat "$i"                      # Content
    echo
    echo "#+END_SRC"              # R session
    done > ${2:-$(echo $package$version.org)}                     # output
    mv *.org ~/Dropbox/6note/RpkgsOrg
    echo "Porcessing Finished"
}

catLisp2org() {
echo "Usage: el2org PATTERN(regex) outfile"
for i in $(\ls | grep $1); do
    echo "* $i"  # Filename.suf as Header, * for org-mode format
    # TODO: Non-suffix Filename as Header
    echo "#+BEGIN_SRC emacs-lisp" 
    cat "$i"
    echo "#+END_SRC"
    done > $2
echo "Porcessing Finished"
}

#

## Auto screenshot
snap()
{
    echo "Usage: snap # (#is a interval of seconds for Screen shot,Default is 300s)"
    echo "Automatically Screenshot is runing..."
    # sudo apt-get install scrot
    while true
    do
    NOW=$(date +%Y-%m-%d-%H%M%S)
    #scrot -d int  'filename.jpg|png' -e 'mv $f /file/path/to/store/screenshots'
    scrot -d ${1:-300} 'Autosnap_'$NOW'.png' -e 'mv $f ~/Dropbox/Screenshots/'
    done
}
# mp32wav() {
#     # mp32wav file.mp3 file.wav
# mpg123 -b 10000 -s "$1" | sox -t raw -r 44100 -s -w -c2 - "$2"}


# Commands
alias x="exi"
alias h='history'
alias j='jobs -l'
alias deb='sudo dpkg -i'
alias ss='source'
alias which='type -a'
alias mozc-config="/usr/lib/mozc/mozc_tool -mode=config_dialog"
alias mozc-dict="/usr/lib/mozc/mozc_tool --mode=dictionary_tool"

# ##############################################################################
# Remote Sensing and GIS fuctions
# ##############################################################################
xml2shp(){
for i in *.xml
do
     ogr2ogr -f "ESRI Shapefile" -lco ENCODING="SHIFT_JIS" -t_srs "EPSG:4326" $i.shp $i
done
}
shpmerge(){
echo "Default WGS84, UTF-8 "
    ogr2ogr -a_srs EPSG:4326 merge.shp
    for i in *.shp
    do
        ogr2ogr -f "Esri Shapefile" -append -update merge.shp $i
    done
}
shpmerge.jis(){
    #DATA=`find . -name '*.shp'`
    export SHAPE_ENCODING="SHIFT_JIS"  # Encoding for output, CP932=SHIFT_JIS
    ogr2ogr -a_srs EPSG:4326 merge.shp -lco ENCODING="SHIFT_JIS" #Input Encoding
# ogr2ogr -a_srs EPSG:${1:-4326} ${2:-merge}.shp
    for i in *.shp
    do
        ogr2ogr -f "Esri Shapefile" -append -update merge.shp $i -lco ENCODING="SHIFT_JIS"
        # ogr2ogr -append -update ${2:-merge}.shp $i -f "Esri Shapefile"
        # ogr2ogr -f KML -s_srs EPSG:2451 -t_srs EPSG:4019 out.kml in.dgn
    done
}
grdmerge(){
#gdalinfo *.tif  Check the info of tif file
# $1:Output file eg.mosaic.tif
# $2:Input file  eg.datalist.txt
# $3:Output data bit eg. Byte, Int16. Float32
    export CACHEMAX=4000
    gdal_merge.py -o ${1:-mosaic}.tif --optfile $2 -v -init -9999 -a_nodata -9999  -ot ${3:-Int16}
}

grdstack(){
#gdalinfo *.tif  Check the info of tif file
# $1:Output file eg.mosaic.tif
# $2:Input file  eg.datalist.txt
# $3:Output data bit eg. Byte, Int16. Float32
    export CACHEMAX=4000
    gdal_merge.py -o ${1:-mosaic}.tif --optfile $2 -v -separate -init -9999 -a_nodata -9999  -ot ${3:-Int16}
}

# ==============================================================================
# Write Papers scripts 
# ==============================================================================
# ------------------------------------------------------------------------------
# 0. paperx folder: with subfolders
# ------------------------------------------------------------------------------
paper()
{
    echo "mdpaper $1 : make a project for wirting a paper"
    Today=$(date +%y%m%d)
    dir=$1.$Today.paper
    mkdir $dir
    folder="0ref 1data 2code 3results 4text 5publish 6GTD"
    subref="0bib 1mywork 2teamwork 3review 4refrences"
    subdat="0rawdata 1workdata 2indata 3outdata 4mapdata"
    subcod="0SH 1R 2Python 3GIS "
    subres="0flowchart 1map 2image"
    subtex="1latex 2doc 3org 4md"
    subpub="1pdf 2doc 3xml 4ppt"
    for i in $folder; do mkdir -p ./$dir/$i; done
    for i in $subref; do mkdir -p ./$dir/0ref/$i; done
    for i in $subdat; do mkdir -p ./$dir/1data/$i; done
    for i in $subcod; do mkdir -p ./$dir/2code/$i; done    
    for i in $subres; do mkdir -p ./$dir/3results/$i; done
    for i in $subtex; do mkdir -p ./$dir/4text/$i; done
    for i in $subpub; do mkdir -p ./$dir/5publish/$i; done
}
function paperfig(){
paperName=$1
mkdir $paperName
cd $paperName
figName="fig01 fig02 "
for i in $figName; do echo $paperNamee$i | mkdir; done  
}
symposium() {
    echo "symposium $1 : symposium make a folder project to creat "
    folder="0-info, 1-abstract, "

}
# ------------------------------------------------------------------------------
# 1. paperx\refs: mendeley mangerment and updating bib files
# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------
# 2. paperx\refs\*.bib:
# ------------------------------------------------------------------------------
bibcp(){

    file=$(cat *.bib | grep "file = " | cut -d : -f2 | sed 's/^/\//')
    for f in $file; do cp $f . ; done
}
function tex2pdf () {
if [ $# -ne 1 ]; then
    echo "There are $# tex file(s)" 1>&2
    echo "At least one .tex file is required" 1>&2
else
platex $1
name=$(basename $1 .tex) #basename without .tex
dvipdfmx "$name".dvi
fi
}
# ------------------------------------------------------------------------------
# 2. refs\ref.org: Make Org file with TODO ref2org > paper1ref.org;
# lognotedone force note; C-u C-c C-q alain tag
# ------------------------------------------------------------------------------
ref2org(){
echo "#+TITLE:   Research Papers"
echo "#+STARTUP: align hidestars indent lognotedone"
echo
for f in *.pdf; do
    name=${f%.*} # strip extension
    path=$(echo $f | sed 's/ /%20/') # encode spaces as %20
    echo "* TODO $name :unread:"
    echo
    echo "[[file:$path][$name]]" # insert file link without path in current folder
    echo
done
}

# newpaper(){

# }
## Emacs many versions
e(){
    cd ~
    \rm -f .emacs
    \rm -rf .emacs.d
    if [ "$1" -eq 0 ]
    then
        rm -rf  ~/SparkleShare/emacs.d/e0_builtinEmacs/*
        rm -f ~/SparkleShare/emacs.d/e0_builtinEmacs/*
        \ln -sfv  ~/SparkleShare/emacs.d/00_setEmacs/elpa/  ~/SparkleShare/emacs.d/e0_builtinEmacs/elpa
        \ln -sfv ~/SparkleShare/emacs.d/00_setEmacs/share/  ~/SparkleShare/emacs.d/e0_builtinEmacs/share
        \ln -sfv  ~/SparkleShare/emacs.d/00_setEmacs/00_initEmacs/e0_builtinEmacs.init.el  ~/SparkleShare/emacs.d/e0_builtinEmacs/init.el
        \ln -sfv  ~/SparkleShare/emacs.d/00_setEmacs/00_initEmacs/e0_builtinEmacs.org ~/SparkleShare/emacs.d/e0_builtinEmacs/ 
        \ln -sfv ~/SparkleShare/emacs.d/e0_builtinEmacs ~/.emacs.d
    elif [ "$1" -eq 1 ]
    then
        rm -rf  ~/SparkleShare/emacs.d/e1_tianEmacs/*
        rm -f ~/SparkleShare/emacs.d/e1_tianEmacs/*
        \ln -sfv  ~/SparkleShare/emacs.d/00_setEmacs/elpa/  ~/SparkleShare/emacs.d/e1_tianEmacs/elpa
        \ln -sfv ~/SparkleShare/emacs.d/00_setEmacs/share/  ~/SparkleShare/emacs.d/e1_tianEmacs/share
        \ln -sfv  ~/SparkleShare/emacs.d/00_setEmacs/00_initEmacs/e1_tianEmacs.init.el ~/SparkleShare/emacs.d/e1_tianEmacs/init.el
        \ln -sfv  ~/SparkleShare/emacs.d/00_setEmacs/00_initEmacs/orgEmacs/* ~/SparkleShare/emacs.d/e1_tianEmacs/
        \ln -sfv  ~/SparkleShare/emacs.d/e1_tianEmacs ~/.emacs.d
    elif [ "$1" -eq 2 ]
    then
        #\ln -sfv  ~/SparkleShare/emacs.d/e2_texEmacs ~/.emacs.d
        ### quick e1
        \ln -sfv  ~/SparkleShare/emacs.d/e1_tianEmacs ~/.emacs.d
    elif [ "$1" -eq 3 ]
    then
        \ln  -sv  ~/SparkleShare/emacs.d/e3_essEmacs  ~/.emacs.d 

    elif [ "$1" -eq 4 ]
    then
        \ln  -sv  ~/SparkleShare/emacs.d/e4_minEmacs  ~/.emacs.d 

    elif [ "$1" -eq 5 ]
    then
        \ln  -sv ~/SparkleShare/emacs.d/e5_stableEmacs  ~/.emacs.d 

    elif [ "$1" -eq 11 ]
    then
        \ln  -sv ~/ ~/SparkleShare/emacs.d/gitEmacs/e11_prelude.git  ~/.emacs.d

    elif [ "$1" -eq 12 ]
    then
       \ln  -sv ~/SparkleShare/emacs.d/gitEmacs/e12_emacs24-starter-kit.git  ~/.emacs.d

    elif [ "$1" -eq 13 ]
    then
       \ln  -sv ~/SparkleShare/emacs.d/gitEmacs/e13_kjhealy-emacs-starter-kit.git  ~/.emacs.d

    elif [ "$1" -eq 14 ]
    then
       \ln  -sv ~/SparkleShare/emacs.d/gitEmacs/e14_xaosfiftytwo.git  ~/.emacs.d

    elif [ "$1" -eq 15 ]
    then
       \ln  -sv ~/SparkleShare/emacs.d/gitEmacs/e15_slemeshevsky.git  ~/.emacs.d

    elif [ "$1" -eq 16 ]
    then
       \ln  -sv  ~/SparkleShare/emacs.d/gitEmacs/e16_uwabami.git/emacs.d  ~/.emacs.d

    elif [ "$1" -eq 17 ]
    then
       \ln  -sv  ~/SparkleShare/emacs.d/gitEmacs/emacs24-starter-kit.git  ~/.emacs.d
    
    else 
        'emacs'
    fi
}

alias em='e 1 | emacs'
alias e0='e 0 | emacs'
alias ee='e 0 | emacs'
alias e1='e 1 | emacs'
alias e2='e 2 | emacs'
alias e3='e 3 | emacs'
alias e4='e 4 | emacs'
alias e5='e 5 | emacs'
alias e6='e 6 | emacs'
alias e11='e 11 | emacs'
alias e12='e 12 | emacs'
alias e13='e 13 | emacs'
alias e14='e 14 | emacs'
alias e15='e 15 | emacs'
alias e16='e 16 | emacs'
alias e17='e 17 | emacs'
alias e18='e 18 | emacs'

#######################################################################
##  Source other files 
#######################################################################
sss(){
   source ./paperFun.sh
   source ./geoFun.sh
}
#######################################################################
## R funcions
#######################################################################

upR(){
    ./configure --enable-R-shlib --prefix=/usr/local 
    make
    sudo make install
}
inR(){
unalias ls
for i in $(ls *.tar.gz)
    do R CMD INSTALL $i
done
}

gitPull(){
git fetch --all
git reset --hard origin/master
git pull origin master
}
buidqis(){
mkdir build
sudo cmake..
sudo make
sudo make install
}