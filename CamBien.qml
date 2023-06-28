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
        id: labelGia
         anchors.left: parent.left
        text: "CAM BIEN ROI (SENSOR)"
        font.pointSize: 22
        width: parent.width
    }

        Label{
            text: "SENSOR: DANG KICH HOAT "
            font.pointSize: 22
        }
        Label{
            id:cot
            anchors.rightMargin: -100
            text: "TRANG THAI SENSOR"
            font.pointSize: 22
        }
        Label{
            text: "SENSOR DANG KET NOI"
            font.pointSize: 22
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
        onClicked: mainLoader.source = "StackviewPage.qml"
    }
    Shortcut{
        sequence: "backspace"
        onActivated: backButtton2.clicked()
    }
}
}
