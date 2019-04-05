import QtQuick 2.9
import QtQuick.Controls 2.2

import server 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    Server {
        id: server
        onMessageSent: console.log("Message sent at " + timestamp + " target: " + target + " message: " +  message)
        onMessageReceived: console.log("Message received at " + timestamp + " source: " + source + " message: " +  message )
        onConnectionChanged: console.log("Connection status changed")


    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        //currentIndex: tabBar.currentIndex
        interactive: false



        Page1Form {
            id: homePage
            Image {
                id: tunijpg
                source: "images/kuvat/tuni.jpg"
            }
            testi.onClicked: {
                //server.connection = qsTr("haloo")
                testi.text = server.connection
                //server.setConnection: qsTr("haloo")
            }

            goToPage2.onClicked: {
                swipeView.incrementCurrentIndex()
                console.log("go to page 2")

            }
            testilabel.text: server.connection

        }


        ChooseSource {
            id: chooseSource
        }
        ChooseTarget {
            id: chooseTarget
        }
    }

    /*footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Home")
        }

        TabButton {
            text: qsTr("Choose source")
        }
        TabButton {
            text: qsTr("Choose target")
        }
    }*/
}
