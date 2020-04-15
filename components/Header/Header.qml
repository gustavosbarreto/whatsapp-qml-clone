import QtQuick 2.0
import "../../theme.js" as Theme

Rectangle {
    property int tabIndex: 0

    Text {
        text: "WhatsApp"
        color: "#fff"
        font.family: Theme.fontFamily
        font.pixelSize: 22
        font.weight: Font.DemiBold
        anchors {
            left: parent.left
            top: parent.top
            leftMargin: 15
            topMargin: 15
        }
    }

    TabBar {
        id: tabBar

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 15
        anchors.rightMargin: 15

        currentIndex: tabIndex

        onCurrentIndexChanged: tabIndex = currentIndex
    }
}
