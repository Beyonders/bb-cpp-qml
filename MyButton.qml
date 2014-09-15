import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1
import QtGraphicalEffects 1.0

Button {
    id: buttonItem
    width: 260
    height: 40

    signal buttonClick()

    MouseArea
    {
        onClicked: buttonClick()
        hoverEnabled: true
    }

    Column {
        anchors.centerIn: parent
        Item {
            id: backgroundItem
        }
        Item {
            id: foregroundItem
        }
    }


    style: ButtonStyle {
        id: styleItem
        label:     Text {
            id: textItem
            text: buttonItem.text

            font {
                family: localFont.name;
                pointSize: 14;
                capitalization: Font.Capitalize
            }
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

        }
        background: Rectangle {
            Image {
                id: bg
                source:
                {
                    if (buttonItem.pressed || buttonItem.hovered)
                    {
                        "images/MainButtonFG.png"
                    }
                    else
                    {
                        "images/MainButtonBG.png"
                    }
                }
//                source: buttonItem.hovered ? "images/MainButtonFG.png" : "images/MainButtonBG.png"
            }
            color: 'transparent'
        }
        SequentialAnimation
        {
            id: flash
            running: false
            NumberAnimation { }
        }

    }

}
