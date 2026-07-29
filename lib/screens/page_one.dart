import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  static const Color primaryColor = Color(0xFF5146E5);
  static const Color darkTextColor = Color(0xFF1F2937);
  static const Color secondaryTextColor = Color(0xFF6B7280);
  static const Color expenseColor = Color(0xFFFF3B3B);
  static const Color incomeColor = Color(0xFF16C65B);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================
              // HEADER
              // =========================
              _buildHeader(),

              const SizedBox(height: 20),

              // =========================
              // BALANCE CARD
              // =========================
              _buildBalanceCard(),

              const SizedBox(height: 20),

              // =========================
              // QUICK ACTIONS
              // =========================
              Row(
                children: [
                  Expanded(
                    child: _QuickActionCard(
                      icon: Icons.swap_horiz,
                      label: 'Transfer',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _QuickActionCard(
                      icon: Icons.account_balance_wallet_outlined,
                      label: 'Pay Bills',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _QuickActionCard(
                      icon: Icons.link,
                      label: 'Invest',
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // =========================
              // RECENT TRANSACTIONS HEADER
              // =========================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Transactions',
                    style: TextStyle(
                      color: darkTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: primaryColor,
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(50, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // =========================
              // TRANSACTIONS
              // =========================
              const _TransactionTile(
                icon: Icons.movie_outlined,
                title: 'Netflix Subscription',
                subtitle: 'Entertainment · Today',
                amount: '\$19.99',
                amountColor: expenseColor,
              ),

              const SizedBox(height: 8),

              const _TransactionTile(
                icon: Icons.coffee_outlined,
                title: 'Coffee Shop',
                subtitle: 'Food & Drink · Today',
                amount: '\$4.50',
                amountColor: expenseColor,
              ),

              const SizedBox(height: 8),

              const _TransactionTile(
                icon: Icons.attach_money,
                title: 'Salary Deposit',
                subtitle: 'Income · Yesterday',
                amount: '+\$3500.00',
                amountColor: incomeColor,
              ),

              const SizedBox(height: 8),

              const _TransactionTile(
                icon: Icons.shopping_cart_outlined,
                title: 'Grocery Store',
                subtitle: 'Shopping · Yesterday',
                amount: '\$55.80',
                amountColor: expenseColor,
              ),

              const SizedBox(height: 8),

              const _TransactionTile(
                icon: Icons.shopping_cart_outlined,
                title: 'Amazon Purchase',
                subtitle: 'Shopping · 2 days ago',
                amount: '\$120.45',
                amountColor: expenseColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // HEADER
  // ============================================================

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

  // ============================================================
  // BALANCE CARD
  // ============================================================

  Widget _buildBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.14),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Color(0xFFC9C6FF),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white,
                size: 21,
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Balance
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$8,945',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ),
                TextSpan(
                  text: '.32',
                  style: TextStyle(
                    color: Color(0xFFD7D5FF),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Container(height: 1, color: Colors.white.withValues(alpha: 0.13)),

          const SizedBox(height: 12),

          const Row(
            children: [
              Expanded(
                child: Text(
                  'Savings: \$5,500',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                'Last 30 days: +\$300',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 3),
              Icon(Icons.arrow_forward, color: Colors.white, size: 14),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================
// QUICK ACTION CARD
// ============================================================

class _QuickActionCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _QuickActionCard({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(11),
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(11),
        child: SizedBox(
          height: 88,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  color: Color(0xFFE9ECFF),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: PageOne.primaryColor, size: 22),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  color: PageOne.darkTextColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// TRANSACTION TILE
// ============================================================

class _TransactionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;
  final Color amountColor;

  const _TransactionTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.025),
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xFFF5F6F7),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Color(0xFF6B7280), size: 20),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: PageOne.darkTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: PageOne.secondaryTextColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Text(
            amount,
            style: TextStyle(
              color: amountColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
