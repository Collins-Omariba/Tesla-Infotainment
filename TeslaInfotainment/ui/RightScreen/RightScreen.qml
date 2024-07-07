import QtQuick 2.3
import QtPositioning
import QtLocation


Rectangle {
	id: rightScreen

    anchors {
        top: parent.top
		right: parent.right
		bottom: bottomBar.top
	}

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(-1.28, 36.81) // Nairobi
        zoomLevel: 14
    }

    Image {
		id: lockIcon
		source: (systemHandler.carLocked ? "../assets/secured-lock.png" : "../assets/secured-unlock.png")
		width: parent.width / 40
		anchors {
			top: parent.top
			left: parent.left
			margins: 20
		}
		fillMode: Image.PreserveAspectFit

		MouseArea {
			anchors.fill: parent
			//onClicked: {
				//systemHandler.setCarLocked = !systemHandler.carLocked
				//lockIcon.source = (systemHandler.carLocked ? "../assets/secured-lock.png" : "../assets/secured-unlock.png")
			//}
			onClicked: {
				systemHandler.setCarLocked(!systemHandler.carLocked)
			}
		}
	}

	width: parent.width * 2/3
}
