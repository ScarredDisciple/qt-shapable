import QtQuick 2.15

Item {
    id: squishyBlock
    property color color: "#FFFFFF"
    property alias border: borderItem
    property alias radius: radiusItem

    Border {
        id: borderItem
    }

    Radius {
        id: radiusItem
    }

    Rectangle {
        id: topLeftQuad
        anchors {
            top: parent.top
            left: parent.left
            right: parent.horizontalCenter
            bottom: parent.verticalCenter
        }
        clip: true
        color: "transparent"

        Rectangle {
            id: topLeftCurve
            anchors {
                top: parent.top
                left: parent.left
            }
            color: squishyBlock.color
            border {
                color: borderItem.color
                width: borderItem.width
            }
            height: squishyBlock.height
            width: squishyBlock.width
            radius: radiusItem.topLeft
        }
    }

    Rectangle {
        id: topRightQuad
        anchors {
            top: parent.top
            left: parent.horizontalCenter
            right: parent.right
            bottom: parent.verticalCenter
        }
        clip: true
        color: "transparent"

        Rectangle {
            id: topRightCurve
            anchors {
                top: parent.top
                right: parent.right
            }
            color: squishyBlock.color
            border {
                color: borderItem.color
                width: borderItem.width
            }
            height: squishyBlock.height
            width: squishyBlock.width
            radius: radiusItem.topRight
        }
    }

    Rectangle {
        id: bottomRightQuad
        anchors {
            top: parent.verticalCenter
            left: parent.horizontalCenter
            right: parent.right
            bottom: parent.bottom
        }
        clip: true
        color: "transparent"

        Rectangle {
            id: bottomRightCurve
            anchors {
                right: parent.right
                bottom: parent.bottom
            }
            color: squishyBlock.color
            border {
                color: borderItem.color
                width: borderItem.width
            }
            height: squishyBlock.height
            width: squishyBlock.width
            radius: radiusItem.bottomRight
        }
    }

    Rectangle {
        id: bottomLeftQuad
        anchors {
            top: parent.verticalCenter
            left: parent.left
            right: parent.horizontalCenter
            bottom: parent.bottom
        }
        clip: true
        color: "transparent"

        Rectangle {
            id: bottomLeftCurve
            anchors {
                left: parent.left
                bottom: parent.bottom
            }
            color: squishyBlock.color
            border {
                color: borderItem.color
                width: borderItem.width
            }
            height: squishyBlock.height
            width: squishyBlock.width
            radius: radiusItem.bottomLeft
        }
    }
}
