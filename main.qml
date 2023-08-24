import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtLocation 5.12
import QtPositioning 5.12

Window {
    id: window
    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla Map")




    Rectangle {
       id:rightScreen
       anchors{
           top:parent.top
           bottom:parent.bottom
           right:parent.right
       }
       Plugin {
             id: mapPlugin
             name: "osm" // "osm", "", ...

         }

         Map {
             anchors.fill: parent
             plugin: mapPlugin
             center: QtPositioning.coordinate(33.96, -6.92) // Rabat
             zoomLevel: 14
         }
       width:parent.width * 2/3

    }
    Rectangle{
       id:bottomBar
       anchors{
          left:parent.left
          right:parent.right
          bottom:parent.bottom
       }
       color: "black"
       height:parent.height /12
       Image {
           id: carrr
           anchors{
               leftMargin: 30
               left: parent.left

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .85
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/carrr.png"
       }

    }




    Rectangle{
       id:leftScreen
       anchors{
          top:parent.top
          left:parent.left
          bottom:bottomBar.top
          right:rightScreen.left
       }
       color: "azure"
       Image{
          id:blacktesla
          anchors.centerIn: parent
          width: parent.width
          fillMode: Image.PreserveAspectFit
          source: "qrc:/../../Downloads/blacktesla.png"


       }

    }


}
