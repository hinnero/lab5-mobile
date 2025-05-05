// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Task7ConsoleApp",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "Task7ConsoleApp", targets: ["Task7ConsoleApp"]),
    ],
    dependencies: [
        // нет внешних зависимостей
    ],
    targets: [
        .executableTarget(
            name: "Task7ConsoleApp",
            dependencies: []
        ),
        .testTarget(
            name: "Task7Tests",
            dependencies: ["Task7ConsoleApp"]
        ),
    ]
)
