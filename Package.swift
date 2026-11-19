// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Scandit Data Capture SDK — Kotlin Multiplatform umbrella frameworks.
//
// Kotlin/Native frameworks are isolated worlds: an app must link exactly ONE
// Kotlin framework, so each product below is a prebuilt umbrella covering one
// supported module combination. Add exactly one ScanditKmp* product to your
// app. The native Scandit frameworks it requires are resolved transitively
// from the datacapture-spm package. Model resources (ScanditIdAamvaBarcodeVerification,
// ScanditIdVoidedDetection, ScanditLabelCaptureText, ...) are loaded at runtime:
// add those products from datacapture-spm alongside as your features require.

import PackageDescription

let package = Package(
    name: "Scandit Data Capture SDK - Kotlin Multiplatform",
    platforms: [.iOS(.v15)],
    products: [
		.library(name: "ScanditKmpAll", targets: ["ScanditKmpAllStub"]),
		.library(name: "ScanditKmpBarcode", targets: ["ScanditKmpBarcodeStub"]),
		.library(name: "ScanditKmpBarcodeParser", targets: ["ScanditKmpBarcodeParserStub"]),
		.library(name: "ScanditKmpId", targets: ["ScanditKmpIdStub"]),
		.library(name: "ScanditKmpIdBarcode", targets: ["ScanditKmpIdBarcodeStub"]),
		.library(name: "ScanditKmpIdBarcodeParser", targets: ["ScanditKmpIdBarcodeParserStub"]),
		.library(name: "ScanditKmpLabel", targets: ["ScanditKmpLabelStub"]),
		.library(name: "ScanditKmpLabelParser", targets: ["ScanditKmpLabelParserStub"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Scandit/datacapture-spm", exact: "8.6.3"),
    ],
    targets: [
		.binaryTarget(name: "ScanditKmpAllBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-all-8.6.3-xcframework.zip", checksum: "d638367bae90a408cfe07f767fe379773340d175e131624b5ea323a25151282a"),
		.target(name: "ScanditKmpAllStub", dependencies: ["ScanditKmpAllBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpAllStub"),
		.binaryTarget(name: "ScanditKmpBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-8.6.3-xcframework.zip", checksum: "bc14bb25371b0611f12951652e91533231aa7ea1a2e3e6afd2cc2a5f594c68ee"),
		.target(name: "ScanditKmpBarcodeStub", dependencies: ["ScanditKmpBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeStub"),
		.binaryTarget(name: "ScanditKmpBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-parser-8.6.3-xcframework.zip", checksum: "ad39a7d1d98ce0f3fd0d20e1bfad8f68232d23ef7ddb90f596de470f3645e5bc"),
		.target(name: "ScanditKmpBarcodeParserStub", dependencies: ["ScanditKmpBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpIdBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-8.6.3-xcframework.zip", checksum: "18dc6ad0b4991f2fced432c83707d1d1b0ff4af3d82e2131d443eaef099ff80d"),
		.target(name: "ScanditKmpIdStub", dependencies: ["ScanditKmpIdBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-8.6.3-xcframework.zip", checksum: "f054a4c4db9f42207053947dae51ff5afde5446235cd7028223597cd2b728993"),
		.target(name: "ScanditKmpIdBarcodeStub", dependencies: ["ScanditKmpIdBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-parser-8.6.3-xcframework.zip", checksum: "d3a89573db64a00d932638c16664ffd09ecea0bb382db9e7db5be5589fbc1e88"),
		.target(name: "ScanditKmpIdBarcodeParserStub", dependencies: ["ScanditKmpIdBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpLabelBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-8.6.3-xcframework.zip", checksum: "51e6c09b916a2a56d1f047d52ae0f4eb678886cef62f90678107fcb5002f661b"),
		.target(name: "ScanditKmpLabelStub", dependencies: ["ScanditKmpLabelBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelStub"),
		.binaryTarget(name: "ScanditKmpLabelParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-parser-8.6.3-xcframework.zip", checksum: "1c047659232822b7a0b895c3eea3b457402b26275224ebeefb0a209db0b5851e"),
		.target(name: "ScanditKmpLabelParserStub", dependencies: ["ScanditKmpLabelParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelParserStub"),
    ]
)
