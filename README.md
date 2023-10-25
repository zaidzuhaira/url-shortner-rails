# URL Shortener with Rails

Welcome to the URL Shortener, a simple web application built with Ruby on Rails that allows you to shorten long URLs for easy sharing. This README will provide you with all the information you need to get started with the application.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

The URL Shortener provides the following main functionalities:

1. **Shorten URLs**: Convert long URLs into shorter, more manageable links, making it easier to share on social media, in messages, or anywhere else.

2. **Redirects**: When someone clicks on a shortened URL, they are redirected to the original long URL.

3. **Statistics**: Users can view statistics for each shortened URL, including the number of clicks.

## Getting Started

1. Clone repository

2. Install Ruby version

```sh
$ rvm install 2.7.3
```

3. Install PostgreSQL >9.4 and start it

```sh
$ brew install postgresql
```

4. Run setup

```sh
$ bin/setup
```

6. Run specs

```sh
$ bin/rspec
```

7. Start the server

```sh
$ bin/rails server
```

8. Open your browser

[http://localhost:3000](http://localhost:3000/)

## Usage

1. **Shorten a URL**:
   - After starting the application, you can shorten a URL by entering it.
   - You will receive a shortened URL that you can use to share the original link.

2. **View Statistics**:
   - Click on any shortened URL to view statistics, including the number of clicks.

## Contributing

We welcome contributions to the URL Shortener project. If you'd like to contribute, please follow these steps:

1. Fork the repository on GitHub.
2. Clone your fork locally.
3. Create a new branch for your feature or bug fix.
4. Make your changes and commit them with descriptive messages.
5. Push your branch to your fork on GitHub.
6. Create a pull request to the main repository.

Please ensure your code follows the project's coding style and includes relevant tests.

## License

This URL Shortener is open-source and available under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as needed.


