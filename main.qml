import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1000
    height: 800
    visible: true
    title: qsTr("Hello World")
    color: "gray"

//    Row {
//        anchors.centerIn: parent
//        spacing: 5

//        Triangle {
//            anchors.centerIn: parent
//            color: "orange"
//            height: 200
//            width: 500
//            rounded : true
//            border {
//                color: "blue"
//                width: 10
//            }
//            align: Triangle.Align.Right
//        }
//        Triangle {
//            anchors.centerIn: parent
//            color: "green"
//            height: 200
//            width: 500
//            rounded : false
//            border {
//                color: "purple"
//                width: 10
//            }
//            align: Triangle.Align.Center
//        }
//        Triangle {
//            anchors.centerIn: parent
//            color: "blue"
//            height: 200
//            width: 500
//            rounded : false
//            border {
//                color: "white"
//                width: 10
//            }
//            align: Triangle.Align.Left
//        }
//    }

    SpecialPopup {
        id: poopup
        Component.onCompleted: poopup.open()
        body: Component {
            Text {
                text: "This is a text.\nThis is only a text of the emergency popup system."
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

//    SquishyBlock {
//        height: 200
//        width: 200
//        anchors.centerIn: parent
//        color: "orange"
//        border {
//            color: "red"
//            width: 10
//        }
//        radius {
//            topLeft: 25
//            topRight: 50
//            bottomRight: 75
//            bottomLeft: 100
//        }
//    }
}
