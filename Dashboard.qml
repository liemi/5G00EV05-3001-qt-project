import QtQuick 2.0

Rectangle {
    property int speed: 0
    property int rpm: 0
    property int fuel: 1
    property int leftsignal: 0
    property int rightsignal: 0


    color: "black"

    LeftTurnSignal {
        x: 20
        y: 400
    }

    RightTurnSignal {
        x: 1030
        y: 400
    }

    Fuel {
        x: 549
        y: 200
    }

    Speedmeter {
        id: speedmeter
        x: 60
    }

    Tachometer {
        id: tachometer
        x: 580
    }
}
