import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle{
        width: parent.width
        height: parent.height
        color: "grey"
    Column{
    Label{
         anchors.left: parent.left
        text: "1. DOANH THU             1/2"
        font.pointSize: 22
        width: parent.width
        Shortcut{
            sequence: "1"
            onActivated: mainLoader.source = "DoanhThu.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "2. CAI DAT GIA"
        font.pointSize: 22
        Shortcut{
            sequence: "2"
            onActivated: mainLoader.source = "CaiDatGia.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "3. KIEM TRA MOTOR"
        font.pointSize: 22
        Shortcut{
            sequence: "3"
            onActivated: mainLoader.source = "KTMotor.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "4. NAP/TRA TIEN THOI"
        font.pointSize: 22
        Shortcut{
            sequence: "4"
            onActivated: mainLoader.source = "Deposit.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "5. CAM BIEN ROI"
        font.pointSize: 22
        Shortcut{
            sequence: "5"
            onActivated: mainLoader.source = "CamBien.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "6. ID MAY"
        font.pointSize: 22
        Shortcut{
            sequence: "6"
            onActivated: mainLoader.source = "IDMay.qml"
        }
    }
    Label{
         anchors.left: parent.left
        text: "7. XOA LOI MOTOR"
        font.pointSize: 22
        Shortcut{
            sequence: "7"
            onActivated: mainLoader.source = "XoaLoiMotor.qml"
        }
    }


}
   Button {
        id: nextButton
        visible: false
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "Next"
        onClicked: mainLoader.source = "menu2.qml"
    }
Shortcut{
    sequence: "0"
    onActivated: nextButton.clicked()
}
}
}


