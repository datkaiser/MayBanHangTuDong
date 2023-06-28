import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    id: item1
    Rectangle{
        id:recCaidat

        width: parent.width
        height: parent.height
        color: "grey"
    Column{
    Label{
        id: labelGia
        anchors.left: parent.left
        text: "CAI DAT GIA"
        font.pointSize: 22
        width: parent.width
    }
    Row{
        id:rowOne
        anchors.top: labelGia.bottom
        Label{
            text: "COT "
            font.pointSize: 22
        }
        TextInput {
            focus: true
            id: nameXXX
            font.pointSize: 22
            text: "001"
        }
        Label{
            id:cot
            anchors.rightMargin: -100
            text: " - COT "
            font.pointSize: 22
        }
        TextInput {
            focus: true
            id: nameYYY
            font.pointSize: 22
            text: "002"
        }
    }
    Row{
        id: rowTwo
        anchors.top: rowOne.bottom
        Label{
            text: "Gia > "
            font.pointSize: 22
        }
        TextInput {
            focus: true
            id: gia
            font.pointSize: 22
            text: "10000"
        }
    }
}
    Label{
        id: labelSave
        x: 0
        y: 140
        text: "SAVE CONFIG DONE"
        font.pointSize: 22
        width: parent.width
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
        id: caiGia
        sequence: "backspace"
        onActivated: backButtton.clicked()
    }
    }
}
