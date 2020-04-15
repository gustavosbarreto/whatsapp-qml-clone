import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.14
import "../../theme.js" as Theme

Item {
    id: item
    height: 90
    width: parent.width

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 15
        anchors.rightMargin: 15

        ProfileImage {
            source: model.image
        }

        RowLayout {
            Layout.leftMargin: 10

            ColumnLayout {
                Layout.fillWidth: true

                Text {
                    text: model.name
                    font.family: Theme.fontFamily
                    font.pixelSize: 18
                    font.weight: Font.DemiBold
                }

                Text {
                    text: model.lastMessage
                    font.family: Theme.fontFamily
                    font.pixelSize: 16
                    color: Theme.textColor
                    elide: Text.ElideRight
                    Layout.fillWidth: true
                    Layout.preferredWidth: parent.width
                }
            }

            ColumnLayout {
                Layout.alignment: Qt.AlignRight

                Text {
                    text: model.lastActivity
                    font.family: Theme.fontFamily
                    font.pixelSize: 14
                    color: Theme.textColor
                }

                Rectangle {
                    color: Theme.badgeColor
                    width: 24
                    height: 24
                    radius: width / 2
                    Layout.alignment: Qt.AlignHCenter
                    opacity: model.newMessages > 0 ? 1 : 0

                    Text {
                        font.family: Theme.fontFamily
                        font.pixelSize: 12
                        font.weight: Font.Bold
                        text: model.newMessages
                        color: "#fff"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.fill: parent
                    }
                }
            }
        }
    }

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 90
        anchors.rightMargin: 15
        height: 1
        color: index + 1 == count ? "transparent" : Theme.separatorColor
    }
}
