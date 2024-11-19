import QtQuick 2.15
import QtQuick.Controls 2.15

Popup {
    id: poproot
    anchors.centerIn: parent
    width: 800
    height: 500
    property alias body: contentLoader.sourceComponent
    property string title: titleText.text
    leftPadding: 5
    topPadding: 5
    rightPadding: 5
    bottomPadding: 5

    contentItem: Rectangle {
        id: popcontent
        color: "darkBlue"
        radius: 10

        MouseArea {
            id: xOut
            height: 40
            width: height
            anchors {
                top: parent.top
                topMargin: 5
                left: parent.left
                leftMargin: 5
            }
            Rectangle {
                id: redBox
                radius: 10
                color: "red"
                anchors.fill: parent
                Text {
                    text: "X"
                    color: "white"
                    anchors.centerIn: parent
                    font.pixelSize: 30
                }
            }
            onPressed: redBox.color = "darkRed"
            onClicked: poproot.close()
        }

        Text {
            id: titleText
            anchors {
                top: parent.top
                bottom: popinner.top
                horizontalCenter: parent.horizontalCenter
            }
            width: parent.width - 60
            text: "Lorum Ipsum"
            color: "white"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 40
        }

        Rectangle {
            id: popinner
            color: "white"
            anchors {
                topMargin: 50
                fill: parent
            }
            clip: true
            Loader {
                id: contentLoader
                anchors {
                    margins: 10
                    fill: parent
                }
            }
        }
    }
    background: Rectangle {
        color: "Black"
        opacity: .05
        radius: 10

    }
}
