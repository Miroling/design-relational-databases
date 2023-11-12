# Бази даних

## Типи

За моделлю організації даних розрізняють такі бази даних (БД):

- **Ієрархічна**. Ієрархічна база даних може бути представлена як дерево, що складається з об'єктів різних рівнів. Між об'єктами існують зв'язки типу «предок-нащадок». При цьому можлива ситуація, коли об'єкт не має нащадків або має їх декілька, тоді як у об'єкта-нащадка обов'язково тільки один предок.
- **Графова**. Така база даних подібна до ієрархічної, за винятком того, що кожен об'єкт може мати більше одного предка.
- **Реляційна**. Реляційна база даних зберігає дані у вигляді таблиць. Найвживаніші СКБД використовують реляційну модель даних.
- **Документна (Об'єктно-орієнтована)**. У базі даних цього виду дані оформляють у вигляді моделей об'єктів.
- **Ключ-значення**. У базі даних цього виду дані оформляють у вигляді моделей об'єктів.

## Структура реляційних БД

Реляційна база даних — форма зберігання інформації з використанням реляційної (англ. relation - відношення) моделі даних. Інакше кажучи, реляційна база даних — це база даних, яка сприймається користувачем як набір нормалізованих відношень різного ступеня.

```{figure} img/structure.png
---
name: structure-fig
width: 100%
align: center
---
Структура таблиці
```

База данних складається з таких осноівних елементів:

- **таблиця** - це є основа БД. Вона містить рядки. Кожен рядок складається з полів
- **рядок** (запис, кортеж) - це набір значень різних властивостей для певного об'єкта предметної області
- **стовпець** (поле, атрибут) - це набір різних значень однієї властивості для різних обєктів предметної області
- звязок - це відношення між 2 таблицями (з точки зору математики - відношення між множинами)
- індекс - це обєкт БД який створюється з метою підвищення швидкодії пошуку даних
- первинний ключ - це поле або группа полів, для забезпечення унікальності даних
- зовнішній ключ - це поле, в якому зберігається значення первинного ключа з іншої таблиці і використовується для встановлення звязку між рядками у різних таблицях

Ви можете також самостійно ознайомитися з більш просунутими можливостями такими як: *процедури, функції, відображення, курсори та транзакції.*

Отже, реляційна база данних - це система, в якій дані представлені у вигляді таблиць з чітко описаними властивостями, що дозволяє звертатися до них різними способами без необхідності зміни самої структури бази.

## Нормальні форми

Мета нормалізації полягає в усуненні недоліків структури бази даних, які можуть призводити до непотрібного дублювання інформації. Це дублювання, в свою чергу, може викликати різні аномалії та порушення цілісності даних. Для більшості практичних випадків достатньо володіти троьма нормальними формами:

- [Перша нормальна форма](https://uk.wikipedia.org/wiki/%D0%9F%D0%B5%D1%80%D1%88%D0%B0_%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0_%D1%84%D0%BE%D1%80%D0%BC%D0%B0) (1НФ, 1NF)
- [Друга нормальна форма](https://uk.wikipedia.org/wiki/%D0%94%D1%80%D1%83%D0%B3%D0%B0_%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0_%D1%84%D0%BE%D1%80%D0%BC%D0%B0) (2НФ, 2NF)
- [Третя нормальна форма](https://uk.wikipedia.org/wiki/%D0%A2%D1%80%D0%B5%D1%82%D1%8F_%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0_%D1%84%D0%BE%D1%80%D0%BC%D0%B0) (3НФ, 3NF)

**Отже виконання нормалізації структури бази данних робиться для:**

- запобігання дублювання інформації
- уникнення проблем із цілістністю даних (наприклад випадкове видалення, часткове видалення чи оновлення даних)

### 1НФ

Приведення бази даних до першої нормальної форми (1НФ) — це процес усунення повторення груп даних в реляційних таблицях. Основними кроками для досягнення 1НФ є:

1. **Визначення унікального первинного ключа:** Переконайтеся, що кожен запис у таблиці може бути унікально ідентифікований. Це вимагає визначення первинного ключа, який може включати один або кілька стовпців, залежно від потреб.
2. **Розділення повторюваних груп даних:** Переконайтеся, що в кожному стовпці таблиці міститься тільки атомарна (недільна) інформація. Уникайте масивів, списків чи груп стовпців, які можуть містити декілька значень.
3. **Створення окремих таблиць для повторюваних даних:** Якщо деякі дані повторюються в різних записах таблиці, розгляньте можливість створення окремої таблиці для цих даних і встановлення відповідного зв'язку між таблицями (часто за допомогою зовнішнього ключа).
4. **Видалення залежностей від часу:** Уникайте включення в таблицю атрибутів, які залежать від часу, таких як дата або період.

Після виконання цих кроків база даних буде у першій нормальній формі, що гарантує відсутність повторюваних груп даних та можливість їх унікальної ідентифікації.

### 2НФ

Приведення бази даних до другої нормальної форми (2НФ) включає усунення залежностей між стовпцями частково або повністю від первинного ключа. Основні кроки для досягнення 2НФ:

1. **Перевірка 1НФ:** Впевніться, що ваша база даних вже знаходиться в першій нормальній формі. Якщо ні, спочатку приведіть її до 1НФ.
2. **Визначення часткових залежностей:** Визначте, чи існують стовпці, які залежать від частини первинного ключа, а не від усього ключа. Це може виникнути, коли у вас є композитний ключ (складений з кількох стовпців), і деякі атрибути залежать лише від частини цього ключа.
3. **Створення окремих таблиць для часткових залежностей:** Для кожної часткової залежності створіть окрему таблицю, включаючи той частковий ключ та атрибути, які від нього залежать. Кожен стовпець, який пов'язаний із частковим ключем, перенесіть у нову таблицю.
4. **Встановлення зв'язків між таблицями:** Створіть зв'язки між новоствореними таблицями та основною таблицею за допомогою зовнішнього ключа. Завдяки цьому зв'язку можна буде здійснювати з'єднання таблиць.
5. **Перевірка цілісності даних:** Переконайтеся, що всі дані залишаються цілісними та коректними, а видалення чи оновлення записів не порушує залежності між таблицями.

Після цих кроків ваша база даних буде вдосконалена до другої нормальної форми, що дозволяє більш ефективно керувати та підтримувати зв'язки між даними.

### 3НФ

Приведення бази даних до третьої нормальної форми (3НФ) передбачає усунення транзитивних залежностей між стовпцями. Основні кроки для досягнення 3НФ включають:

1. **Перевірка 2НФ:** Впевніться, що ваша база даних вже знаходиться в другій нормальній формі. Якщо ні, спочатку приведіть її до 2НФ.
2. **Визначення транзитивних залежностей:** Визначте, чи існують стовпці, які залежать від неключових атрибутів, тобто таких, які не є частиною первинного ключа. Якщо такі залежності існують, це може вказувати на транзитивні залежності.
3. **Створення окремих таблиць для транзитивних залежностей:** Для кожної транзитивної залежності створіть окрему таблицю, включаючи ключові та атрибути, які від них залежать. Видаліть ці атрибути з вихідної таблиці.
4. **Встановлення зв'язків між новими таблицями:** Створіть зв'язки між новоствореними таблицями та основною таблицею за допомогою зовнішнього ключа. Це забезпечить можливість здійснювати з'єднання таблиць за ключами.
5. **Перевірка цілісності даних:** Переконайтеся, що всі дані залишаються цілісними, а видалення чи оновлення записів не порушує залежності між таблицями.

Після виконання цих кроків база даних буде знаходитися в третій нормальній формі, що дозволяє більш ефективно керувати залежностями між атрибутами та забезпечує більшу гнучкість при внесенні змін до бази даних.

## Відношення

У реляційних БД відношення між таблицями визначають взаємозв'язки між ними. Існують три основні відношення:

1. **Один до одного (One-to-One).** Наприклад: Таблиця *"Книга"* та таблиця *"Авторський опис"*. Кожна книга може мати лише один Авторський опис, і кожен Авторський опис відноситься лише до однієї книги.
2. **Один до багатьох (One-to-Many).** Наприклад: *"Жанри"* та таблиця *"Книги"*. Один жанр може мати багато книг, але кожна книга відноситься лише до одного жанру.
3. **Багато до багатьох (Many-to-Many).**  Наприклад: Таблиця *"Автори"* та таблиця *"Книги"*. Багато авторів може писати багато книжок, і кожна книга може мати багато авторів.

В реляційних базах даних використовуються зовнішні ключі для визначення цих відносин між таблицями використовуються зовнішні ключі **(Foreign keys)**.

Для прикладу створимо БД бібліотеки, яка буде зберігати інформацію про книги, авторів та жанри до яких відносяться ці книги.

```{figure} img/structure-relations-logical.drawio.svg
---
name: structure-relations-logical-fig
width: 100%
align: center
---
Логічна структура БД
```

На діаграмі {numref}`{name} <structure-relations-logical-fig>` ви можете побачити 2 основні типи відношень:

- **один до багатьох**, між таблицями `categories` та `books`
- **багато до багатьох**, між таблицями `authors` та `books`

Як правило, третій тип відношень - **один до одного**, який позначається просто лінією, використовують досить рідко на практиці.

На практиці відношення **багато до багатьох** реалізується через проміжну таблицю `books_authors`, як показано на {ref}`{name} <structure-relations-physical-fig>`

```{figure} img/structure-relations-physical.drawio.svg
---
name: structure-relations-physical-fig
width: 100%
align: center
---
Фізична структура БД
```