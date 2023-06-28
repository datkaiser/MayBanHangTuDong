import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    id: item1
    Rectangle{ width: parent.width
        height: parent.height
    Column{
    Label{
        id: labelGia
         anchors.left: parent.left
        text: "NAP/TRA TIEN THOI"
        font.pointSize: 22
        width: parent.width
    }

        Label{
            text: "BRVP00RTK0F000VN901 "
            font.pointSize: 22
        }
        Label{
            id:cot
            anchors.rightMargin: -100
            text: "MENH GIA THOI : 10000"
            font.pointSize: 22
        }
        Label{
            text: "SO TO GIAY TRONG MAY : 0"
            font.pointSize: 22
        }

    Label{

        id: labelSave
        text: "XA TIEN THOI: YES"
        font.pointSize: 22
        width: parent.width
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
