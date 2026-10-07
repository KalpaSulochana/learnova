/*
import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerPage extends StatefulWidget {
  final String pdfUrl;
  final String title;

  const PdfViewerPage({
    super.key,
    required this.pdfUrl,
    required this.title,
  });

  @override
  State<PdfViewerPage> createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  // 1. Controller for memory management and features (zoom, pagination)
  final PdfViewerController _pdfViewerController = PdfViewerController();
  
  // 2. State variables for UI feedback
  bool _isLoading = true;
  bool _hasError = false;
  String _errorMessage = '';

  @override
  void dispose() {
    // 3. Prevent memory leaks by disposing the controller when the user leaves the page
    _pdfViewerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A slightly darker background makes the white PDF pages pop
      backgroundColor: Colors.grey.shade200, 
      appBar: AppBar(
        backgroundColor: primaryBlue,
        elevation: 1,
        actions: [
          // Professional touch: Add zoom controls to the app bar
          IconButton(
            icon: const Icon(Icons.zoom_in),
            onPressed: () {
              _pdfViewerController.zoomLevel = _pdfViewerController.zoomLevel + 0.25;
            },
          ),
          IconButton(
            icon: const Icon(Icons.zoom_out),
            onPressed: () {
              _pdfViewerController.zoomLevel = _pdfViewerController.zoomLevel - 0.25;
            },
          ),
        ],
      ),
      // 4. Use a Stack to layer the PDF, Loading Spinner, and Error Messages safely
      body: Stack(
        children: [
          SfPdfViewer.network(
            widget.pdfUrl,
            controller: _pdfViewerController,
            // 5. Performance tweak: disables the clunky native scrollbar overlay
            canShowScrollHead: false, 
            pageSpacing: 6, // Adds breathing room between pages
            
            // 6. Handle successful load
            onDocumentLoaded: (PdfDocumentLoadedDetails details) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                });
              }
            },
            
            // 7. Handle network or parsing failures gracefully
            onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                  _hasError = true;
                  _errorMessage = details.error;
                });
              }
            },
          ),

          // Render a centered loading spinner while the network stream starts
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),

          // Render a clean error state instead of just a tiny snackbar
          if (_hasError)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, color: Colors.red, size: 64),
                    const SizedBox(height: 16),
                    const Text(
                      "Failed to load document",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _errorMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

*/

import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerPage extends StatefulWidget{
  final String pdfUrl;
  final String title;

  const PdfViewerPage({super.key, required this.pdfUrl, required this.title});

  @override
  State createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State <PdfViewerPage>{
  final PdfViewerController _pdfViewerController = PdfViewerController();

  bool _isLoading = true;
  bool _hasError = false;
  String _errorMessage = '';

  int _currentPage = 0;
  int _pageCount = 0;

  // State variable to control the visibility of the UI (AppBar & Counter)
  bool _showUi = true;

  @override
  void dispose() {
    _pdfViewerController.dispose();
    super.dispose();
  }

  void _toggleUiVisibility() {
    setState(() {
      _showUi = !_showUi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        // 1. Wrap the Scaffold body in a GestureDetector to catch screen taps
        body: GestureDetector(
          onTap: _toggleUiVisibility,
          child: Stack(
            children: [
              // The PDF Viewer is the base layer
              SfPdfViewer.network(
                widget.pdfUrl,
                controller: _pdfViewerController,
                canShowScrollHead: false,
                pageSpacing: 6,
      
                onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                  if (mounted) {
                    setState(() {
                      _isLoading = false;
                      _currentPage = 1;
                      _pageCount = _pdfViewerController.pageCount;
                    });
                  }
                },
      
                onPageChanged: (PdfPageChangedDetails details) {
                  if (mounted) {
                    setState(() {
                      _currentPage = details.newPageNumber;
                    });
                  }
                },
      
                onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
                  if (mounted) {
                    setState(() {
                      _isLoading = false;
                      _hasError = true;
                      _errorMessage = details.error;
                    });
                  }
                },
              ),
      
              if (_isLoading) const Center(child: CircularProgressIndicator()),
      
              if (_hasError)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      "Failed to load: $_errorMessage",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                ),
      
              // 2. Animated AppBar at the top
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                  opacity: _showUi ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  // IgnorePointer prevents invisible buttons from being clicked
                  child: IgnorePointer(
                    ignoring: !_showUi,
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      
                      title: Text(widget.title, style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
                      elevation: 1,
                      // Make the AppBar semi-transparent like the reference
                      backgroundColor: primaryBlue,
                    ),
                  ),
                ),
              ),
      
              // 3. Animated Floating Page Counter at the bottom right
              if (!_isLoading && !_hasError && _pageCount > 0)
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: AnimatedOpacity(
                    opacity: _showUi ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: textDark,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "page $_currentPage of $_pageCount",
                        style: TextStyle(
                          color: cardWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
