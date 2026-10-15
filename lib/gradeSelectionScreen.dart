import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learnova/alStreamSelection.dart';
import 'package:learnova/colors.dart';
import 'package:url_launcher/url_launcher.dart';

  String selectedLanguage = 'English';
  final List<String> languages = ['English', 'Sinhala', 'Tamil'];


class GradeSelectionScreen extends StatefulWidget {
  
  const GradeSelectionScreen({super.key});

  @override
  State<GradeSelectionScreen> createState() => _GradeSelectionScreenState();
}

class _GradeSelectionScreenState extends State<GradeSelectionScreen> {
  

    

  // Function to open WhatsApp URL
  Future<void> _launchWhatsApp() async {
    // Replace with your target phone number (include country code without '+' or zeros)
    const phoneNumber = "94758072146";
    //const message = "Hello! I am reaching out from your Flutter app.";

    // Encode the URI safely
    final whatsappUrl = Uri.parse("https://wa.me/+$phoneNumber");

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF25D366), // WhatsApp Brand Green
        foregroundColor: Colors.white,
        //shape: const CircleBorder(), // Keeps it perfectly circular
    
        elevation: 6.0,
        tooltip: 'Chat on WhatsApp',
        child: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.whatsapp,
          ), // You can also use an image asset or FontAwesomeIcons.whatsapp
          iconSize: 30,
          onPressed: _launchWhatsApp,
        ),
      ),
    
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          'Learnova',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        //centerTitle: true,
    
        // 1. Interactive Leading Button
        
    
        // 2. Interactive Action Buttons & Dropdown Menu
        /*
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              // Action on tap
            },
          ),
    
          // Built-in interactive popup menu (no state code needed)
          PopupMenuButton<String>(
            color: primaryBlue.withValues(alpha: 200),
    
            icon: const Icon(Icons.more_vert),
            tooltip: 'More Options',
            onSelected: (value) {
              // Action on selection
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 'settings',
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: cardWhite,
                    fontSize: 20,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 'share',
                child: Text(
                  'Share',
                  style: TextStyle(
                    color: cardWhite,
                    fontSize: 20,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 'logout',
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: cardWhite,
                    fontSize: 20,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],*/
      ),
    
      drawer: Drawer(
        backgroundColor: primaryBlue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.home, color: textLight,),
              title: Text('Home', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: textLight,
              )),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: textLight,),
              title: Text('Settings', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: textLight,
              ),),
            ),

            ListTile(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                trailing: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedLanguage,
                    items: languages.map((String lang) {
                      return DropdownMenuItem<String>(
                        value: lang,
                        child: Text(lang),
                      );
                    }).toList(),
                    onChanged: (String? newLanguage) {
                      if (newLanguage != null) {
                        setState(() {
                          selectedLanguage = newLanguage;
                        });
                      }
                    },
                  ),
                ),
              ),

          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- SENIOR SECONDARY ---
                //_buildSectionHeader("Senior Secondary", "O/L & A/L Preparation"),
                _buildSpecialCard(
                  title: "Advanced Level",
                  subtitle: "Syllabus, Notes, Papers, etc...",
                  icon: Icons.school,
                  toPage: alStreamSelectionScreen(),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: _buildGradeCard(number: "10", title: "Grade 10"),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildGradeCard(number: "11", title: "Grade 11"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
            
                // --- SECONDARY EDUCATION ---
                /*_buildSectionHeader(
                  "Secondary Education",
                  "Middle school (Grade 6 - 9)",
                ),*/
                Row(
                  children: [
                    Expanded(
                      child: _buildGradeCard(number: "9", title: "Grade 9"),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildGradeCard(number: "8", title: "Grade 8"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: _buildGradeCard(number: "7", title: "Grade 7"),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildGradeCard(number: "6", title: "Grade 6"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
            
                // --- PRIMARY EDUCATION ---
                /*_buildSectionHeader(
                  "Primary Education",
                  "Foundation years (Grade 1 - 5)",
                ),*/
                _buildSpecialCard(
                  title: "Grade 5 Scholarship",
                  subtitle: "Syllabus, Notes, Papers, etc...",
                  icon: Icons
                      .emoji_events, // Changed icon to represent scholarship
                  toPage: alStreamSelectionScreen(),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: _buildGradeCard(number: "4", title: "Grade 4"),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildGradeCard(number: "3", title: "Grade 3"),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: _buildGradeCard(number: "2", title: "Grade 2"),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildGradeCard(number: "1", title: "Grade 1"),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method for Section Headers
  /*Widget _buildSectionHeader(String title, String subtitle) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: primaryBlue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: textLight,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
*/
  // Helper method for Special Full-Width Cards (A/L & Grade 5)
  Widget _buildSpecialCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Widget toPage,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => toPage),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: cardWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: primaryBlue.withOpacity(0.08),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: accentGold.withOpacity(0.3), // Subtle gold border
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [accentGold, Color(0xFFFFB020)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: accentGold.withOpacity(0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(icon, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryBlue,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: textLight,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, color: primaryBlue, size: 20),
          ],
        ),
      ),
    );
  }

  // Helper method for Individual Grade Grid Cards
  Widget _buildGradeCard({
    required String number,
    required String title,
    String? toPage,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: cardWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: primaryBlue.withOpacity(0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: primaryBlue,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: primaryBlue.withOpacity(0.3),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        number,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: textDark,
                    ),
                  ),
                ],
              ),

              Icon(
                Icons.arrow_forward_ios_rounded,
                color: primaryBlue,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

class LearnovaApp extends StatelessWidget {
  const LearnovaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learnova',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryNavy,
          primary: kPrimaryNavy,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: kBackground,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: kTextPrimary,
          elevation: 0,
          centerTitle: false,
          surfaceTintColor: Colors.transparent,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
*/
// ------------------------------------------------------------
// HOME SCREEN
// ------------------------------------------------------------

/*
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openPage(
    BuildContext context,
    String title,
    IconData icon,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => DestinationScreen(
          title: title,
          icon: icon,
        ),
      ),
    );
  }

  Future<void> _confirmLogout(BuildContext context) async {
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Icon(
            Icons.logout_rounded,
            color: kLogoutRed,
            size: 32,
          ),
          title: const Text('Log out?'),
          content: const Text(
            'Are you sure you want to log out of your account?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: kLogoutRed,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('Log Out'),
            ),
          ],
        );
      },
    );

    if (!context.mounted) return;

    if (shouldLogout == true) {
      // TODO: Call your authentication service here.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Connect your authentication logout logic here.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learnova',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: -0.4,
          ),
        ),
      ),
      drawer: AppDrawer(
        onProfileTap: () => _openPage(
          context,
          'Profile',
          Icons.person_outline_rounded,
        ),
        onSettingsTap: () => _openPage(
          context,
          'Settings',
          Icons.settings_outlined,
        ),
        onLogoutTap: () => _confirmLogout(context),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 440),
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFFE8ECF4)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: kPrimaryNavy.withOpacity(0.08),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.school_rounded,
                    size: 42,
                    color: kPrimaryNavy,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to Learnova',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    color: kTextPrimary,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Open the navigation drawer to explore '
                  'your profile, settings and account options.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.6,
                    color: kTextSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

*/

// ------------------------------------------------------------
// CUSTOM DRAWER
// ------------------------------------------------------------
/*
class AppDrawer extends StatelessWidget {
  final VoidCallback onProfileTap;
  final VoidCallback onSettingsTap;
  final VoidCallback onLogoutTap;

  const AppDrawer({
    super.key,
    required this.onProfileTap,
    required this.onSettingsTap,
    required this.onLogoutTap,
  });

  void _closeAndExecute(BuildContext context, VoidCallback callback) {
    Navigator.of(context).pop();
    callback();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 320,
      backgroundColor: Colors.white,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _DrawerHeader(),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'ACCOUNT',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                  color: kTextSecondary,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // The navigation area expands to fill available space.
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                children: [
                  _DrawerItem(
                    icon: Icons.person_outline_rounded,
                    title: 'Profile',
                    subtitle: 'Manage your account',
                    onTap: () => _closeAndExecute(context, onProfileTap),
                  ),
                  const SizedBox(height: 6),
                  _DrawerItem(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                    subtitle: 'Preferences and privacy',
                    onTap: () => _closeAndExecute(context, onSettingsTap),
                  ),
                  const SizedBox(height: 18),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(color: Color(0xFFEDF0F5), height: 1),
                  ),
                  const SizedBox(height: 18),
                  _DrawerItem(
                    icon: Icons.logout_rounded,
                    title: 'Log Out',
                    subtitle: 'Sign out of your account',
                    isDestructive: true,
                    onTap: () => _closeAndExecute(context, onLogoutTap),
                  ),
                ],
              ),
            ),

            // This footer remains below the scrollable menu.
            const _DrawerFooter(),
          ],
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// PROFILE HEADER
// ------------------------------------------------------------

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 30, 20, 26),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF153E90), Color(0xFF2459B8), Color(0xFF3978D8)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white.withOpacity(0.55),
                width: 1.5,
              ),
            ),
            child: const CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: Icon(Icons.person_rounded, size: 37, color: kPrimaryNavy),
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Kalpa Sulochana',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'kalpa@example.com',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white.withOpacity(0.82),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// REUSABLE NAVIGATION ITEM
// ------------------------------------------------------------

class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isDestructive;

  const _DrawerItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isDestructive = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color foregroundColor = isDestructive ? kLogoutRed : kTextPrimary;

    final Color iconBackground = isDestructive
        ? kLogoutRed.withOpacity(0.09)
        : kPrimaryNavy.withOpacity(0.07);

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        splashColor: isDestructive
            ? kLogoutRed.withOpacity(0.08)
            : kPrimaryNavy.withOpacity(0.08),
        highlightColor: isDestructive
            ? kLogoutRed.withOpacity(0.04)
            : kPrimaryNavy.withOpacity(0.04),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: iconBackground,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(
                  icon,
                  size: 22,
                  color: isDestructive ? kLogoutRed : kPrimaryNavy,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: foregroundColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: kTextSecondary,
                        fontSize: 11.5,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                size: 20,
                color: isDestructive
                    ? kLogoutRed.withOpacity(0.65)
                    : const Color(0xFF9CA3AF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// PINNED DRAWER FOOTER
// ------------------------------------------------------------

class _DrawerFooter extends StatelessWidget {
  const _DrawerFooter();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(22, 14, 22, 18),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFEDF0F5), width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              Icon(Icons.mail_outline_rounded, size: 17, color: kPrimaryNavy),
              SizedBox(width: 9),
              Expanded(
                child: Text(
                  'help@example.com',
                  style: TextStyle(
                    color: kTextSecondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Icon(
                Icons.verified_outlined,
                size: 15,
                color: Colors.grey.shade500,
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'v1.0.0 (Build 42)',
                  style: TextStyle(color: kTextSecondary, fontSize: 11),
                ),
              ),
              const Text(
                'Made with care',
                style: TextStyle(color: Color(0xFF9CA3AF), fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// DUMMY DESTINATION SCREEN
// ------------------------------------------------------------

class DestinationScreen extends StatelessWidget {
  final String title;
  final IconData icon;

  const DestinationScreen({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64, color: kPrimaryNavy),
            const SizedBox(height: 16),
            Text(
              '$title Screen',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: kTextPrimary,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Replace this placeholder with your actual page.',
              textAlign: TextAlign.center,
              style: TextStyle(color: kTextSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
*/