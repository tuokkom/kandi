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
        text: qsTr("Choose target location")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Row {
        id: row
        anchors.fill: parent

        Column {
            id: column
            width: row.width/4
            height: row.height

            Label {
                id: label
                text: qsTr("Label")
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv1
                text: qsTr("TV 1")
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column {
            id: column1
            width: row.width/4
            height: row.height

            Label {
                id: label1
                text: qsTr("Label")
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv2
                text: qsTr("TV 2")
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: targetDone
                text: qsTr("Ok")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column {
            id: column2
            width: row.width/4
            height: row.height

            Label {
                id: label2
                text: qsTr("Label")
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv3
                text: qsTr("TV 3")
                anchors.horizontalCenterOffset: 0
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                id: targetCancel
                text: qsTr("Cancel")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
            }
        }

        Column {
            id: column3
            width: row.width/4
            height: row.height

            Label {
                id: label3
                text: qsTr("Label")
                anchors.horizontalCenter: parent.horizontalCenter
            }

            CheckBox {
                id: tv4
                text: qsTr("TV 4")
                anchors.top: parent.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }



    }
}
