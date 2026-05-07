import 'package:flutter/material.dart';
import 'setting_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),

      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Top Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  top: 60, bottom: 30),
              decoration: const BoxDecoration(
                color: Color(0xff6D8797),
              ),

              child: Column(
                children: [

                  const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings,
                          color: Colors.white, size: 32),
                      SizedBox(width: 5),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [

                      CircleAvatar(
                        radius: 38,
                        backgroundColor:
                        Colors.white24,
                        child: const Text(
                          "👩‍💻",
                          style:
                          TextStyle(fontSize: 35),
                        ),
                      ),

                      const SizedBox(width: 20),

                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [

                          const Text(
                            "Samrin Subha",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          const Text(
                            "CSE · 53rd Batch",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),

                          const SizedBox(height: 10),

                          Container(
                            padding:
                            const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            decoration:
                            BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  25),
                              border: Border.all(
                                  color:
                                  Colors.white30),
                            ),
                            child: const Text(
                              "Edit Profile →",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// ACCOUNT TITLE
            const Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ACCOUNT",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            /// Account Card
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius:
                BorderRadius.circular(20),
              ),
              child: const Column(
                children: [

                  SettingTile(
                    icon: Icons.person_outline,
                    iconColor: Colors.blue,
                    title: "My Profile",
                    subtitle:
                    "View & edit your info",
                  ),

                  Divider(),

                  SettingTile(
                    icon: Icons.remove_red_eye,
                    iconColor: Colors.red,
                    title: "Privacy",
                    subtitle:
                    "Manage permissions",
                  ),

                  Divider(),

                  SettingTile(
                    icon: Icons.security,
                    iconColor: Colors.green,
                    title: "Security",
                    subtitle: "Password & 2FA",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            /// PREFERENCES
            const Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "PREFERENCES",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius:
                BorderRadius.circular(20),
              ),
              child: const Column(
                children: [

                  SettingTile(
                    icon: Icons.dark_mode,
                    iconColor: Colors.deepPurple,
                    title: "Dark Mode",
                  ),

                  Divider(),

                  SettingTile(
                    icon:
                    Icons.notifications_none,
                    iconColor: Colors.orange,
                    title: "Notifications",
                  ),

                  Divider(),

                  SettingTile(
                    icon: Icons.language,
                    iconColor: Colors.teal,
                    title: "Language",
                    subtitle: "Bangla",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            /// Logout Button
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 15),
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout),
                label: const Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
                style:
                ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.red[700],
                  foregroundColor:
                  Colors.white,
                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(
                        18),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}