import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/models/resource_item.dart';
import 'package:learnova/pdf_viewer_page.dart';
import 'package:url_launcher/url_launcher.dart';

/// Reusable resource card.
///
/// Use [CommonCard.fromResource] for data-driven resource catalogs. The classic
/// constructor remains available so existing Learnova screens keep working.
class CommonCard extends StatelessWidget {
  final ResourceItem? resource;
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final Widget? toPage;
  final String? url;

  const CommonCard({
    super.key,
    required IconData icon,
    required String title,
    required String subtitle,
    this.toPage,
    this.url,
  }) : resource = null,
       icon = icon,
       title = title,
       subtitle = subtitle,
       assert(
         toPage != null || url != null,
         'Either toPage or url must be provided',
       );

  const CommonCard.fromResource({
    super.key,
    required ResourceItem resource,
  }) : resource = resource,
       icon = null,
       title = null,
       subtitle = null,
       toPage = null,
       url = null;

  String get _title => resource?.title ?? title!;
  String get _subtitle => resource?.subtitle ?? subtitle!;
  IconData get _icon => resource == null
      ? icon!
      : _iconForKey(resource!.iconKey);

  bool get _isExternal => resource == null
      ? url != null
      : !resource!.openInViewer;

  Future<void> _handleTap(BuildContext context) async {
    final ResourceItem? item = resource;
    if (item != null) {
      if (item.openInViewer) {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => PdfViewerPage(
              title: item.viewerTitle ?? item.title,
              pdfUrl: item.url,
            ),
          ),
        );
      } else {
        await _launchExternalUrl(context, item.url);
      }
      return;
    }

    if (url != null) {
      await _launchExternalUrl(context, url!);
    } else if (toPage != null) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (BuildContext context) => toPage!),
      );
    }
  }

  Future<void> _launchExternalUrl(BuildContext context, String rawUrl) async {
    try {
      String cleanUrl = rawUrl.trim();
      if (cleanUrl.isEmpty) {
        throw const FormatException('URL is empty');
      }
      if (!cleanUrl.startsWith('http://') &&
          !cleanUrl.startsWith('https://')) {
        cleanUrl = 'https://$cleanUrl';
      }

      final Uri? uri = Uri.tryParse(cleanUrl);
      if (uri == null ||
          !uri.hasScheme ||
          (uri.scheme != 'http' && uri.scheme != 'https') ||
          uri.host.isEmpty) {
        throw const FormatException('Invalid URL');
      }

      final bool launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      if (!launched && context.mounted) {
        _showMessage(context, 'Could not open the link');
      }
    } catch (_) {
      if (context.mounted) {
        _showMessage(context, 'Could not open this link. Check the URL.');
      }
    }
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  IconData _iconForKey(String key) {
    switch (key.trim().toLowerCase()) {
      case 'functions':
      case 'maths':
      case 'mathematics':
        return Icons.functions;
      case 'notes':
      case 'menu_book':
      case 'book':
        return Icons.menu_book;
      case 'marking_scheme':
      case 'grading':
      case 'rule':
        return Icons.fact_check;
      case 'science':
        return Icons.science;
      case 'video':
        return Icons.play_circle_outline;
      case 'description':
        return Icons.description;
      case 'picture_as_pdf':
      default:
        return Icons.picture_as_pdf;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isExternal = _isExternal;

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: primaryBlue.withValues(alpha: 0.08),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
          color: cardWhite,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => _handleTap(context),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: primaryBlue,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.center,
                    child: Icon(_icon, size: 40, color: cardWhite),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: textDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _subtitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: textLight,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    isExternal ? Icons.open_in_new : Icons.chevron_right,
                    color: primaryBlue,
                    size: isExternal ? 24 : 28,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
