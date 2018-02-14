#!/bin/bash
sudo apt-get install -y build-essential git qt5-default qt5-qmake libpq5 libxml2 pkg-config xml2 libxml2-dev libpq-dev &&
sudo apt-get install -y libqt5svg5* &&
git clone https://github.com/pgmodeler/pgmodeler.git &&
cd pgmodeler &&
qmake pgmodeler.pro &&
make &&
sudo make install
sudo cp ../pgmodeler_ico.png /opt
cp ../pgmodeler.desktop ~/.local/share/applications/
