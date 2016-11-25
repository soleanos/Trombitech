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
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Ajout {

        }

        Affichage {
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
            width: 69
            height: 40
            text: qsTr("Affichage")
        }
        TabButton {
            x: 66
            y: 0
            text: qsTr("Ajout")
        }
    }

}
