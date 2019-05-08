import QtQuick 2.9
import QtQuick.Controls 2.2

ChooseSourceForm {

    sourceBox1.model: ["notCheced",
        "Teacher's desk 1", "Pole 1", "Pole 2", "Pole 3", "Apple TV 1", "Chromecast 1",
        "Teacher's desk 2", "Pole 4", "Pole 5", "Pole 6", "Apple TV 2", "Chromecast 2",
        "Teacher's desk 3", "Pole 7", "Pole 8", "Pole 9", "Apple TV 3", "Chromecast 3",
        "Teacher's desk 4", "Pole 10", "Pole 11", "Pole 12", "Apple TV 4", "Chromecast 4"]



    sourceBox1.onCurrentIndexChanged: {
        var source = sourceBox1.currentIndex
        //homePage.infoLabel.text = source
        console.log("New source added: " + source)
    }

    sourceDone.onClicked: {
        if (sourceBox1.currentIndex != 0){
            swipeView.incrementCurrentIndex()
        }
    }
    sourceCancel.onClicked: {
        swipeView.decrementCurrentIndex()
        uncheckCheckboxes()
    }

    function uncheckCheckboxes(){
        teacher1.checked = false
        teacher2.checked = false
        teacher3.checked = false
        teacher4.checked = false

        hdmi1_1.checked = false
        hdmi2_1.checked = false
        hdmi3_1.checked = false

        hdmi1_2.checked = false
        hdmi2_2.checked = false
        hdmi3_2.checked = false

        hdmi1_3.checked = false
        hdmi2_3.checked = false
        hdmi3_3.checked = false

        appletv1.checked = false
        appletv2.checked = false
        appletv3.checked = false
        appletv4.checked = false

        chromecast1.checked = false
        chromecast2.checked = false
        chromecast3.checked = false
        chromecast4.checked = false

        sourceBox1.currentIndex = 0
    }



}
