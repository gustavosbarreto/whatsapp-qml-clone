import QtQuick 2.12

ListView {
    model: JSONListModel {
        source: "http://localhost:3000/messages"
    }

    delegate: MessageListItem {
    }
}
