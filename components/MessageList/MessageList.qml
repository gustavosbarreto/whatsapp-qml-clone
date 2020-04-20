import QtQuick 2.12

ListView {
    model: MessagesModel{}

    delegate: MessageListItem {
    }
}
