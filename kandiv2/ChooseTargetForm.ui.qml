import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 600
    height: 400
    property alias tv4icon: tv4icon
    property alias tv3icon: tv3icon
    property alias tv2icon: tv2icon
    property alias tv1icon: tv1icon
    property alias tv4: tv4
    property alias tv3: tv3
    property alias tv2: tv2
    property alias tv1: tv1
    property alias targetCancel: targetCancel
    property alias targetDone: targetDone

    header: Label {
        height: 50
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
                anchors.top: image1.bottom
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
                anchors.top: image1.bottom
                anchors.topMargin: 40
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: image1
                x: 25
                width: 80
                height: 80
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 20
                source: "kuvat/564-512.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: tv1icon
                    anchors.fill: parent
                }
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
                anchors.top: image2.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv2
                x: 62
                y: 50
                anchors.top: label1.bottom
                anchors.topMargin: 20
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

            Image {
                id: image2
                x: 34
                y: 53
                width: 80
                height: 80
                anchors.horizontalCenterOffset: 0
                anchors.top: parent.top
                source: "kuvat/564-512.png"
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    id: tv2icon
                    anchors.fill: parent
                }
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
                anchors.top: image3.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv3
                x: 62
                y: 50
                anchors.horizontalCenterOffset: 0
                anchors.top: label2.bottom
                anchors.topMargin: 20
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

            Image {
                id: image3
                x: -14
                y: 102
                width: 80
                height: 80
                anchors.horizontalCenterOffset: 0
                anchors.top: parent.top
                source: "kuvat/564-512.png"
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    id: tv3icon
                    anchors.fill: parent
                }
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
                anchors.top: image4.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv4
                x: 62
                y: 50
                anchors.top: label3.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                id: image4
                x: -63
                y: 90
                width: 80
                height: 80
                anchors.horizontalCenterOffset: 0
                anchors.top: parent.top
                source: "kuvat/564-512.png"
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    id: tv4icon
                    anchors.fill: parent
                }
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
            visible: false
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
    D{i:7;anchors_height:100;anchors_width:100}D{i:6;anchors_y:140}D{i:11;anchors_y:140}
D{i:13;anchors_height:100;anchors_width:100}D{i:12;anchors_y:140}D{i:16;anchors_y:140}
D{i:19;anchors_height:100;anchors_width:100}D{i:18;anchors_y:140}D{i:21;anchors_x:150;anchors_y:0}
D{i:24;anchors_height:100;anchors_width:100}D{i:23;anchors_y:140}D{i:20;anchors_y:140}
D{i:25;anchors_x:150;anchors_y:0}D{i:26;anchors_y:"-50"}D{i:30;anchors_y:"-50"}D{i:2;anchors_height:100;anchors_width:100}
}
 ##^##*/
