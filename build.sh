#!/bin/sh
#Build Variables
NAME=PureMC
BLDDIR=bld
JAVA8=8
JAVA11=11
BLD8DIR=$BLDDIR/$JAVA8
BLD11DIR=$BLDDIR/$JAVA11
CACHEDIR=cache
OUTDIR=out
COMMONRESCFG=common.packconfig
INSTCFG=instance.cfg
VERSION=$(cat var/version)
LWJGLIFY=$(cat var/lwjglifyversion)
LWJGLIFYDIR=lwjgl3ify-$LWJGLIFY-multimc
LWJGLIFYJAR=lwjgl3ify-$LWJGLIFY.jar
LWJGLIFYDL=https://github.com/GTNewHorizons/lwjgl3ify/releases/download/$LWJGLIFY/$LWJGLIFYDIR.zip
LWJGLIFYDL2=https://github.com/GTNewHorizons/lwjgl3ify/releases/download/$LWJGLIFY/$LWJGLIFYJAR
UNIMIXINS=$(cat var/unimixinsversion)
MIXIN=+unimix-0.11.9+mixin.0.8.5
UNIMIXINSCOM=_unimixins-compat-1.7.10-$UNIMIXINS
UNIMIXINSMIX=_unimixins-mixin-1.7.10-$UNIMIXINS$MIXIN
UNIMIXINSCOMDL=https://github.com/LegacyModdingMC/UniMixins/releases/download/$UNIMIXINS/$UNIMIXINSCOM.jar
UNIMIXINSMIXDL=https://github.com/LegacyModdingMC/UniMixins/releases/download/$UNIMIXINS/$UNIMIXINSMIX.jar
MCIL=$(cat var/mcilversion)
MCILJAR=mcinstanceloader-$MCIL.jar
MCILDL=https://github.com/HRudyPlayZ/MCInstanceLoader/releases/download/1.7.10-$MCIL/$MCILJAR
MODERNSPLASHDL=$(cat var/modernsplashdl)
MODERNSPLASHJAR=$(cat var/modernsplashjar)

#Make Java 8/11 build directories
rm -r "${BLDDIR:?}/"
mkdir "$BLDDIR/"
mkdir "$BLD8DIR"
mkdir "$BLD11DIR"
mkdir "$BLD8DIR/.minecraft/"
mkdir "$BLD8DIR/.minecraft/mods/"
mkdir "$BLD11DIR/.minecraft/"
mkdir "$BLD11DIR/.minecraft/mods/"
mkdir "$CACHEDIR/" -p
mkdir "$OUTDIR/" -p

#Download stuff needed to build to the cache
[ ! -f "$CACHEDIR/$LWJGLIFYDIR.zip" ] && wget -q "$LWJGLIFYDL" -P "$CACHEDIR/"
[ ! -d "$CACHEDIR/$LWJGLIFYDIR" ] && 7z x "$CACHEDIR/$LWJGLIFYDIR.zip" -o"$CACHEDIR/$LWJGLIFYDIR" > /dev/null
[ ! -f "$CACHEDIR/$LWJGLIFYJAR" ] &&  wget -q "$LWJGLIFYDL2" -P "$CACHEDIR/"
[ ! -f "$CACHEDIR/$UNIMIXINSCOM.jar" ] && wget -q "$UNIMIXINSCOMDL" -P "$CACHEDIR/"
[ ! -f "$CACHEDIR/$UNIMIXINSMIX.jar" ] && wget -q "$UNIMIXINSMIXDL" -P "$CACHEDIR/"
[ ! -f "$CACHEDIR/$MCILJAR" ] &&  wget -q "$MCILDL" -P "$CACHEDIR/"
[ ! -f "$CACHEDIR/$MODERNSPLASHJAR" ] && wget -q "$MODERNSPLASHDL" -P "$CACHEDIR/"

#Install Java 8 mmc-pack.json
[ -f "$JAVA8.json" ] && cp "$JAVA8.json" "$BLD8DIR/mmc-pack.json"

