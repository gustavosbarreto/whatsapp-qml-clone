import QtQuick 2.0
import QtQuick.Controls 2.12 as Controls

Controls.TabBar {
    height: 40

    background: Rectangle {
        color: "transparent"
    }

    TabButton {
        text: "CONVERSAS"
    }

    TabButton {
        text: "STATUS"
    }

    TabButton {
        text: "CHAMADAS"
    }
}
