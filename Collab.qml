import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Column {

    id:collab
    visible: true
    width: 600
    height: 600
    property string nom
    property string prenom
    property string desc
    property string url2

    Image {
        width: parent.width
        height: 300
        fillMode:Image.PreserveAspectFit
        id: image
        source : Qt.resolvedUrl(collab.url2)
    }

    Label {
        width: parent.width
        height: 15
        id:nomLabel
        text: qsTr(collab.nom)
        color:"black"
        horizontalAlignment :Text.AlignHCenter
    }


    Label {
        width: parent.width
        height: 15
        id:prenomLabel
        text: qsTr(collab.prenom)
        color:"black"
        horizontalAlignment :Text.AlignHCenter
    }

    Label {
        width: parent.width
        height: 50
        id:descLabel
        text: qsTr(collab.desc)
        color:"black"
        horizontalAlignment :Text.AlignHCenter
    }

}




