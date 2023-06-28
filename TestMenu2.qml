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
        text: "1. NHAN TIEN            2/2"
        font.pointSize: 22
        width: parent.width
        Shortcut{
            sequence: "1"
            onActivated: mainLoader.source = ""
        }
    }
    Label{
         anchors.left: parent.left
        text: "2. RƠI"
        font.pointSize: 22
        Shortcut{
            sequence: "2"
            onActivated: mainLoader.source = ""
        }
    }
    Label{
         anchors.left: parent.left
        text: "3. CONG TAC CUA"
        font.pointSize: 22
        Shortcut{
            sequence: "3"
            onActivated: mainLoader.source = ""
        }
    }
    Label{
         anchors.left: parent.left
        text: "4. LED DAY   "
        font.pointSize: 22
        Shortcut{
            sequence: "4"
            onActivated: mainLoader.source = ""
        }
    }
    Label{
         anchors.left: parent.left
        text: "5. MAY LANH"
        font.pointSize: 22
        Shortcut{
            sequence: "5"
            onActivated: mainLoader.source = ""
        }
    }
    Label{
         anchors.left: parent.left
        text: "6. MOTOR"
        font.pointSize: 22
        Shortcut{
            sequence: "6"
            onActivated: mainLoader.source = ""
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
        onClicked: mainLoader.source = "TestMenu1.qml"
    }
Shortcut{
    sequence: "0"
    onActivated: nextButton.clicked()
}
}
}


