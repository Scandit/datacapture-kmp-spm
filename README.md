# Scandit Data Capture SDK — Kotlin Multiplatform (iOS)

Prebuilt Kotlin umbrella frameworks for using the
[Scandit KMP modules](https://docs.scandit.com) in an iOS app, with the native
Scandit frameworks resolved transitively from
[datacapture-spm](https://github.com/Scandit/datacapture-spm) (pinned to
`8.6.0`).

## Which integration path?

- **Swift-first iOS app** (you do not compile Kotlin yourself): use THIS
  package — one dependency, native frameworks resolve transitively.
- **Kotlin Multiplatform / Compose app** (your own `shared` module compiles
  against the Scandit KMP Maven artifacts): do NOT add this package. Your
  shared module is already a Kotlin/Native framework, and two Kotlin
  frameworks in one app cannot share types. Instead add the native
  [datacapture-spm](https://github.com/Scandit/datacapture-spm) package to
  your iOS app, pinned to the exact native version matching your Maven
  version (`8.6.0` for this release).

## Usage

1. Xcode → File → Add Package Dependencies → this repository, exact version `8.6.0`.
2. Add **exactly one** `ScanditKmp*` product to your app target. Kotlin/Native
   frameworks are isolated worlds — two Kotlin frameworks in one app cannot
   share types, so pick the variant covering every Scandit KMP module you use.

| Product | Kotlin modules (+ core) | Native frameworks pulled |
|---|---|---|
| `ScanditKmpAll` | barcode, id, label, parser | ScanditCaptureCore, ScanditBarcodeCapture, ScanditIdCapture, ScanditLabelCapture, ScanditParser |
| `ScanditKmpBarcode` | barcode | ScanditCaptureCore, ScanditBarcodeCapture |
| `ScanditKmpBarcodeParser` | barcode, parser | ScanditCaptureCore, ScanditBarcodeCapture, ScanditParser |
| `ScanditKmpId` | id | ScanditCaptureCore, ScanditIdCapture |
| `ScanditKmpIdBarcode` | id, barcode | ScanditCaptureCore, ScanditIdCapture, ScanditBarcodeCapture |
| `ScanditKmpIdBarcodeParser` | id, barcode, parser | ScanditCaptureCore, ScanditIdCapture, ScanditBarcodeCapture, ScanditParser |
| `ScanditKmpLabel` | barcode, label | ScanditCaptureCore, ScanditBarcodeCapture, ScanditLabelCapture |
| `ScanditKmpLabelParser` | barcode, label, parser | ScanditCaptureCore, ScanditBarcodeCapture, ScanditLabelCapture, ScanditParser |

## Model resources (runtime, opt-in)

Some features load model resources at runtime. Add these products from the
`datacapture-spm` package next to your `ScanditKmp*` product as needed:

- `ScanditIdAamvaBarcodeVerification` — AAMVA barcode verification (id)
- `ScanditIdEuropeDrivingLicense` — European driving licenses (id)
- `ScanditIdVoidedDetection` — voided document detection (id)
- `ScanditLabelCaptureText` — Smart Label Capture text models (label)
- `ScanditPriceLabel` — price label validation models (label)

## Documentation

https://docs.scandit.com/data-capture-sdk/kmp/index.html

## Support

support@scandit.com
