import 'package:flutter/material.dart';
import 'skill_chip.dart';

class DeveloperProfile extends StatelessWidget {
  const DeveloperProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: const Text(
          "Developer Profile",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),

      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(2, 4),
              )
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              /// Top Info
              Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.indigo,
                    child: const Text(
                      "SS",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Samrin Subha",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "CSE · 63rd Batch",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              size: 18, color: Colors.indigo),
                          SizedBox(width: 5),
                          Text("Sylhet, Bangladesh"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(),

              /// Stats
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Posts"),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        "340",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Followers"),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        "98",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Following"),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(),

              /// Skills
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: const [
                  SkillChip(text: "Flutter", color: Colors.deepOrange),
                  SkillChip(text: "Dart", color: Colors.blue),
                  SkillChip(text: "UI/UX", color: Colors.green),
                  SkillChip(text: "Git", color: Colors.purple),
                  SkillChip(text: "Firebase", color: Colors.orange),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(),

              /// Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add),
                    label: const Text("Follow"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(140, 50),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    label: const Text("Message"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(140, 50),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}