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
        .package(url: "https://github.com/Scandit/datacapture-spm", exact: "8.7.0-beta.1"),
    ],
    targets: [
		.binaryTarget(name: "ScanditKmpAllBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-all-8.7.0-beta.1-xcframework.zip", checksum: "5fcb962857a951fdd69b639881d7242ed96dc728d8bd50511c1e029005e89f5d"),
		.target(name: "ScanditKmpAllStub", dependencies: ["ScanditKmpAllBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpAllStub"),
		.binaryTarget(name: "ScanditKmpBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-8.7.0-beta.1-xcframework.zip", checksum: "3214e9d4b14720c7a4c4e48ced06835dcd35572d0c726a08e69083ec66172d0c"),
		.target(name: "ScanditKmpBarcodeStub", dependencies: ["ScanditKmpBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeStub"),
		.binaryTarget(name: "ScanditKmpBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-parser-8.7.0-beta.1-xcframework.zip", checksum: "b529bc622910ba9074a968f234672e77dd197efece2a76aa1bc2454e3c34760b"),
		.target(name: "ScanditKmpBarcodeParserStub", dependencies: ["ScanditKmpBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpIdBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-8.7.0-beta.1-xcframework.zip", checksum: "a30f9cdd4804fc6faf0180f7aa22a0406eb94c7bed3ce45d99e8ad6c0981bd0e"),
		.target(name: "ScanditKmpIdStub", dependencies: ["ScanditKmpIdBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-8.7.0-beta.1-xcframework.zip", checksum: "2e0cb9f2ffcf3e097c9ceaa871ea581123b66e6abaf5d92296e2f24fe470e113"),
		.target(name: "ScanditKmpIdBarcodeStub", dependencies: ["ScanditKmpIdBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-parser-8.7.0-beta.1-xcframework.zip", checksum: "1f0202fa0309b0180fd893c828e6658e6fb5665b50a326fba2dc923f33534747"),
		.target(name: "ScanditKmpIdBarcodeParserStub", dependencies: ["ScanditKmpIdBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpLabelBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-8.7.0-beta.1-xcframework.zip", checksum: "6595718de5b09e273cbd15cac9a00650d7e17c4ed9fc53cc47196cd14d17aad9"),
		.target(name: "ScanditKmpLabelStub", dependencies: ["ScanditKmpLabelBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelStub"),
		.binaryTarget(name: "ScanditKmpLabelParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-parser-8.7.0-beta.1-xcframework.zip", checksum: "b2973575575490af220582dd0fc8e6b3b10c57dd891c15a301445f4a7047e2b6"),
		.target(name: "ScanditKmpLabelParserStub", dependencies: ["ScanditKmpLabelParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelParserStub"),
    ]
)
