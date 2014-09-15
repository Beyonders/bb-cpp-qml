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

    /*Item {
        id: buttonText
        Text {
            id: backgroundText
            text: buttonItem.text

            font {
                family: localFont.name;
                pointSize: 14;
                capitalization: Font.Capitalize
            }

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

            color: "#000000"
        }
        Text {
            id: foregroundText
            text: buttonItem.text

            font {
                family: localFont.name;
                pointSize: 14;
                capitalization: Font.Capitalize
            }

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter

            color: "#FFD700"
        }
    }*/

    style: ButtonStyle {
        id: styleItem
        label: Item {
            id: buttonText
            Text {
                id: backgroundText
                text: buttonItem.text
                x: parent.width/2 - width/2 + 2
                y: parent.height/2 - height/2 + 2

                font {
                    family: localFont.name;
                    pointSize: 24;
                    capitalization: Font.Capitalize
                    bold: true
                }

                color: "#000000"
            }
            Text {
                id: foregroundText
                text: buttonItem.text
                x: parent.width/2 - width/2
                y: parent.height/2 - height/2

                font {
                    family: localFont.name;
                    pointSize: 24;
                    capitalization: Font.Capitalize
                    bold: true
                }

                color: "#FFD700"
            }
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
    }

}
