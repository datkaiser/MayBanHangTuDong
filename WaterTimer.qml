import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle{
        width: parent.width
        height: parent.height
        color: "grey"
    Column{
        anchors.fill: parent
    Label{
        id: labelGia
         anchors.left: parent.left
        text: "SET HOT WATER TIMER"
        font.pointSize: 22
        width: parent.width
    }
    Row{
        id: rowOne
        Label{
            text: "TIMER :"
            font.pointSize: 22
        }
        TextInput {
            focus: true
            id: gia
            font.pointSize: 22
            text: "0"
        }
    }
    Row{
        id: rowTwo
        Label{
            text: "SET >"
            font.pointSize: 22
        }
        TextInput {
            focus: true
            font.pointSize: 22
            text: "0"
        }
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
}
}