#Install LWJGL3IFY to Java 11 Directory
[ -d "$CACHEDIR/$LWJGLIFYDIR" ] && cp -r "$CACHEDIR/$LWJGLIFYDIR"/* "$BLD11DIR/"
[ -f "$CACHEDIR/$LWJGLIFYJAR" ] && cp "$CACHEDIR/$LWJGLIFYJAR" "$BLD11DIR/.minecraft/mods/"

#Install Essentials to Java 8 Directory
[ -f "$CACHEDIR/$UNIMIXINSMIX.jar" ] && cp "$CACHEDIR/$UNIMIXINSMIX.jar" "$BLD8DIR/.minecraft/mods/"
[ -f "$CACHEDIR/$UNIMIXINSCOM.jar" ] && cp "$CACHEDIR/$UNIMIXINSCOM.jar" "$BLD8DIR/.minecraft/mods/"
[ -f "$CACHEDIR/$MCILJAR" ] && cp "$CACHEDIR/$MCILJAR" "$BLD8DIR/.minecraft/mods/"
[ -f "$CACHEDIR/$MODERNSPLASHJAR" ] && cp "$CACHEDIR/$MODERNSPLASHJAR" "$BLD8DIR/.minecraft/mods/"

#Install Essentials to Java 11 Directory
[ -f "$CACHEDIR/$UNIMIXINSMIX.jar" ] && cp "$CACHEDIR/$UNIMIXINSMIX.jar" "$BLD11DIR/.minecraft/mods/"
[ -f "$CACHEDIR/$UNIMIXINSCOM.jar" ] && cp "$CACHEDIR/$UNIMIXINSCOM.jar" "$BLD11DIR/.minecraft/mods/"
[ -f "$CACHEDIR/$MCILJAR" ] && cp "$CACHEDIR/$MCILJAR" "$BLD11DIR/.minecraft/mods/"
[ -f "$CACHEDIR/$MODERNSPLASHJAR" ] && cp "$CACHEDIR/$MODERNSPLASHJAR" "$BLD11DIR/.minecraft/mods/"

#Copy Sources/Patches to Java 8 Build
[ -d src/ ] && cp -r src/* "$BLD8DIR/.minecraft/"
[ -d "pch/$JAVA8/src/" ] && cp -r src/* "$BLD8DIR/.minecraft/"
[ -f "$INSTCFG" ] && cp "$INSTCFG" "$BLD8DIR/instance.cfg"

#Build Java 8 Pack Config
[ -f "$COMMONRESCFG" ] && cat "$COMMONRESCFG" "pch/$JAVA8/$JAVA8.packconfig" > "$BLD8DIR/.minecraft/config/mcinstanceloader/pack/resources.packconfig"
[ -d "$BLD8DIR/.minecraft/config/mcinstanceloader/pack" ] && cd "$BLD8DIR/.minecraft/config/mcinstanceloader/pack" && zip -r ../pack.mcinstance ./* > /dev/null && cd ../../../../../..
[ -f "$BLD8DIR/.minecraft/config/mcinstanceloader/pack.mcinstance" ] && rm -r "$BLD8DIR/.minecraft/config/mcinstanceloader/pack/"

#Copy Sources/Patches to Java 11 Build
[ -d src/ ] && cp -r src/* "$BLD11DIR/.minecraft/"
[ -d "pch/$JAVA11/src/" ] && cp -r src/* "$BLD11DIR/.minecraft/"
[ -f "$INSTCFG" ] && cp "$INSTCFG" "$BLD11DIR/instance.cfg"

#Build Java 11 Pack Config
[ -f "$COMMONRESCFG" ] && cat "$COMMONRESCFG" "pch/$JAVA11/$JAVA11.packconfig" > "$BLD11DIR/.minecraft/config/mcinstanceloader/pack/resources.packconfig"
[ -d "$BLD11DIR/.minecraft/config/mcinstanceloader/pack" ] && cd "$BLD11DIR/.minecraft/config/mcinstanceloader/pack" && zip -r ../pack.mcinstance ./* > /dev/null && cd ../../../../../..
[ -f "$BLD11DIR/.minecraft/config/mcinstanceloader/pack.mcinstance" ] && rm -r "$BLD11DIR/.minecraft/config/mcinstanceloader/pack/"

#Copy pack icon
[ -f puremc.png ] && cp -r puremc.png "$BLD8DIR/puremc" && cp -r puremc.png "$BLD11DIR/puremc"

#Build Final Java 8 zip
[ -f "$OUTDIR/$NAME-Java$JAVA8-$VERSION.zip" ] && rm "$OUTDIR/$NAME-Java$JAVA8-$VERSION.zip"
[ -d "$BLD8DIR/" ] && cd "$BLD8DIR/" && zip -r "../../$OUTDIR/$NAME-Java$JAVA8-$VERSION.zip" . > /dev/null && cd ../..

#Build Final Java 11 zip
[ -f "$OUTDIR/$NAME-Java$JAVA11-$VERSION.zip" ] && rm "$OUTDIR/$NAME-Java$JAVA11-$VERSION.zip"
[ -d "$BLD11DIR/" ] && cd "$BLD11DIR/" && zip -r "../../$OUTDIR/$NAME-Java$JAVA11-$VERSION.zip" . > /dev/null && cd ../..