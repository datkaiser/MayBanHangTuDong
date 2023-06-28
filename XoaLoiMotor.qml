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
        text: "XOA LOI MOTOR"
        font.pointSize: 22
        width: parent.width
    }
    Row{
        Label{
            text: "XAC NHAN: "
            font.pointSize: 22
        }
        TextInput {
            focus: true
            id: removeYN
            font.pointSize: 22
            text: "YES"
        }
    }}


    Button {
        id: backButtton2
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
        onActivated: backButtton2.clicked()
    }
}
}
