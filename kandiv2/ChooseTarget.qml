import QtQuick 2.9
import QtQuick.Controls 2.2

ChooseTargetForm {

    tv4.onCheckedChanged: {
        homePage.tv4isChecked.text = tv4.checked
    }
    tv3.onCheckedChanged: {
        homePage.tv3isChecked.text = tv3.checked
    }
    tv2.onCheckedChanged: {
        homePage.tv2isChecked.text = tv2.checked
    }
    tv1.onCheckedChanged: {
        homePage.tv1isChecked.text = tv1.checked
    }
    targetDone.onClicked: {
        var connectionStatus

        if (tv1.checked){
            connectionStatus = qsTr("1")
            homePage.tv1connectedTo.text = chooseSource.sourceBox1.currentIndex + 1
        } else {
            connectionStatus = qsTr("0")
        }
        if (tv2.checked){
            connectionStatus = connectionStatus + qsTr("1")
            homePage.tv2connectedTo.text = chooseSource.sourceBox1.currentIndex + 1
        } else {
            connectionStatus = connectionStatus + qsTr("0")
        }
        if (tv3.checked){
            connectionStatus = connectionStatus + qsTr("1")
            homePage.tv3connectedTo.text = chooseSource.sourceBox1.currentIndex + 1
        } else {
            connectionStatus = connectionStatus + qsTr("0")
        }
        if (tv4.checked){
            connectionStatus = connectionStatus + qsTr("1")
            homePage.tv4connectedTo.text = chooseSource.sourceBox1.currentIndex + 1
        } else {
            connectionStatus = connectionStatus + qsTr("0")
        }

        connectionStatus = connectionStatus + (chooseSource.sourceBox1.currentIndex + 1)
        server.connection = connectionStatus
        console.log("New connection added: TV1: " + connectionStatus[0] + " TV2: " + connectionStatus[1] + " TV3: " + connectionStatus[2] + " TV4: " + connectionStatus[3])

        //test
        homePage.testi.text = server.connection
        homePage.connectionAsNum.text = connectionStatus


        tv1.checked = false
        tv2.checked = false
        tv3.checked = false
        tv4.checked = false

        swipeView.decrementCurrentIndex()
        swipeView.decrementCurrentIndex()



    }
    targetCancel.onClicked: {

        tv1.checked = false
        tv2.checked = false
        tv3.checked = false
        tv4.checked = false

        swipeView.decrementCurrentIndex()
        swipeView.decrementCurrentIndex()

    }
}
