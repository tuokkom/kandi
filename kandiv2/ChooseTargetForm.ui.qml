import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 600
    height: 400
    property alias tv4: tv4
    property alias tv3: tv3
    property alias tv2: tv2
    property alias tv1: tv1
    property alias targetCancel: targetCancel
    property alias targetDone: targetDone

    header: Label {
        color: "#ffffff"
        text: qsTr("Choose target location")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    FocusScope {
        id: focusScope
        anchors.fill: parent

        FocusScope {
            id: focusScope1
            width: focusScope.width / 4
            height: focusScope.height

            Label {
                id: label
                x: 64
                y: 20
                text: qsTr("TV 1")
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv1
                x: 62
                y: 50
                width: 30
                height: 30
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        FocusScope {
            id: focusScope2
            width: focusScope.width / 4
            height: focusScope.height
            anchors.leftMargin: focusScope.width / 4
            anchors.left: parent.left

            Label {
                id: label1
                x: 64
                y: 20
                text: qsTr("TV 2")
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv2
                x: 62
                y: 50
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: targetDone
                x: 53
                y: 301
                width: 100
                height: 40
                text: qsTr("Ok")
                font.pixelSize: 15
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 60
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        FocusScope {
            id: focusScope3
            width: focusScope.width / 4
            height: focusScope.height
            anchors.leftMargin: focusScope.width / 4 * 2
            anchors.left: parent.left

            Label {
                id: label2
                x: 64
                y: 20
                text: qsTr("TV 3")
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv3
                x: 62
                y: 50
                anchors.horizontalCenterOffset: 0
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: targetCancel
                x: 46
                y: 301
                width: 100
                height: 40
                text: qsTr("Cancel")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 60
            }
        }

        FocusScope {
            id: focusScope4
            y: 0
            width: focusScope.width / 4
            height: focusScope.height
            anchors.leftMargin: focusScope.width / 4 * 3
            anchors.left: parent.left

            Label {
                id: label3
                x: 64
                y: 20
                text: qsTr("TV 4")
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv4
                x: 62
                y: 50
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle {
            id: rectangle
            width: focusScope.width
            height: 50
            color: "#471391"
            anchors.top: parent.top
            anchors.topMargin: -50
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Rectangle {
            id: rectangle1
            width: focusScope.width
            height: 30
            color: "#00000000"
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#00000000"
                }

                GradientStop {
                    position: 1
                    color: "#471391"
                }
            }
            border.color: "#ffffff"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        }

        Image {
            id: image
            x: 500
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
}






/*##^## Designer {
    D{i:17;anchors_x:150;anchors_y:0}D{i:22;anchors_y:"-50"}D{i:2;anchors_height:100;anchors_width:100}
}
 ##^##*/
