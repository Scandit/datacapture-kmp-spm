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
        .package(url: "https://github.com/Scandit/datacapture-spm", exact: "8.7.0"),
    ],
    targets: [
		.binaryTarget(name: "ScanditKmpAllBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-all-8.7.0-xcframework.zip", checksum: "05d51c48682ee8e00f6cd72b1e40eeb482e638e925b5a5589e2520dca3740f4a"),
		.target(name: "ScanditKmpAllStub", dependencies: ["ScanditKmpAllBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpAllStub"),
		.binaryTarget(name: "ScanditKmpBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-8.7.0-xcframework.zip", checksum: "c4ab92203590ec213c135f8bc5b50cd7c30623f1718cdc94e7de46857cd63539"),
		.target(name: "ScanditKmpBarcodeStub", dependencies: ["ScanditKmpBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeStub"),
		.binaryTarget(name: "ScanditKmpBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-parser-8.7.0-xcframework.zip", checksum: "e9551a6c64ed22818da406d8bd0fc2ef7f3adf3467697ce642012f63a4a3c92f"),
		.target(name: "ScanditKmpBarcodeParserStub", dependencies: ["ScanditKmpBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpIdBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-8.7.0-xcframework.zip", checksum: "cd93275b44a9569f806c86abfd62f041df80207e51df283f6972d96f9e738a06"),
		.target(name: "ScanditKmpIdStub", dependencies: ["ScanditKmpIdBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-8.7.0-xcframework.zip", checksum: "f568be09c28339eea8e37be8cad2697882ecca2ed6d0445e20a4241dcd308877"),
		.target(name: "ScanditKmpIdBarcodeStub", dependencies: ["ScanditKmpIdBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-parser-8.7.0-xcframework.zip", checksum: "86659595d0616274f11aed7a8519861109888bd03f07303d1b5a3e017919ee1a"),
		.target(name: "ScanditKmpIdBarcodeParserStub", dependencies: ["ScanditKmpIdBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpLabelBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-8.7.0-xcframework.zip", checksum: "d2969c352a37039f70b6d13eb3a242da4fee722ec3d901d2f3c50fde01dd75df"),
		.target(name: "ScanditKmpLabelStub", dependencies: ["ScanditKmpLabelBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelStub"),
		.binaryTarget(name: "ScanditKmpLabelParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-parser-8.7.0-xcframework.zip", checksum: "82cf9be9770f206605d6b162d87602e48605764619c315dd73e16b36a1122826"),
		.target(name: "ScanditKmpLabelParserStub", dependencies: ["ScanditKmpLabelParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelParserStub"),
    ]
)
