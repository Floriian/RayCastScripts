#!/usr/bin/swift
import Foundation

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title Work: End
// @raycast.mode compact

// Optional parameters:
// @raycast.icon 👷

// Documentation:
// @raycast.description Close apps when work ends.
// @raycast.author florian_lovasi
// @raycast.authorURL https://raycast.com/florian_lovasi

func quitApp(_ appName: String) {
    let task = Process()
    task.launchPath = "/usr/bin/env"
    task.arguments = ["osascript", "-e", "quit app \"\(appName)\""]
    task.launch()
    task.waitUntilExit()
}

func endWork() {
    quitApp("Microsoft Teams (work or school)")
    quitApp("TunnelBlick")
    quitApp("WebStorm")
    quitApp("Warp")
    quitApp("Chrome")
}

endWork()
print("Work ended.")
