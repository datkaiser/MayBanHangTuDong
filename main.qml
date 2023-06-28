import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import MayBanHangTuDong.Lobby 1.0
import MayBanHangTuDong.Login 1.0
import MayBanHangTuDong.Page2 1.0
import MayBanHangTuDong.Logintest 1.0

Window {
    id: root
    visible: true
    width: 316
    height: 190
    title: qsTr("")
    property bool isSignedIn: false
    property bool isSignedInTwo: false

   // StackView {
     //   id: contentFrame
       // initialItem: Qt.resolvedUrl()
        //width: root.width
        //height: root.height
    //}
    Lobby{
        id: myLobby
        onSaveSucess:{
            console.log("onSaveSuccess")
            root.isSignedIn = true
            mat_khau.focus = true
        }
    }
    Login{
        id: myLogin
        onLoginSucess:{
            console.log("onLoginSuccess")
            root.isSignedInTwo = true
            recLobby.visible = false
            scr1.enabled = false
            recPassword.forceActiveFocus()
            // This is available in all editors.
        }
        onLogintestSucess: {
            console.log("onLoginSuccess")
            root.isSignedInTwo = true
            recLobby.visible = false
            scr1.enabled = false
            recPassword.forceActiveFocus()
            mainLoader.source = "TestMenu1.qml"
        }

        onLoginFail:{
            console.log("onLoginFail")
            root.isSignedInTwo = false

        }
    }
    Logintest{
        id: myLogintest
        onLogintestSucess:{

            // This is available in all editors.
        }
        onLogintestFail:{
            console.log("onLoginFail")
            root.isSignedInTwo = false

        }
    }
    Page2{
        id: myPage2
        onSaveSucess2:{
            console.log("sucess")
            root.isSignedIn3 = true
    }
    }

    Rectangle{
        id:recLobby
        visible: !isSignedIn

        Label {
            id:labelLobby
            anchors.centerIn: parent.Center
            anchors.rightMargin: 5
            text: qsTr("MỜI BẠN CHỌN SẢN PHẨM")
            wrapMode: Text.WordWrap
            font.pointSize: 25
            height: 150
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Shortcut{
                id: scr1
                sequence: "8"
                onActivated: myLobby.save("8")
            }
        }
        Label {
            id: label1
            //anchors.centerIn: parent.Center
            //anchors.rightMargin: 100
            height: 300
            text: qsTr("TSEVENDING.COM.VN")
            font.pointSize: 18
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }


    }
    Rectangle{
        id:recPassword
        visible: isSignedIn && !isSignedInTwo
        Label {
            x: 0
            y: 26
            width: 315
            height: 30
            text: qsTr("ENTER PASSWORD")
            font.bold: true
            font.pointSize: 15
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Label {
            x: 0
            y: 140
            width: 315
            height: 20
            text: qsTr("TSE VENDING")
            font.family: "Arial"
            font.pointSize: 15
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Label {
            x: 0
            y: 160
            width: 315
            height: 20
            text: qsTr("MAKE IN VIETNAM")
            font.pointSize: 15
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Rectangle {
            x: 58
            y: 68
            width: 200
            height: 40
            color: "#ffffff"
            border.width: 1

            TextField {
                id: mat_khau
                x: 1
                y: 1
                width: 198
                height: 38
                echoMode: TextInput.Password
                Keys.onReturnPressed: {
                     myLogin.login(mat_khau.text)

                }
                font.pointSize: 14
                horizontalAlignment: Text.AlignHCenter
                opacity: 0.2
            }
            Label{
                            id: statusLable
                            x: 53
                            y: 45
                            text: myLogin.status
                            color: "red"
                        }
        }

    }

    Rectangle{
        id: reC3
        visible: isSignedInTwo
        height: parent.height
        width: parent.width
        Loader {
            id: mainLoader
            focus: true
            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
                bottom: parent.bottom
            }

            source: "menu1.qml"
        }
        //Keys.onRightPressed: {

            //myloader4.source = "page1.qml"
        //}

    }

}
