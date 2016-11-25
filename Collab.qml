import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Column {

    id:collab
    visible: true
   // width: parent.width
   // height: parent.height
    // anchors.fill:parent

    property string nom
    property string url2
    Image {

        //    anchors.centerIn: parent
      width: parent.width
       height: parent.height
        fillMode:Image.PreserveAspectCrop
        id: image
        source : Qt.resolvedUrl(collab.url2)
    }

    Label {
       width: parent.width
        height: paren.height
        id:nomLabel
        text: qsTr(collab.nom)
        //anchors.centerIn:rectLabel

        color:"black"
    }
}




