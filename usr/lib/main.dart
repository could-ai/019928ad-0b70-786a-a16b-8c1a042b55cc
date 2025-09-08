import 'package:flutter/material.dart';
import 'screens/candidate_upload_screen.dart';
import 'screens/recruiter_dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Screener',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Resume Screener'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Candidate'),
            Tab(text: 'Recruiter'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CandidateUploadScreen(),
          RecruiterDashboardScreen(),
        ],
      ),
    );
  }
}
