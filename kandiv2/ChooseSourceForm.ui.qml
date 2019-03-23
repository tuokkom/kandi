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
        text: qsTr("Choose source location")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Row {
        id: row
        x: 0
        y: 0
        anchors.fill: parent

        Column {
            id: column2
            width: 200
            height: 400

            Label {
                id: label
                text: qsTr("Label")
            }

            ComboBox {
                id: sourceBox1
                anchors.top: parent.top
                anchors.topMargin: 20
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column {
            id: column
            width: 200
            height: 400

            Label {
                id: label1
                text: qsTr("Label")
            }
        }

        Column {
            id: column1
            width: 200
            height: 400

            Label {
                id: label2
                text: qsTr("Label")
            }

        }

    }

    Button {
        id: sourceDone
        text: qsTr("Ok")
        anchors.horizontalCenterOffset: -80
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
    }

    Button {
        id: sourceCancel
        text: qsTr("Cancel")
        anchors.horizontalCenterOffset: 80
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
    }



}
