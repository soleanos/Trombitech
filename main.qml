import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
            x: 0
            y: 0
           // myTextInput.text.toString().substring(myTextInput.selectionStart,
               // myTextInput.selectionEnd);
        }

        Page {

            TextInput {
                id:nomInput
                text: "Nom"
                cursorVisible: false
            }

            TextInput {
                id:prenomInput
                text: "Prénom"
                cursorVisible: false
            }

            TextInput {
                id:descInput
                text: "Description"
                cursorVisible: false
            }

        }
    }

    TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            x: 48
            y: 0
            text: qsTr("Second")
        }
    }

}
