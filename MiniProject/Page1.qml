import QtQuick 2.15
import QtQuick.Controls 2.12

Item {
    id:itm
    property bool value1: false
    property bool value2: false
    property bool value3: false
    property alias a: txt1field.text
    property alias b: txtfield.text
    property alias c: txt3field.text
    signal buttonClick()
    signal buttonClicked()
    Rectangle{
        id:rectangle
        width:500
        height: width
        color:"beige"
        anchors.centerIn:parent
        clip: true
        radius: 30
        Column {
            spacing: 20
            anchors.centerIn: parent
            Row{

                spacing: 10
                Rectangle{
                    width: txt1.implicitWidth +20
                    height: txt1.implicitHeight +20
                    color: "beige"
                    Text{
                        id:txt1
                        anchors.centerIn: parent
                        text:"Name : "
                        font.bold: value1
                        font.pointSize: 15

                    }
                }

                TextField{
                    id:txt1field
                    width: 180
                    placeholderText: qsTr("Enter name")
                    font.pointSize: 25
                    validator: RegularExpressionValidator { regularExpression: /[a-zA-Z ]{1,20}/ }
                    onTextEdited: {
                        value1=true
                    }
                    onEditingFinished: {
                        value1=false
                    }
                }
            }
            Row{

                spacing: 10

                Rectangle{
                    width: txt3.implicitWidth +20
                    height: txt3.implicitHeight +20
                    color: "beige"
                    Text{
                        id:txt3
                        anchors.centerIn: parent
                        text:"Age :    "
                        font.bold: value2
                        font.pointSize: 15
                    }
                }

                TextField{
                    id:txtfield
                    width: 150
                    placeholderText: qsTr("Enter Age")
                    font.pointSize: 25
                    validator: IntValidator{
                        bottom: 1;top: 12

                    }
                    onTextEdited: {
                        value2=true
                    }

                    onEditingFinished: {
//                        if(txtfield.text < 19){ txt.text="Enter the valid age";}
//                        else {txt.text=" ";}
                        value2=false
                    }
                }
            }
            Row{

                spacing: 10

                Rectangle{
                    width: txt5.implicitWidth +20
                    height: txt5.implicitHeight +20
                    color: "beige"
                    Text{
                        id:txt5
                        anchors.centerIn: parent
                        text:"Email :  "
                        font.bold: value3
                        font.pointSize: 15
                    }
                }
                TextField{
                    id:txt3field
                    width: 180
                    placeholderText: qsTr("Enter Email")
                    font.pointSize: 25
                    validator: RegularExpressionValidator{
                        regularExpression:/[a-zA-Z]{1,}[1-9]{1,}@gmail[.]{1}com/
                    }
                    onTextEdited: {
                        value3=true
                    }
                    onEditingFinished: {
                        value3=false
                    }
                }
            }

//            Rectangle{
//                id:rect
//                x:50;y:220
//                Text{
//                    id:txt
//                    text:" "
//                    font.bold: true
//                    font.pointSize: 20
//                }
//            }

        }
        Rectangle{
            id:rect1
            anchors.bottom: parent.bottom
            width: rect1txt.implicitWidth+20
            height: rect1txt.implicitHeight+20
            color:"beige"
            radius:20
            Text{
                id:rect1txt
                text:"     BACK"
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
                text:"LOGIN  "
                font.bold: true
                font.pointSize: 20
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    itm.buttonClicked()
                }
            }
        }
    }

}
