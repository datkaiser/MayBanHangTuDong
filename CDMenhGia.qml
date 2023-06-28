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
        id: labelCDMG
         anchors.left: parent.left
        text: "SET BILLS MIN/MAX"
        font.pointSize: 22
        width: parent.width
    }
    Row{
        id:rowOne
        anchors.top: labelCDMG.bottom
        Label{
            text: "MIN :10,000!"
            font.pointSize: 22
        }
        Label{
            text: "MAX :20,000"
            font.pointSize: 22
        }
    }
    Row{
        anchors.top: rowOne.bottom
        id: rowTwo
    Label{
        text: "Set MIN > "
        font.pointSize: 22
    }
    TextInput {
        focus: true
        id: nameMin
        font.pointSize: 22
        text: "0"
    }
    }
    Row{
        anchors.top: rowTwo.bottom

    Label{

        text: "Set MAX : "
        font.pointSize: 22
    }
    TextInput {
        focus: true
        id: nameMax
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
