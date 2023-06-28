import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    anchors.fill: parent
    StackView {
        id: stackview
        anchors.fill: parent
        initialItem: "menu1.qml"
    }
}
