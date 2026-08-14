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
        .package(url: "https://github.com/Scandit/datacapture-spm", exact: "8.6.0-beta.1"),
    ],
    targets: [
		.binaryTarget(name: "ScanditKmpAllBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-all-8.6.0-beta.1-xcframework.zip", checksum: "8919a211ceccec7cd04e4c6253c990cc41d1c290b1716364fb33feae68df84d1"),
		.target(name: "ScanditKmpAllStub", dependencies: ["ScanditKmpAllBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpAllStub"),
		.binaryTarget(name: "ScanditKmpBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-8.6.0-beta.1-xcframework.zip", checksum: "b7e414ea678717d83cd989e2170171600c17a6f10a1877620f74698e5f5a00ad"),
		.target(name: "ScanditKmpBarcodeStub", dependencies: ["ScanditKmpBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeStub"),
		.binaryTarget(name: "ScanditKmpBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-parser-8.6.0-beta.1-xcframework.zip", checksum: "63e2fb1b08c09a09ed720625d2bc6fa061d68817e6ad46b3cf0d8cca22edf9d2"),
		.target(name: "ScanditKmpBarcodeParserStub", dependencies: ["ScanditKmpBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpIdBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-8.6.0-beta.1-xcframework.zip", checksum: "67ea702b1980c81a0bb2863c406cedf2b9d710679bb9416fce7a527c42a561b1"),
		.target(name: "ScanditKmpIdStub", dependencies: ["ScanditKmpIdBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-8.6.0-beta.1-xcframework.zip", checksum: "2932ad8c0b756eeac6246d3a338632f441b6b44544840f4e98beb95240482250"),
		.target(name: "ScanditKmpIdBarcodeStub", dependencies: ["ScanditKmpIdBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-parser-8.6.0-beta.1-xcframework.zip", checksum: "ad6f2e08abf85782b8951dadaa2f9f2f3c2c8fde5b4b77bbd571ade9042a9661"),
		.target(name: "ScanditKmpIdBarcodeParserStub", dependencies: ["ScanditKmpIdBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpLabelBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-8.6.0-beta.1-xcframework.zip", checksum: "c25c5d759b5ca53a5407c2b2d147c480e08a944f1c51ddcb5313ee6345bf5c74"),
		.target(name: "ScanditKmpLabelStub", dependencies: ["ScanditKmpLabelBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelStub"),
		.binaryTarget(name: "ScanditKmpLabelParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-parser-8.6.0-beta.1-xcframework.zip", checksum: "ab0a530ffd8effeff26db5cf89293578ebae2b07b518c5ac00b882a6c71e23bc"),
		.target(name: "ScanditKmpLabelParserStub", dependencies: ["ScanditKmpLabelParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelParserStub"),
    ]
)
