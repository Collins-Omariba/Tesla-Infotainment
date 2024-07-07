import QtQuick 2.3

Rectangle {
    id: bottomBar
    anchors {
        left: parent.left
		right: parent.right
		bottom: parent.bottom
    }
    height: parent.height / 12
    color: "black"

    Image{
		id: carSettingsIcon
		source: "../assets/car-icon.png"
		anchors {
			left: parent.left
			leftMargin: 30
			verticalCenter: parent.verticalCenter
		}

		height: parent.height * 0.85
		fillMode: Image.PreserveAspectFit
	}


}
