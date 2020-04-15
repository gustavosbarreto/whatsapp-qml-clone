import QtQuick 2.0
import QtQuick.Controls 2.12 as Controls
import "../../theme.js" as Theme

Controls.TabButton {
    id: tab
    height: 40
    anchors.bottom: parent.bottom

    contentItem: Text {
        font.family: Theme.fontFamily
        font.pixelSize: 15
        font.weight: Font.ExtraBold
        color: tab.checked ? "#fff" : Theme.inactiveColor
        text: tab.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
    }

    background: Rectangle {
        color: "#fff"
        width: parent.width
        height: 3
        visible: tab.checked
        anchors.bottom: parent.bottom
    }
}
