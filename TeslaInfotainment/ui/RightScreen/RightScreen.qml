import QtQuick 2.3

Rectangle {
	id: rightScreen

    anchors {
        top: parent.top
		right: parent.right
		bottom: bottomBar.top
	}
	color: "gray"
	width: parent.width * 2/3
}
