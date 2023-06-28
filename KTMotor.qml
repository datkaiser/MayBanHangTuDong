import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle{ width: parent.width
        height: parent.height
    Column{
    Label{
         anchors.left: parent.left
        text: "TEST MOTOR"
        font.pointSize: 22

        width: parent.width
    }
    Row{
        Label{
            text: "COL 001 "
            font.pointSize: 22
        }
        Label{
            text: "| COL 002 "
            font.pointSize: 22
        }
    }

}
    Button {
        id: backButtton
        visible: false
        anchors {
            bottom: parent.bottom
            left: parent.left
            margins: 40
        }
        text: "Back"
        onClicked: mainLoader.source = "StackviewPage.qml"
    }
    Shortcut{
        sequence: "backspace"
        onActivated: backButtton.clicked()
    }
}
}
