import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Window {
    id:wid
    width: 600
    height: width
    visible: true
    title: qsTr("Web Page")

    Image {
        id: img
        width: parent.width;height:parent.height
        source: "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg"


        Rectangle{
            id:rec
            width:wid.width/2
            height: wid.width/6

            Image {
                id: img1
                anchors.right: rec.right
                width: wid.width/6
                height: wid.width/6
                source: "data:image/png;base64,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"
            }
            Text{
                id:txt
                width: rec.width - img1.width
                text:"Digital Shark Technology"
                font.bold: true
                //                anchors.left:txt.left

                font.pointSize: 20
                wrapMode: Text.Wrap
            }
        }

        Rectangle{
            id:rect1
            anchors.centerIn: parent
            width:text1.implicitWidth+50;height: text1.implicitHeight+50
            color: "beige"
            border.color:"black"
            border.width: 5
            Text{
                id:text1
                anchors.centerIn: parent
                text:"LOGIN"
                font.pointSize: 15
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    img.visible=false
                    page1.visible=true
                }
            }
        }


    }

    Page1{
        id:page1
        visible:false
        anchors.centerIn: parent
        onButtonClick: {
            page1.visible=false
            img.visible=true
        }
        onButtonClicked: {
            if(a === "") { page2.visible=false;}
            else {page1.visible=false;page2.visible=true;}

        }
    }
    Page2{
        id:page2
        t1:page1.a
        t2:page1.b
        t3:page1.c
        onButtonClick: {
            page2.visible=false
            page1.visible=true
        }
        onButton: {
            page2.visible=false
            page4.visible=true
        }
    }
    Page4{
        id:page4
        name: page1.a
    }
}
