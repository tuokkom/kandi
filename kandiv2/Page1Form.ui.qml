import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 600
    height: 400
    property alias tv4connectedTo: tv4connectedTo
    property alias tv3connectedTo: tv3connectedTo
    property alias tv2connectedTo: tv2connectedTo
    property alias tv1connectedTo: tv1connectedTo
    property alias connectionAsNum: connectionAsNum
    property alias testilabel: testilabel
    property alias testi: testi
    property alias tv4isChecked: tv4isChecked
    property alias tv3isChecked: tv3isChecked
    property alias tv2isChecked: tv2isChecked
    property alias tv1isChecked: tv1isChecked
    property alias infoLabel: infoLabel
    property alias goToPage2: goToPage2

    header: Label {
        text: qsTr("Home")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        id: testilabel
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }

    Row {
        id: row
        anchors.fill: parent

        Column {
            id: column
            width: 200
            height: row.height

            Button {
                id: goToPage2
                text: qsTr("Add new connection")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Column {
            id: column1
            width: 200
            height: row.height

            Button {
                id: testi
                text: qsTr("Button")
            }

            Label {
                id: connectionAsNum
                text: qsTr("Label")
            }
        }

        Column {
            id: column2
            width: 100
            height: row.height

            Label {
                id: infoLabel
                text: qsTr("info")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            Label {
                id: label
                text: qsTr("TV1 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 20
            }

            Label {
                id: label1
                text: qsTr("TV2 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
            }

            Label {
                id: label2
                text: qsTr("TV3 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 60
            }

            Label {
                id: label3
                text: qsTr("TV4 connected to")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 80
            }
        }

        Column {
            id: column3
            width: 100
            height: row.height

            Label {
                id: tv4isChecked
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: tv3isChecked
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 40
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: tv2isChecked
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 60
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: tv1isChecked
                text: qsTr("Label")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 80
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: tv1connectedTo
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 20
            }

            Label {
                id: tv2connectedTo
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 40
            }

            Label {
                id: tv3connectedTo
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 60
            }

            Label {
                id: tv4connectedTo
                text: qsTr("Disconnected")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 80
            }



        }

    }
}
