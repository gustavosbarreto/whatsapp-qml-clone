import QtQuick 2.12

ListModel {
    id: model

    property string source: ""

    onSourceChanged: {
        reload();
    }

    Component.onCompleted: reload()

    function reload() {
        model.clear();

        var xhr = new XMLHttpRequest();

        xhr.open("GET", source);

        xhr.onreadystatechange = function() {
            if (xhr.readyState == XMLHttpRequest.DONE) {
                if (xhr.responseText.trim().length == 0) {
                    console.log("JSONListModel: Empty content");
                } else {
                    try {
                        var objects = JSON.parse(xhr.responseText);

                        model.clear();

                        for (var key in objects)
                            model.append(objects[key]);
                    } catch (e) {
                        console.log("JSONListModel: Failed to parse contents: " + e);
                    }
                }
            }
        }

        xhr.send();
    }
}
