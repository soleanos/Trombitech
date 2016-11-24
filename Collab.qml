import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {

    id:collab
    visible: true
    width: 600
    height: 600
    anchors.fill:parent

    property string nom
    property string url

    Image {
        anchors.fill:parent
        width: 600
        height: 600
        id: image
        source : Qt.resolvedUrl(collab.url)


    }

    Label {
        id:nomLabel
        text: qsTr(collab.nom)
        anchors.centerIn: parent
        z: 2
        color:"black"
    }

}
