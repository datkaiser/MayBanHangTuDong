import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle{
        width: parent.width
        height: parent.height
    Column{
    Label{
         anchors.left: parent.left
        text: "1 .KIEM TRA RFID         2/2"
        font.pointSize: 22

        width: parent.width
        Shortcut{
            sequence: "1"
            onActivated: mainLoader.source = "KtRFID.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "2 .CAI DAT MENH GIA TIEN"
        font.pointSize: 22
        Shortcut{
            sequence: "2"
            onActivated: mainLoader.source = "CDMenhGia.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "3 .CAI DAT THOI GIAN"
        font.pointSize: 22
        Shortcut{
            sequence: "3"
            onActivated: mainLoader.source = "CDThoiGian.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "4 .SINGLE VEND"
        font.pointSize: 22
        Shortcut{
            sequence: "4"
            onActivated: mainLoader.source = "SingleVend.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "5 .HOT WATER TIMER"
        font.pointSize: 22
        Shortcut{
            sequence: "5"
            onActivated: mainLoader.source = "WaterTimer.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "6 .TU NHAN TIEN"
        font.pointSize: 22
        Shortcut{
            sequence: "6"
            onActivated: mainLoader.source = "NhanTien.qml"
        }
    }



}


    Button {
        id: previousButton
        visible: false
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "Next"
        onClicked: mainLoader.source = "menu1.qml"
    }
    Shortcut
    {
        sequence: "8"
        onActivated: previousButton.clicked()
    }
}
}
