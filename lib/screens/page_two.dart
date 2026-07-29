import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  static const Color primaryColor = Color(0xFF5146E5);
  static const Color darkTextColor = Color(0xFF1F2937);
  static const Color secondaryTextColor = Color(0xFF6B7280);
  static const Color expenseColor = Color(0xFFE52B2B);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                child: _buildHeader(),
              ),

              const Divider(height: 1, thickness: 1, color: Color(0xFFF1F2F4)),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 22, 16, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Monthly Spending Report',
                      style: TextStyle(
                        color: darkTextColor,
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Total Expenses Card
                    _buildExpensesCard(),

                    const SizedBox(height: 20),

                    // Spending Breakdown Card
                    _buildSpendingBreakdown(),
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

        // Notification button
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

  // TOTAL EXPENSES CARD

  Widget _buildExpensesCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(14, 16, 14, 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Expenses (Last 30 days)',
            style: TextStyle(
              color: secondaryTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 5),

          Text(
            '-\$1270.00',
            style: TextStyle(
              color: expenseColor,
              fontSize: 26,
              fontWeight: FontWeight.w700,
              height: 1.1,
            ),
          ),

          SizedBox(height: 7),

          Row(
            children: [
              Icon(Icons.arrow_upward, color: Color(0xFFFF4040), size: 14),
              SizedBox(width: 4),
              Text(
                'Up 12% from last month',
                style: TextStyle(
                  color: Color(0xFFFF4040),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // SPENDING BREAKDOWN

  Widget _buildSpendingBreakdown() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spending Breakdown',
            style: TextStyle(
              color: darkTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),

          SizedBox(height: 18),

          _SpendingItem(
            title: 'Food & Drink',
            amount: '\$450.00 (35%)',
            percentage: 0.35,
            barColor: Color(0xFFFF4B4B),
          ),

          SizedBox(height: 13),

          _SpendingItem(
            title: 'Shopping',
            amount: '\$320.00 (25%)',
            percentage: 0.25,
            barColor: Color(0xFF6366F1),
          ),

          SizedBox(height: 13),

          _SpendingItem(
            title: 'Housing',
            amount: '\$280.00 (22%)',
            percentage: 0.22,
            barColor: Color(0xFFF2B705),
          ),

          SizedBox(height: 13),

          _SpendingItem(
            title: 'Transport',
            amount: '\$150.00 (12%)',
            percentage: 0.12,
            barColor: Color(0xFF20BF6B),
          ),

          SizedBox(height: 13),

          _SpendingItem(
            title: 'Other',
            amount: '\$70.00 (6%)',
            percentage: 0.06,
            barColor: Color(0xFF9CA3AF),
          ),
        ],
      ),
    );
  }
}

// REUSABLE SPENDING ITEM

class _SpendingItem extends StatelessWidget {
  final String title;
  final String amount;
  final double percentage;
  final Color barColor;

  const _SpendingItem({
    required this.title,
    required this.amount,
    required this.percentage,
    required this.barColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: PageTwo.darkTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              amount,
              style: const TextStyle(
                color: PageTwo.darkTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),

        const SizedBox(height: 6),

        // Progress bar
        LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                // Background
                Container(
                  width: double.infinity,
                  height: 8,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E7EB),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                // Colored percentage
                Container(
                  width: constraints.maxWidth * percentage,
                  height: 8,
                  decoration: BoxDecoration(
                    color: barColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
