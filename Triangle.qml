import QtQuick 2.15
import QtQuick.Shapes 1.15

Shape {
    id: triangle
    smooth: true
    property color color: "#FFFFFF"
    property alias border: borderItem
    property bool rounded: false
    property int align: Triangle.Align.Left

    enum Align {
        Left,
        Center,
        Right
    }

    Border {
        id: borderItem
        color: triangle.color
    }

    ShapePath {
        id: triPath
        property real peak: {
            switch(triangle.align){
                case Triangle.Align.Left: return 0
                case Triangle.Align.Center: return triangle.width/2
                case Triangle.Align.Right: return triangle.width
            }
        }

        strokeColor: borderItem.color
        strokeWidth: borderItem.width
        fillColor: triangle.color
        fillRule: ShapePath.WindingFill
        capStyle: ShapePath.RoundCap
        joinStyle: triangle.rounded ? ShapePath.RoundJoin : ShapePath.MiterJoin
        miterLimit: 1000
        startX: peak
        startY: 0

        PathLine { x:0 ; y: triangle.height }
        PathLine { x: triangle.width; y: triangle.height }
        PathLine { x: triPath.peak; y: 0 }
    }
}
