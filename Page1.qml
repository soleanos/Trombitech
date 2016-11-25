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
        delegate:Collab{nom:name;url2:url}
        model:localModel
        clip:true
    }

}

