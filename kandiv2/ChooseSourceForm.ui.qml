import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 600
    height: 400
    property alias sourceCancel: sourceCancel
    property alias sourceDone: sourceDone
    property alias sourceBox1: sourceBox1

    header: Label {
        color: "#ffffff"
        text: qsTr("Choose source location")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    FocusScope {
        id: focusScope
        anchors.fill: parent

        ComboBox {
            id: sourceBox1
            x: 240
            y: 161
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: label1
            x: 244
            y: 30
            text: qsTr("Choose source number")
            anchors.bottom: sourceBox1.top
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        FocusScope {
            id: focusScope1
            width: focusScope.width / 4
            height: focusScope.height
            anchors.leftMargin: focusScope.width / 4
            anchors.left: parent.left

            Button {
                id: sourceDone
                x: 203
                y: 301
                width: 100
                height: 40
                text: qsTr("Ok")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        FocusScope {
            id: focusScope2
            width: focusScope.width / 4
            height: focusScope.height
            anchors.leftMargin: focusScope.width / 4 * 2
            anchors.left: parent.left

            Button {
                id: sourceCancel
                x: -104
                y: 301
                width: 100
                height: 40
                text: qsTr("Cancel")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
            }
        }
    }

    Rectangle {
        id: rectangle
        width: page.width
        height: 50
        color: "#471391"
        anchors.top: parent.top
        anchors.topMargin: -50
    }

    Image {
        id: image
        width: 50
        height: 50
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: -50
        fillMode: Image.PreserveAspectFit
        source: "kuvat/tuni.jpg"
    }
}




/*##^## Designer {
    D{i:2;anchors_height:100;anchors_width:100}
}
 ##^##*/
