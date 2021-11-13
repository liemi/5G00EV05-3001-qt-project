import QtQuick 2.0

Item {
    property int rpm: 0
    property int speed: 0
    property int fuel: 1
    property int leftsignal: 0
    property int rightsignal: 0
    property bool leftSignalRunning: false
    property bool rightSignalRunning: false

    signal speedReady( int speed);
    signal rpmReady( int rpm);
    signal fuelReady( int fuel);
    signal leftSignalReady( int leftsignal);
    signal rightSignalReady( int rightsignal);

    function generateSpeed() {
        let speed = Math.random() * 250;
        speedReady(speed);
    }

    function generateRpm() {
        let rpm = Math.random() * 250;
        rpmReady(rpm);
    }

    function generateFuel() {
        let max = 5;
        let min = 1;
        let fuel = Math.random() * (max - min + 1) + min;
        fuelReady(fuel);
    }

    Timer {
        id: generateLeftSignal
        repeat: true
        interval: 700
        running:  leftSignalRunning
        onTriggered: {
            let v = 1 - leftsignal;
            leftsignal = v
            leftSignalReady(v)
        }
    }

    Timer {
        id: generateRightSignal
        repeat: true
        interval: 700
        running:  rightSignalRunning
        onTriggered: {
            let v = 1 - rightsignal;
            rightsignal = v
            rightSignalReady(v)
        }
    }
}
