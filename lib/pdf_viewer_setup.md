# PDF Viewer integration

## 1. Add dependencies

From the Flutter project root:

```bash
flutter pub add syncfusion_flutter_pdfviewer share_plus
```

The code was written against the current APIs for `syncfusion_flutter_pdfviewer` 35.1.x and `share_plus` 13.3.x. These package versions require a recent Flutter/Dart toolchain. If your app is pinned to an older Flutter SDK, use compatible package versions and adjust the `share_plus` call if needed.

## 2. Add the viewer file

Copy `pdf_viewer_page.dart` into your project, for example:

```text
lib/screens/pdf_viewer_page.dart
```

The widget keeps the same constructor as your example:

```dart
PdfViewerPage(
  pdfUrl: document.pdfUrl,
  title: document.title,
)
```

For navigation:

```dart
Navigator.of(context).push(
  MaterialPageRoute<void>(
    builder: (_) => PdfViewerPage(
      pdfUrl: document.pdfUrl,
      title: document.title,
    ),
  ),
);
```

Import the widget file where you use it:

```dart
import 'screens/pdf_viewer_page.dart';
```

## Included interactions

- Search text in the PDF and move between matches.
- Jump directly to a page, or navigate to the previous/next page.
- Zoom from 100% to 400%, with a reset option.
- Share the PDF URL through the system share sheet or copy it to the clipboard.
- Optional page scrubber and immersive reading mode.
- Loading, load-failure, and retry states.
- Material 3 theming with light/dark-aware surfaces.

## Notes

- This version shares the document **link**, because the widget accepts a network URL. Sharing the actual PDF file would require downloading the response and passing the downloaded bytes/file to the platform share sheet.
- Ensure the URL is reachable by the device and serves a valid PDF. For Android, confirm that the app has internet access configured in its manifest.
- Syncfusion Flutter PDF Viewer is a commercial package with a free community license option subject to Syncfusion's eligibility terms. Review the package license before shipping.
