import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Column {

    id:collab
    visible: true
    width: 600
    height: 600
    // anchors.fill:parent

    property string nom
    property string url2
    Image {

        //     anchors.centerIn: parent
        width: parent.width
        height: 400
        fillMode:Image.PreserveAspectCrop
        id: image
        source : Qt.resolvedUrl(collab.url2)
    }

    Label {
        width: parent.width
        height: 200
        id:nomLabel
        text: qsTr(collab.nom)
        //anchors.centerIn:rectLabel

        color:"black"
    }
}




