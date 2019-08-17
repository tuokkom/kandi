import QtQuick 2.9
import QtQuick.Controls 2.2

ChooseTargetForm {

    //User can also select TV's via clicking the icons
    tv1icon.onClicked: {
        if (tv1.checked){
            tv1.checked = false
        } else {
            tv1.checked = true
        }
    }
    tv2icon.onClicked: {
        if (tv2.checked){
            tv2.checked = false
        } else {
            tv2.checked = true
        }
    }
    tv3icon.onClicked: {
        if (tv3.checked){
            tv3.checked = false
        } else {
            tv3.checked = true
        }
    }
    tv4icon.onClicked: {
        if (tv4.checked){
            tv4.checked = false
        } else {
            tv4.checked = true
        }
    }

    targetDone.onClicked: {
        if (tv1.checked || tv2.checked || tv3.checked || tv4.checked){

            //find out which TVs are chosen as target
            var connectionStatus

            if (tv1.checked){
                connectionStatus = qsTr("1")
                homePage.tv1connectedTo.text = chooseSource.sourceBox1.currentText
            } else {
                connectionStatus = qsTr("0")
            }
            if (tv2.checked){
                connectionStatus = connectionStatus + qsTr("1")
                homePage.tv2connectedTo.text = chooseSource.sourceBox1.currentText
            } else {
                connectionStatus = connectionStatus + qsTr("0")
            }
            if (tv3.checked){
                connectionStatus = connectionStatus + qsTr("1")
                homePage.tv3connectedTo.text = chooseSource.sourceBox1.currentText
            } else {
                connectionStatus = connectionStatus + qsTr("0")
            }
            if (tv4.checked){
                connectionStatus = connectionStatus + qsTr("1")
                homePage.tv4connectedTo.text = chooseSource.sourceBox1.currentText
            } else {
                connectionStatus = connectionStatus + qsTr("0")
            }

            //find out the source and make the connection
            connectionStatus = connectionStatus + (chooseSource.sourceBox1.currentIndex)
            server.connection = connectionStatus
            console.log("New connection added: TV1: " + connectionStatus[0] + " TV2: " + connectionStatus[1] + " TV3: " + connectionStatus[2] + " TV4: " + connectionStatus[3])

            //reset everything after the connection is made
            tv1.checked = false
            tv2.checked = false
            tv3.checked = false
            tv4.checked = false

            chooseSource.uncheckCheckboxes()

            swipeView.decrementCurrentIndex()
            swipeView.decrementCurrentIndex()

        }

    }
    targetCancel.onClicked: {
        //reset everything if cancel is chosen
        tv1.checked = false
        tv2.checked = false
        tv3.checked = false
        tv4.checked = false

        chooseSource.uncheckCheckboxes()

        swipeView.decrementCurrentIndex()
        swipeView.decrementCurrentIndex()

    }
}
