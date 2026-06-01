# ⚡ SimplyByte — SaaS Payment Platform

> Production-ready SaaS backend with payment gateway integration, containerized deployment, and automated CI/CD pipeline.

[![Spring Boot](https://img.shields.io/badge/Spring_Boot-6DB33F?style=flat-square&logo=springboot&logoColor=white)]()
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)]()
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white)]()
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)]()
[![Java](https://img.shields.io/badge/Java-ED8B00?style=flat-square&logo=openjdk&logoColor=white)]()

---

## 📌 Project Overview

SimplyByte is a production-grade SaaS backend demonstrating end-to-end software engineering: REST API design, relational data modeling, third-party payment gateway integration, Docker containerization, and a full CI/CD pipeline via GitHub Actions.

Built as a portfolio-grade system with the same engineering standards applied in production environments.

---

## 🏗️ Architecture

```
                    ┌───────────────────────────┐
                    │      GitHub Actions CI/CD  │
                    │  build → test → dockerize  │
                    │       → deploy             │
                    └──────────────┬────────────┘
                                   │
                    ┌──────────────▼────────────┐
                    │     Docker Container       │
                    │  ┌─────────────────────┐  │
                    │  │  Spring Boot App     │  │
                    │  │  REST API Layer      │  │
                    │  │  Service Layer       │  │
                    │  │  Repository Layer    │  │
                    │  └────────┬────────────┘  │
                    └───────────┼───────────────┘
                                │
              ┌─────────────────┼──────────────────┐
              │                 │                  │
    ┌─────────▼──────┐  ┌───────▼──────┐  ┌───────▼────────┐
    │   MySQL DB     │  │  Worldline   │  │  External APIs │
    │  (Persistent)  │  │  Payment GW  │  │                │
    └────────────────┘  └──────────────┘  └────────────────┘
```

---

## ✨ Key Features

| Feature | Details |
|---|---|
| REST API | Spring Boot controllers with full CRUD operations |
| Payment Integration | Worldline/Ingenico payment gateway — checkout, capture, refund flows |
| Database | MySQL with JPA/Hibernate ORM, schema migrations |
| Containerization | Multi-stage Docker build for lean production image |
| CI/CD Pipeline | GitHub Actions: automated build, test, Docker push on every commit |
| Configuration | Externalized config via environment variables — 12-factor app compliant |
| Security | Spring Security for API authentication |

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Language | Java 17 |
| Framework | Spring Boot 3.x |
| ORM | Spring Data JPA / Hibernate |
| Database | MySQL 8 |
| Containerization | Docker, Docker Compose |
| CI/CD | GitHub Actions |
| Payment Gateway | Worldline / Ingenico |
| Build Tool | Maven |

---

## 🚀 Getting Started

### Prerequisites

- Java 17+, Maven, Docker, MySQL 8

### Run locally

```bash
git clone https://github.com/sanjeevKaruppaiah/project.git
cd project

# Configure DB credentials
cp src/main/resources/application.properties.example \
   src/main/resources/application.properties
# Edit: spring.datasource.url, username, password, payment gateway keys

# Build and run
mvn clean package
java -jar target/simplybyte-*.jar
```

### Run with Docker

```bash
docker-compose up --build
# API available at http://localhost:8080
```

---

## ⚙️ CI/CD Pipeline

```yaml
# On every push to main:
1. Checkout code
2. Set up JDK 17
3. Run Maven tests
4. Build Docker image
5. Push to Docker Hub
6. Deploy to staging
```

---

## 📁 Project Structure

```
simplybyte/
├── src/
│   ├── main/
│   │   ├── java/com/simplybyte/
│   │   │   ├── controller/    # REST endpoints
│   │   │   ├── service/       # Business logic
│   │   │   ├── repository/    # Data access layer
│   │   │   ├── model/         # JPA entities
│   │   │   └── config/        # Security, payment config
│   │   └── resources/
│   │       └── application.properties
├── Dockerfile
├── docker-compose.yml
└── .github/workflows/ci-cd.yml
```

---

## 🔭 Roadmap

- [ ] Add Redis caching layer for session management
- [ ] Implement webhook handler for async payment notifications
- [ ] Add Swagger/OpenAPI documentation
- [ ] Kubernetes deployment manifests

---

## 👤 Author

**Sanjeev Karuppaiah** — Backend & DevOps Engineer  
[LinkedIn](https://www.linkedin.com/in/sanjeevkaruppaiah) · [GitHub](https://github.com/sanjeevKaruppaiah)
