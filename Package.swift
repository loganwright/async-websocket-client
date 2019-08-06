// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "nio-websocket-client",
    products: [
        .library(name: "AsyncWebSocketClient", targets: ["AsyncWebSocketClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.0.0"),
    ],
    targets: [
        .target(name: "AsyncWebSocketClient", dependencies: [
            "NIO", "NIOConcurrencyHelpers", "NIOHTTP1", "NIOSSL", "NIOWebSocket"
        ]),
        .testTarget(name: "AsyncWebSocketClientTests", dependencies: ["AsyncWebSocketClient"]),
    ]
)
