import QtQuick 2.0
import QtGraphicalEffects 1.14

Item {
    width: 60
    height: width

    property string source: ""

    Image {
        source: parent.source
        anchors.fill: parent
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }

    Rectangle {
        id: mask
        anchors.fill: parent
        radius: width / 2
        visible: false
    }
}
