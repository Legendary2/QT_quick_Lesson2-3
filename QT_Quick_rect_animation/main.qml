import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 300;
    height: 300

    Rectangle {
        id: rect
        width: 100
        height: 100
        anchors.centerIn: parent
        color: Qt.rgba(Math.random(),Math.random(),Math.random(),1)
        antialiasing: true
        RotationAnimation on rotation {
        from: 0
        to: 360
        duration: 2000
        easing.type:Easing.InOutBack
        }
        MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: (mouse)=> {
           if (mouse.button === Qt.LeftButton)
           parent.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1)
           }
        }
    }
}
