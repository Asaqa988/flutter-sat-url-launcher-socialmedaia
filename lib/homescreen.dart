import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final Uri Facebook_url = Uri.parse('https://www.facebook.com');
  final Uri linkedin_url = Uri.parse('https://www.linkedin.com');
  final Uri twitter_url = Uri.parse('https://www.twitter.com');
  final Uri instgram_url = Uri.parse('https://www.instagram.com');

  Future<void> Facebook_Function() async {
    if (!await launchUrl(Facebook_url)) {
      throw 'Could not launch $Facebook_url';
    }
  }

  Future<void> linkedin_Function() async {
    if (!await launchUrl(linkedin_url)) {
      throw 'Could not launch $linkedin_url';
    }
  }

  Future<void> instgram_function() async {
    if (!await launchUrl(instgram_url)) {
      throw 'Could not launch $linkedin_url';
    }
  }

  Future<void> twitter_Function() async {
    if (!await launchUrl(twitter_url)) {
      throw 'Could not launch $linkedin_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            IconButton(
              icon: Icon(Ionicons.logo_facebook),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Ionicons.logo_linkedin)),
            IconButton(onPressed: () {}, icon: Icon(Ionicons.logo_twitter)),
            IconButton(onPressed: () {}, icon: Icon(Ionicons.logo_instagram))
          ]),
          backgroundColor: Colors.purple.shade900,
        ),
        body: TabBarView(children: [
          Center(
            child: TextButton(
              onPressed: Facebook_Function,
              child: Text(
                "VISIT OUR FACEBOOK PAGE",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: linkedin_Function,
              child: Text(
                "VISIT OUR LINKEDIN PAGE",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: twitter_Function,
              child: Text(
                "VISIT OUR TWITTER PAGE",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: instgram_function,
              child: Text(
                "VISIT OUR INSTAGRAM PAGE",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
