# Hatchways Work Simulation

## General Instructions

For this project, you are provided a starting code for a back end JSON API and are to build on this
starting code by adding new features. The starting code is for the application described in the
section below, and you can find your assigned work on the Issues tab of this repository. Please open
a **single pull request** with all of the changes needed to implement the features described in the
issue, then return to the Hatchways dashboard to mark your assessment as completed.

We will use [this rubric](https://drive.google.com/file/d/1Lfn6JnanBhuSjMDQaIdIBk1_QK7i9mNU/view) to
evaluate your submission. Please note that if your submission does not attempt to complete all of
the requirements, or does not pass our plagiarism screening, we will be unable to provide feedback
on it. Please contact hello@hatchways.io if you have any questions or concerns.

---

## Introduction to this Application

You will be modifying an existing server that provides an API for a blogging website. The database
for the API has a collection of blog `Posts`, which include information about each blog post such as
the text and author of the post, how many times the post has been “liked”, etc. Additionally, the
database contains `Users`. Each blog post can have multiple authors, which correspond to users in
the database (this association is stored in the database as `UserPost`). A new blog post must have
at least one author that is a user already registered in the database.

Currently, the starting code has the following API routes already implemented:

- POST `/api/register` - Register a new user
- POST `/api/login` - Login for an existing user
- POST `/api/posts` - Create a new post

Only a logged in `User` can use this blogging website API, with the exception of the login and
register routes.

---

## System Requirements

- Install [Java](https://www.oracle.com/java/technologies/downloads/) 17+
- Install [Gradle](https://gradle.org/install/)

---

## Server

### System dependencies

- [Java 17](https://www.oracle.com/java/technologies/downloads/)
- [Spring Boot](https://spring.io/projects/spring-boot) - framework
- [Spring Data JPA](https://spring.io/projects/spring-data-jpa)
  and [SQLite](https://www.sqlite.org/) for the database (
  you will not be required to write any database queries in order to complete this project)

### Setup

### Install Gradle

Gradle is required to run this project. The installation instructions can be
found [here](https://gradle.org/install/).

### Database

**Note: No database setup should be required to get started with running the project.**

This project uses SQLite, which stores your tables inside a file.
The [`application.properties`](src/main/resources/application.properties) file configures the
project to
use `database.db` for development. `database.db` is committed into the repository and already has
seed data

#### Seed Data

We've included sample data that the application has been configured to use. If you want to re-seed
the database, you can delete `database.db`. The next time you run `gradle bootRun`, a new, empty
database will be created for you and seeded with sample data. Viewing the database file itself is
not required to complete your tasks, but if you would like to, an application
like [DB Browser for SQLite](https://sqlitebrowser.org/) can be used.

Sample data file is located in the [`resources`](./src/main/resources) directory.

### Format Code

This project is formatted using [google-java-format](https://github.com/google/google-java-format).

### Unit Tests

`gradle test` - runs all the tests. The tests
use [JUnit 5](https://junit.org/junit5/docs/current/user-guide/). We've
provided you with a few example tests to get you started.

### Run Local Server

`gradle bootRun` - installs all dependencies and launches the server on port 8080.

**Note: it is typical for this command to stop at `80% EXECUTING`. The application has been started
when you see a log
similar to the one below:**

```
Started BlogPostsApplication in 5.16 seconds (JVM running for 5.579)
```

### Testing

You can use cURL or a tool like [Postman](https://www.postman.com/) to test the API.

### Example Curl Commands

You can log in as one of the seeded users with the following curl command:

```bash
curl --location --request POST 'localhost:8080/api/login' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "thomas",
    "password": "123456"
}'
```

Then you can use the token that comes back from the /login request to make an authenticated request to create a new blog post

```bash
curl --location --request POST 'localhost:8080/api/posts' \
--header 'x-access-token: your-token-here' \
--header 'Content-Type: application/json' \
--data-raw '{
    "text": "This is some text for the blog post...",
    "tags": ["travel", "hotel"]
}'
```