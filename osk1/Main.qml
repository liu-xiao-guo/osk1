import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "osk1.liu-xiao-guo"

    width: units.gu(100)
    height: units.gu(75)

    anchorToKeyboard: true

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("osk1")
            StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }
        }

        TextField {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: units.gu(2)
            placeholderText: "please input something"
        }
    }
}

