import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")

    Rectangle{
        color: "black"
        width: parent.width
        height: parent.height
    }

    Image {
        id: bg
        source: "images/Title planet.png"
        x:parent.width/2 - width/2
        y:parent.height/2 - height/2

        /*verticalAlignment: Image.AlignVCenter
        horizontalAlignment: Image.AlignHCenter*/
    }
    Image {
        id: titleImage
        source: "images/Title name.png"
        x:parent.width/2 - width/2
        y:parent.height/2 - height/2

        /*verticalAlignment: Image.AlignVCenter
        horizontalAlignment: Image.AlignHCenter*/
    }

    FontLoader {
        id: localFont;
        source: "fonts/JLSSpaceGothicR.ttf"
    }
    Column{
        anchors.centerIn: parent
        spacing: 10

        MyButton {
            text: "Continue"
            enabled: false
        }
        MyButton {
            text: "New"
        }
        MyButton {
            text: "Load"
            enabled: false
        }
        MyButton {
            text: "Exit"
            onClicked: {
                Qt.quit();
            }
        }
    }
}
