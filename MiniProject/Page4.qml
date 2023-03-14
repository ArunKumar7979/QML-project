import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Item{

    property alias name: nametext.text
    width: 640
    height: 480
    visible: false
    MouseArea{
        anchors.fill:parent
        onClicked: {
            if(movingrec.x ===10  && movingrec.y === 10  ){groupingAnimation.start();}
            else if(movingrec.x === wid.width-movingrec.width){groupAnimation.start();}
            else if(movingrec.x ===10 && movingrec.y === wid.height-movingrec.height) {gAnimation.start();}
            else {grAnimation.start();}
        }
    }
    Rectangle{

        property alias name: nametext.text
        x:10
        y:10
        id:movingrec
        width: nametext.implicitWidth+20
        height: nametext.implicitHeight+20

        color: "beige"
        border.color: "black"
        Text{
            id:nametext
            anchors.centerIn: parent
            text:"Arun"
            font.bold: true
            font.pointSize: 20
        }

        ParallelAnimation{
            id:groupingAnimation

            NumberAnimation {
                target: movingrec
                property: "x"
                to :wid.width-movingrec.width
                from: 10
                duration: 5000

            }
            NumberAnimation {
                target: movingrec
                property: "y"
                to :wid.height-movingrec.height
                from:10
                duration: 5000

            }
        }
        SequentialAnimation{
            id:groupAnimation
            NumberAnimation {
                target: movingrec
                property: "x"
                to :10
                from:wid.width-movingrec.width
                duration: 2000

            }
        }
        ParallelAnimation{
            id:gAnimation

            NumberAnimation {
                target: movingrec
                property: "y"
                to :10
                from: wid.height-movingrec.height
                duration: 5000

            }
            NumberAnimation {
                target: movingrec
                property: "x"
                to :wid.width-movingrec.width
                from:10
                duration: 5000

            }
        }

        SequentialAnimation{
            id:grAnimation
            NumberAnimation {
                target: movingrec
                property: "x"
                to :10
                from:wid.width-movingrec.width
                duration: 2000

            }
        }

    }

}
