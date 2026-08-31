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
        .package(url: "https://github.com/Scandit/datacapture-spm", exact: "8.6.0"),
    ],
    targets: [
		.binaryTarget(name: "ScanditKmpAllBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-all-8.6.0-xcframework.zip", checksum: "100f4dd22cbeeebdccb3c65312b4ade575f8f156dda3a2bdfa14d49d134317d0"),
		.target(name: "ScanditKmpAllStub", dependencies: ["ScanditKmpAllBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpAllStub"),
		.binaryTarget(name: "ScanditKmpBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-8.6.0-xcframework.zip", checksum: "e5d26dc34c9213656adad7e0b6d24d0d33a05f5f307d84518a89a1cd1039bb2f"),
		.target(name: "ScanditKmpBarcodeStub", dependencies: ["ScanditKmpBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeStub"),
		.binaryTarget(name: "ScanditKmpBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-barcode-parser-8.6.0-xcframework.zip", checksum: "21d86be3ae30daa1f84bf12d04bb47754855a1883462e647e02980cf314447bc"),
		.target(name: "ScanditKmpBarcodeParserStub", dependencies: ["ScanditKmpBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpIdBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-8.6.0-xcframework.zip", checksum: "79ff22cae88746af86ad4fbfd6e2f907e1e22f7bc439da263e7628b98d306948"),
		.target(name: "ScanditKmpIdStub", dependencies: ["ScanditKmpIdBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-8.6.0-xcframework.zip", checksum: "f717db63e6dea232b3d106c1b18c40b9c2ca882f2f536dd37787bcdacd6daf6a"),
		.target(name: "ScanditKmpIdBarcodeStub", dependencies: ["ScanditKmpIdBarcodeBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeStub"),
		.binaryTarget(name: "ScanditKmpIdBarcodeParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-id-barcode-parser-8.6.0-xcframework.zip", checksum: "be860e5fa5f3a30360173b87100add372a87fc9a03c0fb26a2742f4e9685dda7"),
		.target(name: "ScanditKmpIdBarcodeParserStub", dependencies: ["ScanditKmpIdBarcodeParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditIdCapture", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpIdBarcodeParserStub"),
		.binaryTarget(name: "ScanditKmpLabelBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-8.6.0-xcframework.zip", checksum: "150dc1616a1aba12a12df501efb570f1243f312ae221c5510148fe3290a53a11"),
		.target(name: "ScanditKmpLabelStub", dependencies: ["ScanditKmpLabelBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelStub"),
		.binaryTarget(name: "ScanditKmpLabelParserBinary", url: "https://ssl.scandit.com/sdk/download/scandit-datacapture-kmp-label-parser-8.6.0-xcframework.zip", checksum: "5b49f60d61bd45424e898d1f92481b6b9333898fc00150463f5c6d77a017aeeb"),
		.target(name: "ScanditKmpLabelParserStub", dependencies: ["ScanditKmpLabelParserBinary", .product(name: "ScanditCaptureCore", package: "datacapture-spm"), .product(name: "ScanditBarcodeCapture", package: "datacapture-spm"), .product(name: "ScanditLabelCapture", package: "datacapture-spm"), .product(name: "ScanditParser", package: "datacapture-spm")], path: "Sources/ScanditKmpLabelParserStub"),
    ]
)
