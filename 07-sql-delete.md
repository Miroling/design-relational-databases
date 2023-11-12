# Видалення

Для видалення одного рядка з будь-якої таблиці в базі даних використовуйте SQL-запит `DELETE`. Припустимо, вам потрібно видалити один рядок з таблиці `books` за певною умовою (наприклад, за id рядка рівного 1). Ось приклад:

```{embed} #select-books-before-delete
:remove-input: false
:remove-output: false
```

```{embed} #delete-records-fail
:remove-input: false
:remove-output: false
```

У цьому запиті:
- `DELETE FROM` вказує, що ви видаляєте рядки з таблиці.
- `books` - це назва вашої таблиці.
- `WHERE` - визначає умову, за якою ви видаляєте рядки. У цьому випадку, ми видаляємо рядок, де поле `id` рівне 1.

Будьте обережні при використанні команди `DELETE`, оскільки вона безповоротно видаляє дані з таблиці. Переконайтеся, що ви коректно визначаєте умову для видалення, щоб уникнути непередбачуваних змін у вашій базі даних.

Як ви помітили у нас виникла помилка під час виконання запиту [видалення рядку з таблиці `books`](#delete-records-fail), тому треба визначити звʼязок з тексту помилки та видалити повʼязані записи, після чого можна повторити запит.

```{embed} #select-books-before-delete
:remove-input: false
:remove-output: false
```

```{embed} #delete-records-success
:remove-input: false
:remove-output: false
```

```{embed} #select-books-after-delete
:remove-input: false
:remove-output: false
```