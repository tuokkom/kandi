import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 600
    height: 400
    property alias tv2isChecked: tv2isChecked
    property alias tv4connectedTo: tv4connectedTo
    property alias tv3connectedTo: tv3connectedTo
    property alias tv2connectedTo: tv2connectedTo
    property alias tv1connectedTo: tv1connectedTo
    property alias connectionAsNum: connectionAsNum
    property alias testilabel: testilabel
    property alias testi: testi
    property alias tv4isChecked: tv4isChecked
    property alias tv3isChecked: tv3isChecked
    property alias tv1isChecked: tv1isChecked
    property alias infoLabel: infoLabel
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
                anchors.top: parent.top
                anchors.topMargin: 40
            }

            Label {
                id: label
                x: 257
                y: 20
                text: qsTr("TV1 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 20
            }

            Label {
                id: testilabel
                x: 29
                y: 320
                text: qsTr("You are on Page 1.")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: connectionAsNum
                x: 62
                y: 300
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 40
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: testi
                x: 47
                y: 261
                text: qsTr("Button")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 60
            }

            Label {
                id: infoLabel
                x: 65
                y: 240
                text: qsTr("info")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 100
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
                x: 32
                y: 20
                text: qsTr("TV2 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 20
            }

            Label {
                id: tv2connectedTo
                x: 42
                y: 40
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
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
                anchors.top: parent.top
                anchors.topMargin: 20
            }

            Label {
                id: tv3connectedTo
                x: 42
                y: 40
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
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
                anchors.top: parent.top
                anchors.topMargin: 20
            }

            Label {
                id: tv4connectedTo
                x: 42
                y: 40
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
            }

            Label {
                id: tv4isChecked
                x: 62
                y: 320
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 80
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: tv1isChecked
                x: 62
                y: 260
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 140
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: tv2isChecked
                x: 62
                y: 280
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 120
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: tv3isChecked
                x: 62
                y: 300
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 100
                anchors.horizontalCenter: parent.horizontalCenter
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
    }

    Rectangle {
        id: rectangle1
        width: page.width
        height: 30
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#00000000"
            }

            GradientStop {
                position: 1
                color: "#ffffff"
            }
        }
        border.color: "#00000000"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
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
}




/*##^## Designer {
    D{i:7;anchors_x:0}D{i:15;anchors_height:353;anchors_width:150}D{i:2;anchors_height:100;anchors_width:100}
D{i:29;anchors_y:134}
}
 ##^##*/
