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
        text: "DOC THE RFID"
        font.pointSize: 22
        width: parent.width
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
