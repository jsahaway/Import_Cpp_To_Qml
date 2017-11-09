import QtQuick 2.0
import QtQuick.Controls 1.4

ListView {
    id : idRoot
    width: 300; height: 300
    model : myModel2

    delegate: Text {
        text: model.modelData.myString
    }

    highlight: Rectangle {
        width: 180; height: 10
        color: "lightsteelblue"; radius: 2
        y: idRoot.currentItem.y
        Behavior on y {
            SpringAnimation { spring: 3; damping: 0.2 }
        }
    }
    highlightFollowsCurrentItem: true
    focus: true
}
