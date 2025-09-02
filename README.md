
# 📚 Links-To-All

A simple **Java 17 + Spring Boot 3** backend project that organizes and serves categorized links (e.g., All Purpose, TV/Movies, Anime, Software, Games, Music).  
It uses an **H2 in-memory database** with preloaded data and exposes REST APIs to fetch categories and their links.  


## 🚀 Features

- Organize links under categories (e.g., Anime, Music, Software).
- CRUD operations for both categories and links.
- Preloaded with sample data (`schema.sql` + `data.sql`).
- Fetch all categories with their links or just a single category with its links.
- Lightweight H2 database (in-memory).
- REST API design with DTOs.


## 🛠️ Tech Stack

- **Java 17**
- **Spring Boot 3**
- **Spring Data JPA**
- **H2 Database**
- **Lombok**


## ⚙️ Setup & Run

- Clone the repo
```bash
git clone https://github.com/<your-username>/links-to-all.git
cd links-to-all
```

- Build the project
  Make sure you have Java 17 and Maven installed.
```bash
mvn clean install
```

- Run the application
```bash
mvn spring-boot:run
```

- Application will start on :
```bash
http://localhost:8080
```


## 🗄️ Database

This project uses an H2 in-memory database, initialized with schema.sql and data.sql.

- H2 Console: http://localhost:8080/h2-console
- JDBC URL: jdbc:h2:mem:linkstoalldb
- Username: admin
- Password: admin123


## 📡 API Endpoints

### Categories

- GET /api/categories → Get all categories
- GET /api/categories/{id} → Get single category
- POST /api/categories → Create new category
- PUT /api/categories/{id} → Update category
- DELETE /api/categories/{id} → Delete category

### Links

- GET /api/links → Get all links
- GET /api/links/{id} → Get single link
- POST /api/links → Create new link
- PUT /api/links/{id} → Update link
- DELETE /api/links/{id} → Delete link

## 🤝 Contributing

I accept any contribution to the codebase whether it is a small bugfix or an exciting new feature. Just create a pull request and I will look into it as soon as I can.

## 📜 License

This project is open source and available under the
[MIT License](https://choosealicense.com/licenses/mit/).