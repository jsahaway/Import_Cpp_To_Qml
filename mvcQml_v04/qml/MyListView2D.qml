import QtQuick 2.0
import QtQuick.Controls 1.4

// ListView that display data top to bottom (Y coordonates)
ListView {
    id:idDataBaseY
    width: 300; height: 300
    orientation: ListView.Vertical
    interactive: false

    model : myModel

    // ListView that display data left to right (X coordonates)
    delegate: ListView {
        id:idDataBaseX
        width: 300; height: 20
        orientation: ListView.Horizontal
        interactive: false

        model : modelData.myList

        // Properties to get index X & Y from the 2 TableView in the MouseArea
        property int currentIndexLigne : index

        delegate: Rectangle{

            property bool isCurrentLigne : (currentIndexLigne == idDataBaseY.currentIndex) && (index == currentIndex )
            color : isCurrentLigne ? "lightblue" : "transparent"
            width  : idText.contentWidth
            height: idText.contentHeight


            Text {
                id:idText
                text: modelData

                MouseArea {
                    anchors.fill : parent
                    onClicked: {
                        idDataBaseY.currentIndex = currentIndexLigne
                        currentIndex = index
                        console.log( "currentIndex Ligne = " + idDataBaseY.currentIndex );
                        console.log( "currentIndex Colonne = " + currentIndex );
                    }
                }
            }
        }
    }
        Component.onCompleted: currentIndex = -1
}


























