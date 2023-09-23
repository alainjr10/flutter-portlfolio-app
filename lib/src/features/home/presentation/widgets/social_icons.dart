import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    Key? key,
  }) : super(key: key);

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("https://twitter.com/dyceman10"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        const SizedBox(width: 20.0),
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("https://github.com/alainjr10"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.github,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        const SizedBox(width: 20.0),
        IconButton(
          onPressed: () {
            _launchInBrowser(
                Uri.parse("https://www.linkedin.com/in/alain-jr-bba607172/"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedinIn,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        const SizedBox(width: 20.0),
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("mailto:njokomalain@gmail.com"));
          },
          icon: const FaIcon(
            FontAwesomeIcons.envelope,
            color: Colors.white,
            size: 35.0,
          ),
        ),
      ],
    );
  }
}
