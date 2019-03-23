import QtQuick 2.9
import QtQuick.Controls 2.2

ChooseSourceForm {

    sourceBox1.model: ['HDMI 1', 'HDMI 2', 'HDMI 3', 'HDMI 4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24']
    sourceBox1.onCurrentIndexChanged: {
        var source = sourceBox1.currentIndex +1
        homePage.infoLabel.text = source
        console.log("New source added: " + source)
    }
    sourceDone.onClicked: {
        swipeView.incrementCurrentIndex()
    }
    sourceCancel.onClicked: {
        swipeView.decrementCurrentIndex()
    }




}
