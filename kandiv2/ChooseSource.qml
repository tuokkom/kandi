import QtQuick 2.9
import QtQuick.Controls 2.2

ChooseSourceForm {

    //combo box that keeps track about the source selected
    sourceBox1.model: ["notCheced",
        "Teacher's desk 1", "Pole 1", "Pole 2", "Pole 3", "Apple TV 1", "Chromecast 1",
        "Teacher's desk 2", "Pole 4", "Pole 5", "Pole 6", "Apple TV 2", "Chromecast 2",
        "Teacher's desk 3", "Pole 7", "Pole 8", "Pole 9", "Apple TV 3", "Chromecast 3",
        "Teacher's desk 4", "Pole 10", "Pole 11", "Pole 12", "Apple TV 4", "Chromecast 4"]

    sourceBox1.onCurrentIndexChanged: {
        //make sure that everything stays up to date when user clicks on the icons
        //radio buttons get checked if the corresponding icon is clicked
        var source = sourceBox1.currentIndex
        console.log("New source added: " + source)
        if (source === 1){
            teacher1.checked = true
        } else if (source === 2){
            hdmi1_1.checked = true
        }else if (source === 3){
            hdmi2_1.checked = true
        }else if (source === 4){
            hdmi3_1.checked = true
        }else if (source === 7){
            teacher2.checked = true
        }else if (source === 8){
            hdmi1_2.checked = true
        }else if (source === 9){
            hdmi2_2.checked = true
        }else if (source === 10){
            hdmi3_2.checked = true
        }else if (source === 13){
            teacher3.checked = true
        }else if (source === 14){
            hdmi1_3.checked = true
        }else if (source === 15){
            hdmi2_3.checked = true
        }else if (source === 16){
            hdmi3_3.checked = true
        }else if (source === 19){
            teacher4.checked = true
        }else if (source === 20){
            hdmi1_4.checked = true
        }else if (source === 21){
            hdmi2_4.checked = true
        }else if (source === 22){
            hdmi3_4.checked = true
        }
    }

    //move to next page when done
    sourceDone.onClicked: {
        if (sourceBox1.currentIndex != 0){
            swipeView.incrementCurrentIndex()
        }
    }
    //reset if cancel is pressed
    sourceCancel.onClicked: {
        swipeView.decrementCurrentIndex()
        uncheckCheckboxes()
    }

    //reset source selection page
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
