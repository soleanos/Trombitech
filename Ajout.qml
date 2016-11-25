import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {

    TextField {
        id:nomInput
        x: 213
        y: 105
        placeholderText:"Nom"
        cursorVisible: false
    }

    TextField {
        id:prenomInput
        x: 213
        y: 160
        placeholderText:"Prénom"
        cursorVisible: false
    }

   TextField {
        id:descInput
        x: 213
        y: 213
        width: 200
        height: 64
        placeholderText:"Description"
        cursorVisible: false
    }

    Button {
        id: addCollab
        x: 245
        y: 299
        text: qsTr("Ajouter collaborateur")

        MouseArea{
            id: buttonMouseArea
            anchors.rightMargin: -1
            anchors.bottomMargin: 0
            anchors.leftMargin: 1
            anchors.topMargin: 0
            anchors.fill: parent
            onClicked: affichage.model.insert(0,{"url": "qrc:/Default.jpg", "name":nomInput.text,"firstName":prenomInput.text});
        }

    }


}
