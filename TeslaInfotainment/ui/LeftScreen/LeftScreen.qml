import QtQuick 2.3


Rectangle {
	id: leftScreen

    anchors {
        top: parent.top
		right: RightScreen.left
		bottom: bottomBar.top
		left: parent.left
	}
	

	Image{
		id: carRender
		source: "../assets/tesla-cybertruck.jpg"
		anchors.centerIn: parent
		fillMode: Image.PreserveAspectFit
		width: parent.width * 0.75

	}



	width: parent.width * 1/3
}
