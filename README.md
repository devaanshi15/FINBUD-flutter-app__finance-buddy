# finbud_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

In today's financial landscape, college students face unique challenges requiring specialized solutions. Enter FinBud: a sophisticated personal finance app designed specifically for them. 

•	User Onboarding:
    o	Upon opening the app, users are presented with two options: "Get Started" or "I Have an Account".
    o	If the user selects "Get Started", they are directed to a screen to create an account.
    o	Account creation requires entering email, username, phone number, and password.
    o	Account details are stored in Firebase Datastore.

•	Dashboard:
    o	Upon successful login, users are presented with a dashboard.
    o	The dashboard displays:
    o	Total spending for the current month.
    o	Monthly budget entered by the user.
    o	Balance left (calculated as budget - monthly spending).
    o	Prominent expenses breakdown.
  

•	Navigation Icons:
    o	Icons for navigation are provided below the dashboard.
  
•	Icons include:
    o	Home
    o	View Budget
    o	Add Budget
    o	Calendar
    o	Card Section

•	View Budget:
    o	Users can view whether their budget is on track.
    o	Budget evaluation is based on predefined budget categories or "heads".
    o	Heads include:
    o	Healthy Food
    o	Junk Food
    o	Gifts
    o	Healthcare
    o	Accessories
    o	Clothes
    o	Home Grooming
    o	Travel
    o	Get Together
    o	Educational Subscriptions
    o	Entertainment
    o	Transport
    o	Security
    o	For each head, the app displays how much is left to spend.
    o	Users have the option to add a new budget category.

•	Add Budget:
    o	Users can enter their budget for various categories.
    o	Presumably, users can specify budgets for different expense categories or heads.

•	Calendar:
    o	The calendar section displays the user's monthly calendar.
    o	Expenses are shown per day on the calendar, allowing users to track their spending habits over time.
