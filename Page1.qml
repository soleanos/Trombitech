import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    ListModel {
        id:localModel
        ListElement{url:"qrc:/pic.jpg";name:"tatouage"}
        ListElement{url:"qrc:/pic2.jpg";name:"tatouage sur bras"}
    }

    GridView {
        height: parent.height; width: parent.width
        cellWidth: parent.width/2; cellHeight: parent.height/2
        anchors.fill: parent
        model:localModel

        delegate: picturesDelegate

        Component {
            id: picturesDelegate
            Image{
                id: wrapper
                width: parent.cellWidth
                height: parent.cellHeight
                source : Qt.resolvedUrl(url)
            }
        }
    }
}
