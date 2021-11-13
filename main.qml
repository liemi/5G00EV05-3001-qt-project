import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 1125
    height: 512
    visible: true
    title: qsTr("Nopeusmittari")

    EngineData {
        id: speedEngine
    }

    Dashboard {
        id: dashboard
        speed: 100
        rpm: 100
        anchors.fill: parent
    }

    Button {
        text: "Test speed"
        x: 20
        y: 20
        onClicked: {
            speedEngine.generateSpeed()
        }
    }

    Button {
        text: "Test rpm"
        x: 20
        y: 90
        onClicked: {
            speedEngine.generateRpm()
        }
    }

    Button {
        text: "Test fuel"
        x: 20
        y: 160
        onClicked: {
            speedEngine.generateFuel()
        }
    }

    Button {
        text: "Test left signal"
        x: 20
        y: 230
        onClicked: {
            speedEngine.leftSignalRunning = !speedEngine.leftSignalRunning
            dashboard.leftsignal = 0
        }
    }

    Button {
        text: "Test right signal"
        x: 20
        y: 300
        onClicked: {
            speedEngine.rightSignalRunning = !speedEngine.rightSignalRunning
            dashboard.rightsignal = 0
        }
    }

    Connections {
        target: speedEngine
        onSpeedReady: {
            dashboard.speed = speed
        }
        onRpmReady: {
            dashboard.rpm = rpm
        }
        onFuelReady: {
            dashboard.fuel = fuel
        }
        onLeftSignalReady: {
            dashboard.leftsignal = leftsignal
        }
        onRightSignalReady: {
            dashboard.rightsignal = rightsignal
        }
    }

}
