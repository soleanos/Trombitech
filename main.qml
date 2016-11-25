import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Window {
    id:window
    visible: true
    width: 640
    height: 480
    title: qsTr("Trombitech")
    Image{

        anchors.fill: parent
        source: "qrc:/pic.jpg"
    }

//    SwipeView {
//        id: swipeView
//        anchors.fill: parent
//        currentIndex: tabBar.currentIndex

//        Page1 {
//            x: 0
//            y: 0
//            width: parent.width
//            height: parent.height
//           // myTextInput.text.toString().substring(myTextInput.selectionStart,
//               // myTextInput.selectionEnd);
//        }

//        Page {
//            x: 641
//            y: 0

//            TextInput {
//                id:nomInput
//                x: 151
//                y: 153
//                text: "Nom"
//                cursorVisible: false
//            }

//            TextInput {
//                id:prenomInput
//               // x: 152
//                //y: 191
//                text: "Prénom"
//                cursorVisible: false
//            }

//            TextInput {
//                id:descInput
//               // x: 153
//                //y: 232
//                text: "Description"
//                cursorVisible: false
//            }

//            Button {
//                id: addCollab
//                x: 244
//                y: 283
//                text: qsTr("Ajouter collaborateur")

//                MouseArea{
//                    id: buttonMouseArea

//                   anchors.fill: parent //anchor all sides of the mouse area to the rectangle's anchors
//                            //onClicked handles valid mouse button clicks
//                    onClicked: console.log("Le collab " + prenomInput.text + " "  + nomInput.text+ " viens d'être ajouté" );

//                }

//            }

//        }
//    }

//    TabBar {
//        id: tabBar
//        x: 192
//        y: 416
//        anchors.bottom:window.bottom
//        currentIndex: swipeView.currentIndex
//        TabButton {
//            text: qsTr("Affichage")
//        }
//        TabButton {
//         x: 48
//         y: 0
//            text: qsTr("Ajout")
//        }
//    }

}
