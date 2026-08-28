import 'package:flutter/material.dart';
import 'package:learnova/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class buildCommonCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? toPage;
  final String? url;

  const buildCommonCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.toPage,
    this.url,
  }) : assert(
         toPage != null || url != null,
         'Either toPage or url must be provided',
       );

  Future<void> _handleTap(BuildContext context) async {
    if (url != null) {
      String cleanUrl = url!.trim();
      if (!cleanUrl.startsWith('http://') && !cleanUrl.startsWith('https://')) {
        cleanUrl = 'https://$cleanUrl';
      }

      final uri = Uri.parse(cleanUrl);
      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );

      if (!launched && context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not open the link')),
        );
      }
    } else if (toPage != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => toPage!),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isExternal = url != null;

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
                    child: Icon(icon, size: 40, color: cardWhite),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: textDark,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
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