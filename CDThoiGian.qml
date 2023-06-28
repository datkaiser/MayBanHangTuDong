import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle{ width: parent.width
        height: parent.height
    Column{
        anchors.fill: parent
    Label{
        id: labelGia
         anchors.left: parent.left
        text: "CAI DAT NGAY GIO"
        font.pointSize: 22
        width: parent.width
    }
    Text {
        font.pointSize: 22
        anchors.centerIn: parent.Center
         text: new Date().toLocaleTimeString(" hh:mm ") +("  ") + new Date().toLocaleDateString(" dd-MM-yyyy")
     }
  }
    Row{
        id:rowOne
        x: 0
        y: 105
        anchors.margins: 200
        TextInput {
            focus: true
            font.pointSize: 22
            text: "00:00"
        }
        TextInput {
            id:ngay
            focus: true
            font.pointSize: 22
            text: " "
        }
        TextInput {
            focus: true
            font.pointSize: 22
            text: "/"
        }
        TextInput {
            id:thang
            focus: true
            font.pointSize: 22
            text: " "
        }
        TextInput {
            focus: true
            font.pointSize: 22
            text: "/"
        }
        TextInput {
            id: nam
            focus: true
            font.pointSize: 22
            text: "20"
        }
    }



    Button {
        id: backButtton2
        visible: false
        anchors {
            bottom: parent.bottom
            left: parent.left
            margins: 40
        }
        text: "Back"
        onClicked: mainLoader.source = "menu2.qml"
    }
    Shortcut{
        sequence: "backspace"
        onActivated: backButtton2.clicked()
    }
}}
