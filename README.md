# Проектування реляційних баз даних
Практичний майстер-клас

[![10.5281/zenodo.xxxx](https://zenodo.org/badge/doi/10.5281/zenodo.xxxx.svg)](https://doi.org/10.5281/zenodo.xxxx)

## Мета
- Навчити студентів проектувати та створювати бази даних на практиці
- Ознайомити з оптимізацією SQL-запитів до БД

## Запуск середовища
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Miroling/design-relational-databases)

## План
1. Знайомство (2хв)
2. Типи баз данних та сфера їх застосування. Реляційні БД. - 5 хв.
4. Проектування БД. Розуміння нормальних форм. - 15 хв.
5. Structured query language (SQL) - 60 хв.
    1. Створення таблиць з певинним ключем
    2. Створення звʼязків
    3. Заповнення данними
    4. Редагування данних
    5. Видалення данних
    6. Об`єднання таблиць
9. Індекси. Оптимізація запитів до БД - 10 хв.
11. Питання та відповіді. - 10 хв.

Орієнтовний час заняття 1 год. 45 хв.

## Вимоги до початку (бажано ознайомитися):
- Базове розуміння [3-х нормальних форм](https://uk.wikipedia.org/wiki/%D0%9D%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D1%96%D0%B7%D0%B0%D1%86%D1%96%D1%8F_%D0%B1%D0%B0%D0%B7_%D0%B4%D0%B0%D0%BD%D0%B8%D1%85)
- Вміння читати ER-діаграми [Что такое ER-диаграмма и как ее создать?](https://www.lucidchart.com/pages/ru/erd-%D0%B4%D0%B8%D0%B0%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0)
- 
## Рекомендована література:
1. [Бен Форта. SQL за 10 минут, 4-е издание](https://rozetka.com.ua/12510647/p12510647/)
2. [Entity Relationship Diagram](https://plantuml.com/ru/ie-diagram)


## Contribute

### Building the book

If you'd like to develop and/or build the Практичний майстер-клас із проектування реляційних баз даних book, you should:

1. Clone this repository
2. Run `pip install -r requirements.txt` (it is recommended you do this within a virtual environment)
3. (Optional) Edit the books source files located in the `design-relational-databases/` directory
4. Run `jupyter-book clean book/` to remove any existing builds
5. Run `jupyter-book build book/`

A fully-rendered HTML version of the book will be built in `book/_build/html/`.

### Hosting the book

Please see the [Jupyter Book documentation](https://jupyterbook.org/publish/web.html) to discover options for deploying a book online using services such as GitHub, GitLab, or Netlify.

For GitHub and GitLab deployment specifically, the [cookiecutter-jupyter-book](https://github.com/executablebooks/cookiecutter-jupyter-book) includes templates for, and information about, optional continuous integration (CI) workflow files to help easily and automatically deploy books online with GitHub or GitLab. For example, if you chose `github` for the `include_ci` cookiecutter option, your book template was created with a GitHub actions workflow file that, once pushed to GitHub, automatically renders and pushes your book to the `gh-pages` branch of your repo and hosts it on GitHub Pages when a push or pull request is made to the main branch.

## Contributors

We welcome and recognize all contributions. You can see a list of current contributors in the [contributors tab](https://github.com/miroling/design-relational-databases/graphs/contributors).

## Credits

This project is created using the excellent open source [Jupyter Book project](https://jupyterbook.org/) and the [executablebooks/cookiecutter-jupyter-book template](https://github.com/executablebooks/cookiecutter-jupyter-book).
