# Sample Maven Web Application

A simple Maven-based Java web application that builds to a `.war` file, includes a Calculator service, and JUnit 5 tests.

## Build & Run

### Prerequisites

- Java 17+
- Maven 3+

### Commands

```bash
mvn clean package
```

The `.war` will be in the `target/` folder.

## Directory Structure

```
src/
├── main/
│   ├── java/...            # Java source code
│   └── webapp/             # Web content (JSP, HTML)
└── test/
    └── java/...            # Unit tests
```
