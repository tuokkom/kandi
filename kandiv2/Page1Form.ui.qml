import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 600
    height: 400
    property alias mouseArea3: mouseArea3
    property alias mouseArea2: mouseArea2
    property alias mouseArea1: mouseArea1
    property alias mouseArea: mouseArea
    property alias errorOk: errorOk
    property alias errorWindow: errorWindow
    property alias tv4connectedTo: tv4connectedTo
    property alias tv3connectedTo: tv3connectedTo
    property alias tv2connectedTo: tv2connectedTo
    property alias tv1connectedTo: tv1connectedTo
    property alias goToPage2: goToPage2

    header: Label {
        height: 50
        color: "#ffffff"
        text: qsTr("Home")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        styleColor: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 0
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    FocusScope {
        id: focusScope
        anchors.fill: parent

        Button {
            id: goToPage2
            x: 239
            y: 301
            width: 180
            height: 40
            text: qsTr("Add new connection")
            font.pixelSize: 15
            padding: 0
            autoRepeat: false
            spacing: 1
            focusPolicy: Qt.NoFocus
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
        }

        FocusScope {
            id: focusScope1
            width: focusScope.width / 4
            height: focusScope.height
            anchors.left: parent.left
            anchors.leftMargin: 0

            Label {
                id: tv1connectedTo
                x: 42
                y: 40
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: label.bottom
                anchors.topMargin: 20
            }

            Label {
                id: label
                x: 257
                y: 20
                text: qsTr("TV1 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: image2.bottom
                anchors.topMargin: 20
            }

            Image {
                id: image2
                x: 25
                width: 80
                height: 80
                anchors.top: parent.top
                source: "kuvat/564-512.png"
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    id: mouseArea
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
                x: 32
                y: 20
                text: qsTr("TV2 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: image3.bottom
                anchors.topMargin: 20
            }

            Label {
                id: tv2connectedTo
                x: 42
                y: 40
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: label1.bottom
                anchors.topMargin: 20
            }

            Image {
                id: image3
                x: 25
                width: 80
                height: 80
                anchors.top: parent.top
                source: "kuvat/564-512.png"
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    id: mouseArea1
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
                x: 32
                y: 20
                text: qsTr("TV3 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: image4.bottom
                anchors.topMargin: 20
            }

            Label {
                id: tv3connectedTo
                x: 42
                y: 40
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: label2.bottom
                anchors.topMargin: 20
            }

            Image {
                id: image4
                x: 25
                width: 80
                height: 80
                anchors.top: parent.top
                source: "kuvat/564-512.png"
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    id: mouseArea2
                    anchors.fill: parent
                }
            }
        }

        FocusScope {
            id: focusScope4
            width: focusScope.width / 4
            height: focusScope.height
            anchors.leftMargin: focusScope.width / 4 * 3
            anchors.left: parent.left

            Label {
                id: label3
                x: 32
                y: 20
                text: qsTr("TV4 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: image5.bottom
                anchors.topMargin: 20
            }

            Label {
                id: tv4connectedTo
                x: 42
                y: 40
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: label3.bottom
                anchors.topMargin: 20
            }

            Image {
                id: image5
                x: 25
                width: 80
                height: 80
                anchors.top: parent.top
                source: "kuvat/564-512.png"
                anchors.topMargin: 20
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter

                MouseArea {
                    id: mouseArea3
                    anchors.fill: parent
                }
            }
        }
    }

    Rectangle {
        id: rectangle
        width: page.width
        height: 50
        color: "#471391"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: -50
        border.width: 0
    }

    Rectangle {
        id: rectangle1
        width: page.width
        height: 30
        color: "#00000000"
        border.width: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Label {
            id: label6
            x: 246
            y: 9
            text: qsTr("© Miro Tuokko 2019")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
        }
    }

    Image {
        id: image
        x: 550
        y: -50
        width: 50
        height: 50
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: -50
        fillMode: Image.PreserveAspectFit
        source: "kuvat/tuni.jpg"
    }

    Image {
        id: image1
        x: 0
        y: 0
        width: 200
        height: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 0
        fillMode: Image.PreserveAspectFit
        source: "kuvat/Uuden_Tampereen_yliopiston_logo.png"
    }

    Rectangle {
        id: errorWindow
        x: 200
        y: 107
        width: 400
        height: 250
        color: "#ffffff"
        border.color: "#000000"
        visible: false
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 5

        Label {
            id: label4
            text: qsTr("Remote UDP IP Address Access Deny!")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Button {
            id: errorOk
            width: 78
            height: 32
            text: qsTr("Ok")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: label5
            text: qsTr("Connection error")
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Connections {
        target: errorOk
        onClicked: errorWindow.visible = false
    }

    Connections {
        target: errorOk
        onClicked: goToPage2.visible = true
    }
}




/*##^## Designer {
    D{i:7;anchors_y:140}D{i:11;anchors_y:140}D{i:13;anchors_height:353;anchors_width:150}
D{i:15;anchors_y:140}D{i:19;anchors_y:140}D{i:2;anchors_height:100;anchors_width:100}
D{i:22;anchors_y:134}D{i:25;anchors_y:134}
}
 ##^##*/
