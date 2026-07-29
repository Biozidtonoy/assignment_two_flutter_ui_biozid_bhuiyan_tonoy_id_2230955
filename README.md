# assignment_two_flutter_ui_biozid_bhuiyan_tonoy_id_2230955

A new Flutter project.

# Assignment Two - Flutter UI

A Flutter mobile application developed for **Mobile Application Development - Assignment Two**.

The application recreates the provided Figma banking dashboard design and implements multiple screens with navigation using Flutter's `PageView` and `PageController`.

## Student Information

- **Name:** Biozid Bhuiyan Tonoy
- **Course:** Mobile Application Development

## Project Overview

This project is a Flutter UI implementation based on the Figma design provided for Assignment Two.

The assignment contains four available pages. This implementation includes the three required/selected pages:

- Page 1 - Home
- Page 2 - Monthly Spending Report
- Page 4 - User Profile

Page 3 (Cards) is not included because the assignment requires Page 1, Page 4, and one page selected from Page 2 or Page 3.

## Implemented Screens

### Page 1 - Home

The Home screen contains:

- Personalized welcome header
- User avatar
- Notification indicator
- Total balance card
- Savings information
- Monthly balance change
- Transfer action
- Pay Bills action
- Invest action
- Recent transactions
- Income and expense indicators

### Page 2 - Monthly Spending Report

The Reports screen contains:

- Personalized welcome header
- Total expenses for the last 30 days
- Monthly expense change indicator
- Spending breakdown by category
- Food & Drink expenses
- Shopping expenses
- Housing expenses
- Transport expenses
- Other expenses
- Visual progress bars for spending categories

### Page 4 - User Profile

The Profile screen contains:

- Personalized welcome header
- Profile avatar
- Student name
- Student ID
- Student email
- Personal Bio / Story

## Navigation

Navigation between the implemented pages is built using:

- `PageView`
- `PageController`
- `BottomNavigationBar`

The application contains three navigation destinations:

- Home
- Reports
- Profile

Manual PageView swiping is disabled, and pages are changed through the bottom navigation bar using the `PageController`.

## Project Structure

```text
lib/
├── main.dart
└── screens/
    ├── main_screen.dart
    ├── page_one.dart
    ├── page_two.dart
    └── profile_page.dart
