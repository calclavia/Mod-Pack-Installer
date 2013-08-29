## This script will update a server's mods based on a link provided as the first parameter in this script.
## Author Calclavia

echo Assuming pack is ready and server is closed...
url=$1

echo Downloading server pack...
wget -O temppack.zip ${url}

echo Extracting FTB modpack...
unzip temppack.zip -d temppack

echo Removing existing mods
rm -rf config
rm -rf coremods
rm -rf mods
rm minecraft_server.jar

echo Unpacking...
mkdir config
mkdir coremods
mkdir mods

cp -r temppack/* ./
#rm minecraft_server.jar
#rm minecraft_server.jar
#wget -O minecraft_server.jar http://ci.md-5.net/job/MCPC-Plus/33/artifact/eclipse/Forge/target/mcpc-plus-1.6.2-R0.1-forge794-B33.jar

rm -rf temppack
rm temppack.zip

echo Update complete!
