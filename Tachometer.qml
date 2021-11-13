import QtQuick 2.0

Image {
    source: "assets/tacho.png"
    width: 500
    height: 500
    Image {
        id: speedoneedle
        source: "assets/needleorange.png"
        width: 20
        height: 180
        transformOrigin: Item.Bottom
        rotation: -137 + rpm * 1.03
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -0.5 * height
        Behavior on rotation {
            PropertyAnimation {
                duration: 1000
            }
        }
    }
}
