import QtQuick 2.0
import QtQuick.Controls 1.4


MenuBar {
    Menu {
        title : "File"
        MenuItem {
            text : "New board" ; onTriggered : console.log("new board")
        }
        MenuItem {
            text : "Open board" ; onTriggered : console.log("open board")
        }
        MenuItem {
            text : "Delete board" ; onTriggered : console.log("delete board")
        }
        MenuItem {
            text : "Quit" ; onTriggered: Qt.quit()
        }
    }

    Menu {
        title : "Edit"
        MenuItem {
            text : "Add post-it" ; onTriggered : console.log("add post-it")
        }
        MenuItem {
            text : "Add notepad" ; onTriggered : console.log("add notepad")
        }
        MenuItem {
            text : "Add picture" ; onTriggered : console.log("add picture")
        }
    }
}
