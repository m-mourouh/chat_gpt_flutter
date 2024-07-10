
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.green
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 40,
            ),
          ),
          title: const Text(
            "ChatGPT",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                fontSize: 32,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: CircleAvatar(
                    //backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: AnimatedTextKit(
                      displayFullTextOnTap: true,
                      isRepeatingAnimation: false,
                      repeatForever: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Hello, What can I do for you?",
                          speed: const Duration(milliseconds: 50),
                          textStyle: const TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 24,
                              color: Colors.white),
                        )
                      ]),
                ),

              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ChatScreen();
              }));
            },
            elevation: 10,
            backgroundColor: Colors.white,
            tooltip: "Chat with ChatGPT",
            child: Image.asset(
              "assets/chat.png",
              width: 33,
            )),
      ),
    );
  }
}
