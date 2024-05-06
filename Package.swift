// swift-tools-version:5.3

import PackageDescription

let package = Package(
  
  name: "CodeEditor",

  platforms: [
    .macOS(.v10_15), .iOS(.v13)
  ],

  products: [
    .library(name: "CodeEditor", targets: [ "CodeEditor" ])
  ],
  
  dependencies: [
    .package(url: "https://github.com/angiemugo/Highlightr", .branch("master"))
  ],
           
  targets: [
    .target(name: "CodeEditor", dependencies: [ "Highlightr" ])
  ]
)
