import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 600
    height: 400
    property alias teacher4: teacher4
    property alias hdmi1_4: hdmi1_4
    property alias hdmi2_4: hdmi2_4
    property alias hdmi3_4: hdmi3_4
    property alias chromecast4: chromecast4
    property alias teacher1: teacher1
    property alias hdmi1_1: hdmi1_1
    property alias hdmi2_1: hdmi2_1
    property alias hdmi3_1: hdmi3_1
    property alias appletv1: appletv1
    property alias chromecast1: chromecast1
    property alias teacher3: teacher3
    property alias hdmi1_3: hdmi1_3
    property alias hdmi2_3: hdmi2_3
    property alias hdmi3_3: hdmi3_3
    property alias appletv3: appletv3
    property alias chromecast3: chromecast3
    property alias hdmi1_2: hdmi1_2
    property alias hdmi2_2: hdmi2_2
    property alias hdmi3_2: hdmi3_2
    property alias appletv2: appletv2
    property alias chromecast2: chromecast2
    property alias teacher2: teacher2
    property alias appletv4: appletv4
    property alias sourceCancel: sourceCancel
    property alias sourceDone: sourceDone
    property alias sourceBox1: sourceBox1

    header: Label {
        height: 50
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
            y: 161
            visible: false
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
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

        FocusScope {
            id: focusScope3
            width: focusScope.width / 4
            height: focusScope.height
        }

        FocusScope {
            id: focusScope4
            width: focusScope.width / 4
            height: focusScope.height
            anchors.leftMargin: focusScope.width / 4 * 3
            anchors.left: parent.left
        }

        RadioButton {
            id: teacher2
            y: 20
            width: 120
            text: qsTr("Teacher's desk 2")
            anchors.leftMargin: focusScope.width * 0.75 / 2 - teacher2.width / 2
            anchors.left: parent.left
            anchors.topMargin: 50
            anchors.top: parent.top

            Image {
                id: image2
                x: 45
                y: 0
                width: 35
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/89468_circle_512x512.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: teacher2icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: chromecast2
            x: 160
            y: 170
            width: 130
            height: 20
            text: qsTr("Chromecast 2")
            anchors.topMargin: 10
            anchors.top: appletv2.bottom
            anchors.horizontalCenter: teacher2.horizontalCenter
        }

        RadioButton {
            id: appletv2
            x: 160
            y: 140
            width: 130
            text: qsTr("Apple TV 2")
            anchors.topMargin: 10
            anchors.top: hdmi3_2.bottom
            anchors.horizontalCenter: teacher2.horizontalCenter
        }

        RadioButton {
            id: hdmi3_2
            x: 185
            y: 110
            width: 70
            text: qsTr("Pole 6")
            anchors.topMargin: 50
            anchors.top: hdmi2_2.bottom
            anchors.horizontalCenter: teacher2.horizontalCenter

            Image {
                id: image13
                x: 9
                y: -19
                width: 60
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi3_2icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: hdmi2_2
            x: 185
            y: 80
            width: 70
            text: qsTr("Pole 5")
            anchors.topMargin: 50
            anchors.top: hdmi1_2.bottom
            anchors.horizontalCenter: teacher2.horizontalCenter

            Image {
                id: image12
                x: 9
                y: -17
                width: 60
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi2_2icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: hdmi1_2
            x: 185
            y: 50
            width: 70
            text: qsTr("Pole 4")
            anchors.topMargin: 50
            anchors.top: teacher2.bottom
            anchors.horizontalCenter: teacher2.horizontalCenter

            Image {
                id: image11
                x: 9
                y: -20
                width: 60
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi1_2icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: chromecast3
            x: 310
            y: 170
            width: 130
            height: 20
            text: qsTr("Chromecast 3")
            anchors.topMargin: 10
            anchors.top: appletv3.bottom
            anchors.horizontalCenter: teacher3.horizontalCenter
        }

        RadioButton {
            id: appletv3
            x: 310
            y: 140
            width: 130
            text: qsTr("Apple TV 3")
            anchors.topMargin: 10
            anchors.top: hdmi3_3.bottom
            anchors.horizontalCenter: teacher3.horizontalCenter
        }

        RadioButton {
            id: hdmi3_3
            x: 335
            y: 110
            width: 70
            text: qsTr("Pole 9")
            anchors.topMargin: 50
            anchors.top: hdmi2_3.bottom
            anchors.horizontalCenter: teacher3.horizontalCenter

            Image {
                id: image16
                x: 10
                y: -19
                width: 60
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi3_3icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: hdmi2_3
            x: 335
            y: 80
            width: 70
            text: qsTr("Pole 8")
            anchors.topMargin: 50
            anchors.top: hdmi1_3.bottom
            anchors.horizontalCenter: teacher3.horizontalCenter

            Image {
                id: image15
                x: 10
                y: -22
                width: 60
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi2_3icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: hdmi1_3
            x: 335
            y: 50
            width: 70
            text: qsTr("Pole 7")
            anchors.topMargin: 50
            anchors.top: teacher3.bottom
            anchors.horizontalCenter: teacher3.horizontalCenter

            Image {
                id: image14
                x: 10
                y: -20
                width: 60
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi1_3icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: teacher3
            x: 310
            y: 20
            width: 120
            text: qsTr("Teacher's desk 3")
            anchors.rightMargin: focusScope.width * 0.75 / 2 - teacher3.width / 2
            anchors.right: parent.right
            anchors.topMargin: 50
            anchors.top: parent.top

            Image {
                id: image9
                x: 30
                y: -55
                width: 40
                height: 40
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/89468_circle_512x512.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: teacher3icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: chromecast1
            x: 10
            y: 170
            width: 130
            height: 20
            text: qsTr("Chromecast 1")
            anchors.topMargin: 10
            anchors.top: appletv1.bottom
            anchors.horizontalCenter: teacher1.horizontalCenter
        }

        RadioButton {
            id: appletv1
            x: 10
            y: 140
            width: 130
            text: qsTr("Apple TV 1")
            anchors.topMargin: 10
            anchors.top: hdmi3_1.bottom
            anchors.horizontalCenter: teacher1.horizontalCenter
        }

        RadioButton {
            id: hdmi3_1
            x: 35
            y: 110
            width: 70
            text: qsTr("Pole 3")
            anchors.topMargin: 50
            anchors.top: hdmi2_1.bottom
            anchors.horizontalCenter: teacher1.horizontalCenter

            Image {
                id: image7
                x: -20
                width: 60
                height: 35
                anchors.topMargin: -image7.height - 5
                anchors.horizontalCenterOffset: -image7.width / 2
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi3_1icon
                    width: parent.width * 2
                    height: parent.height
                }
            }

            Image {
                id: image8
                x: 17
                width: 60
                height: 35
                anchors.topMargin: -image8.height - 5
                anchors.horizontalCenterOffset: image8.width / 2
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        RadioButton {
            id: hdmi2_1
            x: 35
            y: 80
            width: 70
            text: qsTr("Pole 2")
            anchors.topMargin: 50
            anchors.top: hdmi1_1.bottom
            anchors.horizontalCenter: teacher1.horizontalCenter
        }

        RadioButton {
            id: hdmi1_1
            x: 35
            y: 50
            width: 70
            text: qsTr("Pole 1")
            anchors.topMargin: 50
            anchors.top: teacher1.bottom
            anchors.horizontalCenter: teacher1.horizontalCenter
        }

        RadioButton {
            id: teacher1
            y: 20
            width: 120
            text: qsTr("Teacher's desk 1")
            anchors.leftMargin: focusScope.width * 0.25 / 2 - teacher1.width / 2
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 50

            Image {
                id: image1
                x: 7
                y: -55
                width: 35
                height: 35
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/89468_circle_512x512.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: teacher1icon
                    anchors.fill: parent
                }
            }
        }

        RadioButton {
            id: chromecast4
            x: 460
            y: 170
            width: 130
            height: 20
            text: qsTr("Chromecast 4")
            anchors.topMargin: 10
            anchors.top: appletv4.bottom
            anchors.horizontalCenter: teacher4.horizontalCenter
        }

        RadioButton {
            id: appletv4
            x: 460
            y: 140
            width: 130
            text: qsTr("Apple TV 4")
            anchors.topMargin: 10
            anchors.top: hdmi3_4.bottom
            anchors.horizontalCenter: teacher4.horizontalCenter
        }

        RadioButton {
            id: hdmi3_4
            x: 485
            y: 110
            width: 70
            text: qsTr("Pole 12")
            anchors.topMargin: 50
            anchors.top: hdmi2_4.bottom
            anchors.horizontalCenter: teacher4.horizontalCenter

            Image {
                id: image22
                x: -11
                y: -24
                width: 60
                height: 35
                anchors.bottomMargin: teacher4.height + 5
                anchors.horizontalCenterOffset: -image22.width / 2
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi3_4icon
                    width: parent.width * 2
                    height: parent.height
                }
            }

            Image {
                id: image17
                x: 34
                y: -24
                width: 60
                height: 35
                anchors.bottomMargin: teacher4.height + 5
                anchors.horizontalCenterOffset: image17.width / 2
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        RadioButton {
            id: hdmi2_4
            x: 485
            y: 80
            width: 70
            text: qsTr("Pole 11")
            anchors.topMargin: 50
            anchors.top: hdmi1_4.bottom
            anchors.horizontalCenter: teacher4.horizontalCenter

            Image {
                id: image18
                x: 34
                y: -22
                width: 60
                height: 35
                anchors.bottomMargin: teacher4.height + 5
                anchors.horizontalCenterOffset: image18.width / 2
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: image19
                x: -4
                y: -22
                width: 60
                height: 35
                anchors.bottomMargin: teacher4.height + 5
                anchors.horizontalCenterOffset: -image19.width / 2
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi2_4icon
                    width: parent.width * 2
                    height: parent.height
                }
            }
        }

        RadioButton {
            id: hdmi1_4
            x: 485
            y: 50
            width: 70
            text: qsTr("Pole 10")
            anchors.topMargin: 50
            anchors.top: teacher4.bottom
            anchors.horizontalCenter: teacher4.horizontalCenter

            Image {
                id: image20
                x: -4
                y: -22
                width: 60
                height: 35
                anchors.bottomMargin: teacher4.height + 5
                anchors.horizontalCenterOffset: -image20.width / 2
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: hdmi1_4icon
                    width: parent.width * 2
                    height: parent.height
                }
            }

            Image {
                id: image21
                x: 34
                y: -22
                width: 60
                height: 35
                anchors.bottomMargin: teacher4.height + 5
                anchors.horizontalCenterOffset: image21.width / 2
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/ellipsi.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        RadioButton {
            id: teacher4
            x: 460
            y: 20
            width: 120
            text: qsTr("Teacher's desk 4")
            anchors.rightMargin: focusScope.width * 0.25 / 2 - teacher4.width / 2
            anchors.right: parent.right
            anchors.topMargin: 50
            anchors.top: parent.top

            Image {
                id: image10
                x: -412
                y: 0
                width: 40
                height: 40
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 25
                anchors.horizontalCenter: parent.horizontalCenter
                source: "kuvat/89468_circle_512x512.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: teacher4icon
                    anchors.fill: parent
                }
            }
        }

        Image {
            id: image3
            x: 14
            y: 85
            width: 60
            height: 35
            anchors.horizontalCenterOffset: -image3.width / 2
            anchors.horizontalCenter: hdmi1_1.horizontalCenter
            anchors.bottom: hdmi1_1.top
            anchors.bottomMargin: 5
            source: "kuvat/ellipsi.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: hdmi1_1icon
                width: parent.width * 2
                height: parent.height
                anchors.top: parent.top
                anchors.topMargin: 0
            }
        }

        Image {
            id: image4
            x: 52
            y: 85
            width: 60
            height: 35
            anchors.horizontalCenterOffset: image4.width / 2
            anchors.horizontalCenter: hdmi1_1.horizontalCenter
            anchors.bottom: hdmi1_1.top
            anchors.bottomMargin: 5
            source: "kuvat/ellipsi.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image6
            x: 52
            y: 143
            width: 60
            height: 35
            anchors.horizontalCenterOffset: image6.width / 2
            anchors.horizontalCenter: hdmi2_1.horizontalCenter
            anchors.bottom: hdmi2_1.top
            anchors.bottomMargin: 5
            source: "kuvat/ellipsi.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image5
            x: 14
            y: 143
            width: 60
            height: 35
            anchors.horizontalCenterOffset: -image5.width / 2
            anchors.horizontalCenter: hdmi2_1.horizontalCenter
            anchors.bottom: hdmi2_1.top
            anchors.bottomMargin: 5
            source: "kuvat/ellipsi.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: hdmi2_1icon
                width: parent.width * 2
                height: parent.height
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

    Connections {
        target: teacher1
        onClicked: sourceBox1.currentIndex = 1
    }

    Connections {
        target: hdmi1_1
        onClicked: sourceBox1.currentIndex = 2
    }

    Connections {
        target: hdmi2_1
        onClicked: sourceBox1.currentIndex = 3
    }

    Connections {
        target: hdmi3_1
        onClicked: sourceBox1.currentIndex = 4
    }

    Connections {
        target: appletv1
        onClicked: sourceBox1.currentIndex = 5
    }

    Connections {
        target: chromecast1
        onClicked: sourceBox1.currentIndex = 6
    }

    Connections {
        target: teacher2
        onClicked: sourceBox1.currentIndex = 7
    }

    Connections {
        target: hdmi1_2
        onClicked: sourceBox1.currentIndex = 8
    }

    Connections {
        target: hdmi2_2
        onClicked: sourceBox1.currentIndex = 9
    }

    Connections {
        target: hdmi3_2
        onClicked: sourceBox1.currentIndex = 10
    }

    Connections {
        target: appletv2
        onClicked: sourceBox1.currentIndex = 11
    }

    Connections {
        target: chromecast2
        onClicked: sourceBox1.currentIndex = 12
    }

    Connections {
        target: teacher3
        onPressed: sourceBox1.currentIndex = 13
    }

    Connections {
        target: hdmi1_3
        onClicked: sourceBox1.currentIndex = 14
    }

    Connections {
        target: hdmi2_3
        onClicked: sourceBox1.currentIndex = 15
    }

    Connections {
        target: hdmi3_3
        onClicked: sourceBox1.currentIndex = 16
    }

    Connections {
        target: appletv3
        onClicked: sourceBox1.currentIndex = 17
    }

    Connections {
        target: chromecast3
        onClicked: sourceBox1.currentIndex = 18
    }

    Connections {
        target: teacher4
        onClicked: sourceBox1.currentIndex = 19
    }

    Connections {
        target: hdmi1_4
        onClicked: sourceBox1.currentIndex = 20
    }

    Connections {
        target: hdmi2_4
        onClicked: sourceBox1.currentIndex = 21
    }

    Connections {
        target: hdmi3_4
        onClicked: sourceBox1.currentIndex = 22
    }

    Connections {
        target: appletv4
        onClicked: sourceBox1.currentIndex = 23
    }

    Connections {
        target: chromecast4
        onClicked: sourceBox1.currentIndex = 24
    }

    Connections {
        target: teacher1icon
        onClicked: sourceBox1.currentIndex = 1
    }

    Connections {
        target: hdmi1_1icon
        onClicked: sourceBox1.currentIndex = 2
    }

    Connections {
        target: hdmi2_1icon
        onClicked: sourceBox1.currentIndex = 3
    }

    Connections {
        target: hdmi3_1icon
        onClicked: sourceBox1.currentIndex = 4
    }

    Connections {
        target: teacher2icon
        onClicked: sourceBox1.currentIndex = 7
    }

    Connections {
        target: hdmi1_2icon
        onClicked: sourceBox1.currentIndex = 8
    }

    Connections {
        target: hdmi2_2icon
        onClicked: sourceBox1.currentIndex = 9
    }

    Connections {
        target: hdmi3_2icon
        onClicked: sourceBox1.currentIndex = 10
    }

    Connections {
        target: teacher3icon
        onClicked: sourceBox1.currentIndex = 13
    }

    Connections {
        target: hdmi1_3icon
        onClicked: sourceBox1.currentIndex = 14
    }

    Connections {
        target: hdmi2_3icon
        onClicked: sourceBox1.currentIndex = 15
    }

    Connections {
        target: hdmi3_3icon
        onClicked: sourceBox1.currentIndex = 16
    }

    Connections {
        target: teacher4icon
        onClicked: sourceBox1.currentIndex = 19
    }

    Connections {
        target: hdmi1_4icon
        onClicked: sourceBox1.currentIndex = 20
    }

    Connections {
        target: hdmi2_4icon
        onClicked: sourceBox1.currentIndex = 21
    }

    Connections {
        target: hdmi3_4icon
        onClicked: sourceBox1.currentIndex = 22
    }
}




/*##^## Designer {
    D{i:0;height:500;width:1000}D{i:3;anchors_x:240;anchors_y:161}D{i:12;anchors_height:100;anchors_width:100}
D{i:11;anchors_y:0}D{i:10;anchors_x:160}D{i:13;anchors_y:2}D{i:14;anchors_y:4}D{i:17;anchors_height:100;anchors_width:100}
D{i:15;anchors_y:6}D{i:20;anchors_height:100;anchors_width:100}D{i:18;anchors_y:0}
D{i:23;anchors_height:100;anchors_width:100}D{i:21;anchors_y:"-3"}D{i:24;anchors_y:2}
D{i:28;anchors_height:100;anchors_width:100}D{i:26;anchors_y:6}D{i:31;anchors_height:100;anchors_width:100}
D{i:29;anchors_y:0}D{i:34;anchors_height:100;anchors_width:100}D{i:32;anchors_y:"-3"}
D{i:37;anchors_height:100;anchors_width:100}D{i:41;anchors_height:24;anchors_y:"-217"}
D{i:43;anchors_height:24;anchors_y:"-72"}D{i:48;anchors_height:100;anchors_width:100}
D{i:46;anchors_x:10}D{i:49;anchors_y:2}D{i:50;anchors_y:4}D{i:51;anchors_y:6}D{i:55;anchors_y:0}
D{i:59;anchors_y:"-3"}D{i:65;anchors_height:100;anchors_width:100}D{i:64;anchors_height:60;anchors_y:0}
D{i:66;anchors_x:14}D{i:2;anchors_height:100;anchors_width:100}
}
 ##^##*/
