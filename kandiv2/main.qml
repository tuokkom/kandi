import QtQuick 2.9
import QtQuick.Controls 2.2

import server 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("TV controller")

    //Server object that sends and receives messages from switches that control the TVs
    //Log all received and sent messages to console
    Server {
        id: server
        onMessageSent: {
            console.log("Message sent at " + timestamp + " target: " + target + " message: " +  message)
            /* Testing the error message
            if (message == "r 1 1"){
                homePage.errorWindow.visible = true
                homePage.goToPage2.visible = false
            }*/
        }
        onMessageReceived: {
            console.log("Message received at " + timestamp + " source: " + source + " message: " +  message )
            if (message == "Remote UDP IP Address Access Deny!"){
                homePage.errorWindow.visible = true
                homePage.goToPage2.visible = false
            }
        }
        onConnectionChanged: console.log("Connection status changed")
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        Page1Form {
            id: homePage

            //You can move to next page via clicking the button or the icons
            goToPage2.onClicked: nextPage()

            mouseArea.onClicked: nextPage()
            mouseArea1.onClicked: nextPage()
            mouseArea2.onClicked: nextPage()
            mouseArea3.onClicked: nextPage()

            function nextPage(){
                swipeView.incrementCurrentIndex()
                console.log("go to page source selecting")
            }

        }

        //Declaration of other pages
        ChooseSource {
            id: chooseSource
        }
        ChooseTarget {
            id: chooseTarget
        }
    }
}
