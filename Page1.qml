import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property var model : localModel

    ListModel {
        id:localModel
        ListElement{url:"qrc:/Default.jpg";name:"Dupond";firstName:"Philippe"}
        ListElement{url:"qrc:/Default.jpg";name:"Rodibon";firstName:"Roger"}
    }


    Component {
        id: picturesDelegate
        Image{
            id: wrapper
            width: parent.cellWidth
            height: parent.cellHeight
            source : Qt.resolvedUrl(url)
        }


    }

    ListView{
        id:clockview
        anchors.fill:parent
        //orientation: ListView.Vertical
        cacheBuffer:2000
        snapMode:ListView.SnapOneItem
        highlightRangeMode: ListView.ApplyRange
        delegate:Collab{nom:name;url2:url;prenom:firstName}
        model:localModel
        clip:true
    }

}

