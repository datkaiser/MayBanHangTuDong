import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
Item {
    Rectangle{ width: parent.width
        height: parent.height
        color: "grey"
    Column{
        Row{
        Label{

            text: "TODAY SALES: 0  "
            font.pointSize: 18
        }
        Label{

            text: "TODAY MONEY: 0"
            font.pointSize: 18
        }
        }
        Label{
             anchors.left: parent.left
            text: "11:27 03/10 | TSE12197708"
            font.pointSize: 22

            width: parent.width
        }
        Row{
        Label{
            text: "MONTH SALES: 0  "
            font.pointSize: 18
        }
        Label{
            text: "MONTH MONEY: 0"
            font.pointSize: 18
        }
        }
    Row{
    Label{
        text: "TOTAL SALES:9"
        font.pointSize: 18
    }

    Label{
        text: "SALES MONEY: 90,000"
        font.pointSize: 18
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
