import QtQuick 2.0

Rectangle {
    property string text: "Button"
    signal clicked
    radius: 20
    width: 150
    height: 50
    color: "#202020"

    Text {
        id: buttonText
        text: parent.text
        font.family: "Advent Pro Medium"
        font.pointSize: 14
        anchors.centerIn: parent
        color: "#D87A00"
    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            parent.color = "grey"
            parent.scale = 0.95
        }
        onReleased: {
            parent.color = "#202020"
            parent.scale = 1.0
            parent.clicked() // lähetettän signaali
        }
    }
}
