// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "lab5-task6",
    products: [
        .executable(name: "lab5-task6", targets: ["lab5-task6"]),
    ],
    dependencies: [
        .package(path: "./Modules/DictionaryModule")
    ],
    targets: [
        .executableTarget(
            name: "lab5-task6",
            dependencies: ["DictionaryModule"]
        ),
        .testTarget(
            name: "Task6Tests",
            dependencies: ["lab5-task6"]
        )
    ]
)
