import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle{

        width: parent.width
        height: parent.height
    Column{
        anchors.fill: parent
    Label{
        id: labelCDMG
         anchors.left: parent.left
        text: "TEST LAN"
        font.pointSize: 22
        width: parent.width
    }
    Button{
        text: "CLICK ME"
        width: parent.width

    }
    Label{
       text: "Trả kết quả"
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
        onClicked: mainLoader.source = "TestMenu1.qml"
    }
    Shortcut{
        sequence: "backspace"
        onActivated: backButtton2.clicked()
    }

}
}
