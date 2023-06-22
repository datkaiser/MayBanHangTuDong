import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import MayBanHangTuDong.Lobby 1.0
import MayBanHangTuDong.Login 1.0
import MayBanHangTuDong.Page2 1.0

Window {
    id: root
    visible: true
    width: 316
    height: 190
    title: qsTr("")
    property bool isSignedIn: false
    property bool isSignedInTwo: false
    property bool isSignedIn3: false

    Lobby{
        id: myLobby
        onSaveSucess:{
            console.log("onSaveSuccess")
            root.isSignedIn = true
        }
    }
    Login{
        id: myLogin
        onLoginSucess:{
            console.log("onLoginSuccess")
            root.isSignedInTwo = true
            mat_khau.enabled = false

            // This is available in all editors.
        }
        onLoginFail:{
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
        Shortcut{
            sequence: "p"
            onActivated: myLobby.save("p")
        }
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
        }

    }

   Rectangle{
       id:recMenu1
       anchors.centerIn: parent
       Column{
           id: columnpage3
           visible: isSignedInTwo && !isSignedIn3
           anchors.centerIn: parent
           //Keys.onRightPressed: {
             //  myPage2.save2("right")
           //}
           Label{
                anchors.right: parent.right
               text: "1/2"
           }

           Button{
               id: dt1
               text: "1.DOANH THU"
               leftPadding: -120
               width: 200
               height: 20
               focus: true

           }
           Button{
               text: "2.CAI DAT GIA"
               leftPadding: -120
               width: 200
               height: 20

           }
           Button{
               text: "3.KIEM TRA MOTOR"
               leftPadding: -100

               width: 200
               height: 20
              }
           Button{
               text: "4.NAP/TRA TIEN THOI"
               leftPadding: -90
               width: 200
               height: 20

           }
           Button{
               text: "5.CMA BIEN ROI"
               leftPadding: -110
               width: 200
               height: 20

           }
           Button{
               text: "6.ID MAY"
               leftPadding: -135
               width: 200
               height: 20

           }
           Button{
               text: "7. XOA LOI MOTOR"
               leftPadding: -100
               width: 200
               height: 20

           }
           Button{
               id: pageButton
               text: "chuyển"
               leftPadding: -100
               width: 200
               visible: false
               height: 20
               Shortcut{
                   sequence: "Right"
                   onActivated:pageButton.clicked()
               }
               Connections {
                           target: pageButton
                           onClicked:  myPage2.save2(Shortcut)
                       }
           }
       }

   }
   Rectangle{
       id:recMenu2
       anchors.centerIn: parent
       Column{
           id: pageColum2
           visible: isSignedIn3
           anchors.centerIn: parent
           Label{
                anchors.right: parent.right
               text: "2/2"
           }
           Button{

               text: "1.KIEM TRA MOTOR NHANH"
               leftPadding: -80
               width: 200
               height: 20
               onClicked: {
                   console.log("..")
               }
           }
           Button{
               text: "2.KIEM TRA RFID"
               leftPadding: -120
               width: 200
               height: 20
               onClicked: {
                   console.log("..")
               }
           }
           Button{
               text: "3.CAI DAT MENH GIA TIEN"
               leftPadding: -85

               width: 200
               height: 20
               onClicked: {
                   console.log("..")
               }
           }
           Button{
               text: "4.CAI DAT THOI GIAN"
               leftPadding: -100
               width: 200
               height: 20
               onClicked: {
                   console.log("..")
               }
           }
           Button{
               text: "5.SINGLE VEND"
               leftPadding: -125
               width: 200
               height: 20
               onClicked: {
                   console.log("..")
               }
           }
           Button{
               text: "6.HOT WATER TIME"
               leftPadding: -108
               width: 200
               height: 20
               onClicked: {
                   console.log("..")
               }
           }
           Button{
               text: "7.TU NHAN TIEN"
               leftPadding: -120
               width: 200
               height: 20
               onClicked: {
                   console.log("..")
               }
           }
           Button{
               id: page2Button
               text: "chuyển"
               leftPadding: -100
               width: 200
               visible: false
               height: 20
               Shortcut{
                   sequence: "Left"
                   onActivated:page2Button.clicked()
               }
               Connections {
                           target: page2Button
                           onClicked:  root.isSignedIn3 = false
                       }
           }
       }
   }

}
