import 'package:flutter/material.dart';
import '../models/resume.dart';

class RecruiterDashboardScreen extends StatelessWidget {
  const RecruiterDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for demonstration
    final List<Resume> resumes = [
      Resume(id: '1', candidateName: 'John Doe', filePath: '/path/to/resume1.pdf', score: 92.5),
      Resume(id: '2', candidateName: 'Jane Smith', filePath: '/path/to/resume2.pdf', score: 88.0),
      Resume(id: '3', candidateName: 'Peter Jones', filePath: '/path/to/resume3.doc', score: 85.2),
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: resumes.length,
        itemBuilder: (context, index) {
          final resume = resumes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(resume.candidateName),
              subtitle: Text('Score: ${resume.score}%'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to resume details and AI suggestions
              },
            ),
          );
        },
      ),
    );
  }
}
