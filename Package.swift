// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TreeSitterLua",
    products: [.library(name: "TreeSitterLua", targets: ["TreeSitterLua"])],
    targets: [
        .target(
            name: "TreeSitterLua",
            path: "Sources/TreeSitterLua",
            sources: ["src/parser.c", "src/scanner.c"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("src")]
        )
    ]
)
