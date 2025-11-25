import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_quote/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> quotes = [
    "Believe you can and you're halfway there.",
    "Act as if what you do makes a difference. It does.",
    "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "Don’t watch the clock; do what it does. Keep going.",
    "It always seems impossible until it’s done.",
    "Keep your face always toward the sunshine—and shadows will fall behind you.",
    "The secret of getting ahead is getting started.",
    "If you want to lift yourself up, lift up someone else.",
    "Do what you can with all you have, wherever you are.",
    "Dream big and dare to fail.",
    "Start where you are. Use what you have. Do what you can.",
    "Everything you’ve ever wanted is on the other side of fear.",
    "Hardships often prepare ordinary people for an extraordinary destiny.",
    "You are never too old to set another goal or to dream a new dream.",
    "It does not matter how slowly you go as long as you do not stop.",
    "Believe in yourself and all that you are.",
    "Don’t let yesterday take up too much of today.",
    "Opportunities don't happen. You create them.",
    "Don’t be afraid to give up the good to go for the great.",
    "I never dreamed about success. I worked for it.",
    "The harder you work for something, the greater you’ll feel when you achieve it.",
    "Don’t limit your challenges. Challenge your limits.",
    "Push yourself, because no one else is going to do it for you.",
    "Great things never come from comfort zones.",
    "Dream it. Wish it. Do it.",
    "Success doesn’t just find you. You have to go out and get it.",
    "The key to success is to focus on goals, not obstacles.",
    "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.",
    "The way to get started is to quit talking and begin doing.",
    "You don’t have to be great to start, but you have to start to be great.",
    "Don’t stop when you’re tired. Stop when you’re done.",
    "Work hard in silence, let success make the noise.",
    "Wake up with determination. Go to bed with satisfaction.",
    "Little things make big days.",
    "Do something today that your future self will thank you for.",
    "It’s going to be hard, but hard does not mean impossible.",
    "Don’t wait for opportunity. Create it.",
    "Sometimes later becomes never. Do it now.",
    "Great things never come from comfort zones.",
    "Dream bigger. Do bigger.",
    "Success is what happens after you have survived all your mistakes.",
    "Discipline is the bridge between goals and accomplishment.",
    "Motivation is what gets you started. Habit is what keeps you going.",
    "If you get tired, learn to rest, not quit.",
    "Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart.",
    "Failure will never overtake me if my determination to succeed is strong enough.",
    "Everything you can imagine is real.",
    "Stay positive, work hard, make it happen.",
    "Your limitation—it’s only your imagination.",
    "The expert in anything was once a beginner.",
    "Success is the sum of small efforts, repeated day in and day out.",
    "Either you run the day or the day runs you.",
    "Hustle until your haters ask if you’re hiring.",
    "Don’t call it a dream. Call it a plan.",
    "What we think, we become.",
    "Doubt kills more dreams than failure ever will.",
    "In the middle of every difficulty lies opportunity.",
    "Difficult roads often lead to beautiful destinations.",
    "Make each day your masterpiece.",
    "Learn as if you will live forever, live like you will die tomorrow.",
    "Success usually comes to those who are too busy to be looking for it.",
    "Don’t wait. The time will never be just right.",
    "Do one thing every day that scares you.",
    "Your only limit is your mind.",
    "The best revenge is massive success.",
    "Dreams don’t work unless you do.",
    "Don’t let what you cannot do interfere with what you can do.",
    "Perseverance is not a long race; it is many short races one after another.",
    "Turn your wounds into wisdom.",
    "You miss 100% of the shots you don’t take.",
    "The future depends on what you do today.",
    "Don’t count the days, make the days count.",
    "If you can dream it, you can do it.",
    "Be stronger than your excuses.",
    "Keep going. Everything you need will come to you at the perfect time.",
    "Success doesn’t come from what you do occasionally, it comes from what you do consistently.",
    "Stay hungry, stay foolish.",
    "The man who moves a mountain begins by carrying away small stones.",
    "You are what you do, not what you say you’ll do.",
    "Don’t wish for it, work for it.",
    "Be fearless in the pursuit of what sets your soul on fire.",
    "Your passion is waiting for your courage to catch up.",
    "Make today so awesome that yesterday gets jealous.",
    "Do something great today that your future self will thank you for.",
    "The comeback is always stronger than the setback.",
    "Don’t look back — you’re not going that way.",
    "A year from now, you’ll wish you had started today.",
    "Stop doubting yourself, work hard, and make it happen.",
    "You can’t have a million-dollar dream with a minimum-wage work ethic.",
    "Small progress is still progress.",
    "Act like you have what it takes. Because you do.",
    "Don’t be afraid to start over. It’s a chance to build something better this time.",
    "Strive for progress, not perfection.",
    "Your dream doesn’t have an expiration date. Take a deep breath and try again.",
    "Stay patient and trust your journey.",
    "A little progress each day adds up to big results.",
    "Don’t tell people your plans. Show them your results.",
    "Keep your eyes on the stars and your feet on the ground.",
    "Fall seven times, stand up eight.",
    "Winners are not those who never fail, but those who never quit.",
    "Failure is simply the opportunity to begin again, this time more intelligently.",
    "You were born to be real, not to be perfect.",
  ];

  String currentQuote = 'Tap to get Inspired!';

  void showRandomQuotes() {
    final random = Random();
    final index = random.nextInt(quotes.length);
    setState(() {
      currentQuote = quotes[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Quote'),
        actions: [
          IconButton(
            onPressed: themeProvider.toggleTheme,
            icon: Icon(
              themeProvider.isDark ? Icons.light_mode : Icons.dark_mode,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuote,
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 40,
                  height: 1.1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: showRandomQuotes,
                child: const Text('Get Inspired!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
