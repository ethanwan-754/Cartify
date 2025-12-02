Cartify - A Simple Shopping Search App

App Screenshot:

Home screen where a user can search for various products.

<img width="271" height="542" alt="Screenshot 2025-12-02 at 4 16 10 PM" src="https://github.com/user-attachments/assets/b4236818-99d1-43f0-b07c-32e4d5da5507" />


About This App

Cartify is an iOS application using SwiftUI, allowing the user to quickly search for products from a real online store API. The user simply types what they are looking for, and the app displays matching products.

- **Purpose:** To provide a neat and straightforward way of browsing and exploring products.
- **Tools Used:** SwiftUI, AsyncImage, Codable, URLSession, NavigationStack, Xcode.
---
Key Features
- Search Bar: Type in any query for specific product match.
- **Live Data:** Fetches products in real time from `https://api.escuelajs.co/api/v1/products`.

- **Product Cards:** Each product is displayed in a neat card with image, title, price, and category.

- **Detail Page:** Click on a product to view full details, a bigger image, description, price, and category.
- **Smoothen Navigation:** The code uses `NavigationStack` and `navigationDestination`.
- Safe Handling: It correctly handles optional or missing data to avoid application crashes.

---

## How It Works
1. **Search Page:** Type your product query and hit "Search".
2. **Results Page:** Browse through the listed products that match your search.

3. **Detail Page:** See everything about a product on one page.

A simple (?) interface can be designed as follows: -
Challenges & Lessons Learned
- Handling optional data from the API in order to avoid decoding-related issues.
- Making `ProductData` Hashable to support SwiftUI navigation.
Implement a case-insensitive filter to make the searches case insensitive.

---

Future Improvements
- Support multiple images for each product.
Sorting and filtering, such as by price, category, or popularity.

- Save favorite products locally.

- Implement a shopping cart to simulate purchases. - Polish the UI with animations and more advanced styling.
-
- --- Screenshots - <img width="271" height="542" alt="Screenshot 2025-12-02 at 4 16 10 PM" src="https://github.com/user-attachments/assets/57422bc4-3907-4b23-a9d2-ef52b8a6daa3" />
 – Main search screen - <img width="254" height="534" alt="Screenshot 2025-12-02 at 4 35 16 PM" src="https://github.com/user-attachments/assets/e62446ab-25a3-41d0-8aed-ed6d232a1a84" />
 – Search results - <img width="255" height="532" alt="Screenshot 2025-12-02 at 4 35 32 PM" src="https://github.com/user-attachments/assets/97000dde-097e-438a-8286-895d396522d0" />
 – Product detail page 
