import QtQuick 2.3

Rectangle {
	id: leftScreen

    anchors {
        top: parent.top
		right: RightScreen.left
		bottom: bottomBar.top
		left: parent.left
	}
	color: "darkslategrey"
	width: parent.width * 1/3
}
