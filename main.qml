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
             center: QtPositioning.coordinate(31.63, -8.05) // Rabat
             zoomLevel: 14


         }

         Image{
            id:lockIcon
            anchors{
              left:parent.left
              top:parent.top
              margins: 20
            }
            width:parent.width / 10
            fillMode: Image.PreserveAspectFit
            source: "qrc:/../../Downloads/map1.png"
            MouseArea{
              anchors.fill: parent
              onClicked: systemHandler.setCarLocked(!systemHandler.carLocked)
            }
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
               leftMargin: 80
               left: parent.left

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .85
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/carrr.png"
       }
       Image {
           id: music
           anchors{
               leftMargin: 80
               left: carrr.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .85
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/music.png"
       }
       Image {
           id: camera
           anchors{
               leftMargin: 80
               left: music.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .85
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/camera.png"
       }
       Image {
           id: phone
           anchors{
               leftMargin: 80
               left: camera.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .75
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/telephone.png"
       }
       Image {
           id: menu
           anchors{
               leftMargin: 80
               left: phone.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .75
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/add.png"
       }
       Image {
           id:bluetooth
           anchors{
               leftMargin: 80
               left: menu.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .75
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/bluetooth.png"
       }
       Image {
           id: yahoo
           anchors{
               leftMargin: 80
               left: bluetooth.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .75
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/yahoo.png"
       }
       Image {
           id: radio
           anchors{
               leftMargin: 80
               left: yahoo.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .85
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/radio.png"
       }
       Image {
           id: game
           anchors{
               leftMargin: 80
               left: radio.right

               verticalCenter: parent.verticalCenter
           }
           height:parent.height * .85
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/game.png"
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
       color: "ghostwhite"
       Image{
          id:blacktesla
          anchors.centerIn: parent
          width: parent.width
          fillMode: Image.PreserveAspectFit
          source: "qrc:/../../Downloads/blacktesla.png"


       }
       Image {
           id: tesla
           anchors{


               top: parent.top
               topMargin: 20

               left: parent.left
               leftMargin: 80


           }
           height:parent.height * .25
           fillMode: Image.PreserveAspectFit
           source: "qrc:/../../Downloads/Tesla-Emblem.png"
       }



    }


}
