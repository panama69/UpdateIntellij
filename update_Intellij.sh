#!/bin/bash
# contributing source of how this script was created https://stackoverflow.com/questions/30130934/how-to-install-intellij-idea-on-ubuntu
# yes, the filename and folder name are hardcoded for the time being

FILENAME="ideaIC-2017.2.2.tar.gz"
FOLDERNAME="idea-IC-172.3757.52"

# download file
curl -v -O https://download-cf.jetbrains.com/idea/$FILENAME

# extract file to /opt folder
# verbose version
#sudo tar -xvf $FILENAME -C /opt/
# quiet version
sudo tar -xf $FILENAME -C /opt/

# backup desktop entry
DESKTOP_PATH="/usr/share/applications"
cp  ${DESKTOP_PATH}/jetbrains-idea-ce.desktop $DESKTOP_PATH/jetbrains-idea-ce.desktop.$$

sed -i 's/idea-IC-[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*/'${FOLDERNAME}'/g' ${DESKTOP_PATH}/jetbrains-idea-ce.desktop

#rm $FILENAME
