import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const Color primaryColor = Color(0xFF5146E5);
  static const Color darkTextColor = Color(0xFF1F2937);
  static const Color secondaryTextColor = Color(0xFF6B7280);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // HEADER
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                child: _buildHeader(),
              ),

              const Divider(height: 1, thickness: 1, color: Color(0xFFF1F2F4)),

              // PROFILE CONTENT
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
                child: Column(
                  children: [
                    const Text(
                      'User Profile',
                      style: TextStyle(
                        color: darkTextColor,
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Large profile avatar
                    Container(
                      width: 76,
                      height: 76,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFC7C9FF),
                          width: 4,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.15),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'BT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    const _ProfileInfoCard(
                      label: 'Name',
                      value: 'Biozid Bhuiyan Tonoy',
                    ),

                    const SizedBox(height: 10),

                    const _ProfileInfoCard(
                      label: 'Student ID',
                      value: '2230955',
                    ),

                    const SizedBox(height: 10),

                    const _ProfileInfoCard(
                      label: 'Email',
                      value: '2230955@iub.edu.bd',
                    ),

                    const SizedBox(height: 18),

                    _buildBioCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // HEADER

  Widget _buildHeader() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 19,
          backgroundColor: primaryColor,
          child: Text(
            'B',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        const SizedBox(width: 12),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back,',
                style: TextStyle(
                  color: secondaryTextColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'BIOZID BHUIYAN TONOY',
                style: TextStyle(
                  color: darkTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),

        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: const BoxDecoration(
                color: Color(0xFFF4F5F7),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: Color(0xFF667085),
                  size: 22,
                ),
              ),
            ),
            Positioned(
              right: 2,
              top: 1,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6B6B),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // BIO CARD

  Widget _buildBioCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(14, 15, 14, 17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bio / Story',
            style: TextStyle(
              color: darkTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),

          SizedBox(height: 8),

          Text(
            "I'm a Computer Science student passionate about software "
            "development and building practical solutions through technology. "
            "I enjoy learning new technologies, working on creative projects, "
            "and continuously improving my skills. Outside academics, I value "
            "exploring new ideas, taking on challenges, and preparing myself "
            "for a career in software development.",
            style: TextStyle(
              color: Color(0xFF4B5563),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }
}

// REUSABLE PROFILE INFORMATION CARD

class _ProfileInfoCard extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileInfoCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(14, 13, 14, 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: ProfilePage.secondaryTextColor,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            value,
            style: const TextStyle(
              color: ProfilePage.darkTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
