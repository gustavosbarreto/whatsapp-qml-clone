import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.14
import "components/Header"
import "components/MessageList"

import "theme.js" as Theme

Rectangle {
    width: 400
    height: 800

    Header {
        id: header
        color: Theme.headerColor
        height: 110
        anchors.left: parent.left
        anchors.right: parent.right
    }

    SwipeView {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: header.bottom
        anchors.bottom: parent.bottom

        clip: true

        currentIndex: header.tabIndex
        onCurrentIndexChanged: header.tabIndex = currentIndex

        Item {
            clip: true

            MessageList {
                anchors.fill: parent
                anchors.topMargin: 5
            }
        }

        Rectangle {
            color: Theme.inactiveColor
        }

        Rectangle {
            color: Theme.badgeColor
        }
    }

    DropShadow {
        anchors.fill: header
        verticalOffset: 2
        radius: 10
        samples: 20
        color: "#80000000"
        source: header
    }
}
