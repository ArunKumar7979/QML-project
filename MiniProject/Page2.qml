import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Item {
    id:itm
    property alias t1: txt2.text
    property alias t2: txt4.text
    property alias t3: txt6.text
    width: 640
    height: 480
    visible: false
    anchors.centerIn: parent
    // title: qsTr("Text Component Demo")
    property int value: 0
    //color:"gray"
    signal buttonClick()
    signal button()

    Rectangle{
        id:rectangle
        width:500
        height: width
        color:"beige"
        anchors.centerIn:parent
        clip: true
        radius: 30

        Row{
            x:10;y:40
            spacing: 10
            Rectangle{
                width: txt1.implicitWidth +20
                height: txt1.implicitHeight +20
                color: "beige"
                Text{
                    id:txt1
                    anchors.centerIn: parent
                    text:"Name : "
                    font.bold: true
                    font.pointSize: 15

                }
            }
            Rectangle{
                id:movabletext
                width: txt2.implicitWidth +20
                height: txt2.implicitHeight +20
                color: "beige"
                Text{
                    id:txt2
                    anchors.centerIn: parent
                    text:" "
                    font.pointSize: 15

                }
            }


        }
        Row{
            x:10;y:100
            spacing: 10
            Rectangle{
                width: txt3.implicitWidth +20
                height: txt3.implicitHeight +20
                color: "beige"
                Text{
                    id:txt3
                    anchors.centerIn: parent
                    text:"Age :  "
                    font.bold: true
                    font.pointSize: 15
                }
            }

            Rectangle{
                width: txt4.implicitWidth +20
                height: txt4.implicitHeight +20
                color: "beige"
                Text{
                    id:txt4
                    anchors.centerIn: parent
                    text:" "
                    font.pointSize: 15

                }
            }
        }
        Row{
            x:10;y:160
            spacing: 10
            Rectangle{
                width: txt5.implicitWidth +20
                height: txt5.implicitHeight +20
                color: "beige"
                Text{
                    id:txt5
                    anchors.centerIn: parent
                    text:"Email :  "
                    font.bold: true
                    font.pointSize: 15
                }
            }

            Rectangle{
                width: txt6.implicitWidth +20
                height: txt6.implicitHeight +20
                color: "beige"
                Text{
                    id:txt6
                    anchors.centerIn: parent
                    text:" "
                    font.pointSize: 15

                }
            }
        }



        Rectangle{
            id:rect1
            anchors.bottom: parent.bottom
            width:rect1txt.implicitWidth+20
            height: rect1txt.implicitHeight+20
            color:"beige"
            radius:20
            Text{
                id:rect1txt
                text:"    Back"
                font.bold: true
                font.pointSize: 20
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    itm.buttonClick()
                }
            }
        }
        Rectangle{
            id:rect2
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            width: rect2txt.implicitWidth+20
            height: rect2txt.implicitHeight+20
            color:"beige"
            radius:20
            Text{
                id:rect2txt
                text:"OK  "
                font.bold: true
                font.pointSize: 20
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    itm.button()
                }
            }
        }
    }
}
