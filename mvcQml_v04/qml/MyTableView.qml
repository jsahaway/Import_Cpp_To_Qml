import QtQuick 2.0
import QtQuick.Controls 1.4


Rectangle {
    TableView { width : 200
          TableViewColumn {
              role: "title"
              title: "Title"
              width: 100
          }
          TableViewColumn {
              role: "author"
              title: "Author"
              width: 200
          }
          model: myModel

          itemDelegate : Rectangle {
              width : 100
              height : 40
              border.color : "cyan"
              border.width: 1
              Text{
                  text :  modelData.myList[styleData.column]
              }
          }
      }

}
