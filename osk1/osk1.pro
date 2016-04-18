TEMPLATE = app
TARGET = osk1

load(ubuntu-click)

QT += qml quick

SOURCES += main.cpp

RESOURCES += osk1.qrc

QML_FILES += $$files(*.qml,true) \
             $$files(*.js,true)

CONF_FILES +=  osk1.apparmor \
               osk1.png

AP_TEST_FILES += tests/autopilot/run \
                 $$files(tests/*.py,true)

#show all the files in QtCreator
OTHER_FILES += $${CONF_FILES} \
               $${QML_FILES} \
               $${AP_TEST_FILES} \
               osk1.desktop

#specify where the config files are installed to
config_files.path = /osk1
config_files.files += $${CONF_FILES}
INSTALLS+=config_files

#install the desktop file, a translated version is 
#automatically created in the build directory
desktop_file.path = /osk1
desktop_file.files = $$OUT_PWD/osk1.desktop
desktop_file.CONFIG += no_check_exist
INSTALLS+=desktop_file

# Default rules for deployment.
target.path = $${UBUNTU_CLICK_BINARY_PATH}
INSTALLS+=target

