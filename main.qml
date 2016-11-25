import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Window {
    id:window
    visible: true
    width: 640
    height: 480
    maximumWidth: 640
    maximumHeight: 480
    title: qsTr("Trombitech")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {

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


        Page1 {
            id:affichage
            width: 489
            height: 480
        }
    }

    TabBar {
        id: tabBar
        x: 266
        y: 397
        width: 108
        height: 39
        anchors.bottom:window.bottom
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Affichage")
        }
        TabButton {
            x: 48
            text: qsTr("Ajout")
        }
    }

}
