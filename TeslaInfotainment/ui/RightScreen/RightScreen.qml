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

	width: parent.width * 2/3
}
