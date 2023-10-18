# Аквт.Расписание (mobile)

Информационная система "АКВТ.Расписание" (mobile) нацелена на обеспечение студентов и преподавателей удобным доступом к расписанию, а также на создание заметок для более эффективного управления учебным процессом.
---
## Функционал
"АКВТ.Расписание" - это удобная информационная система и мобильное приложение, предназначенные для учебного заведения "АКВТ". Ниже представлено описание ключевого функционала системы:

**1.Просмотр расписания:**

- Пользователь может выбирать группу, преподавателя или кабинет, чтобы просмотреть соответствующее расписание на текущий день.
- Интерфейс системы интуитивно понятен, что обеспечивает удобство пользования.

**2.Создание заметок:**

- Возможность создавать локальные заметки для определенных занятий.
- Заметки связаны с конкретным расписанием, что облегчает организацию информации.

**3.Виджет на главном экране:**

- Пользователь может добавить виджет на главный экран своего телефона.
- Виджет предоставляет обзор расписания на текущий или следующий день, обеспечивая быстрый доступ к необходимой информации.
---
## Структура информационной системы

### Пользовательский интерфейс
  - Главное меню
    - Выбор группы, преподавателя или кабинета
    - Кнопка "Просмотр расписания"
    - Кнопка "Создать заметку"
    - Кнопка "Добавить виджет на главный экран"
  - Просмотр расписания
    - Отображение выбранного расписания для текущего дня
    - Кнопка для переключения на следующий день
  - Создание заметок
    - Ввод текста заметки
    - Связь заметки с конкретным занятием
    - Сохранение заметки
  - Виджет на главном экране
    - Отображение расписания на текущий или следующий день
    - Возможность быстрого доступа к приложению через виджет
  ### База данных
  - Таблица "Группы"
    - Информация о группах
  - Таблица "Преподаватели"
    - Информация о преподавателях
  - Таблица "Кабинеты"
    - Информация о кабинетах
  - Таблица "Расписание"
    - Связь между группами, преподавателями и кабинетами с расписанием
    
### Локальное хранилище
  - Сохранение настроек пользователя (выбранная группа, преподаватель, кабинет)
  - Сохранение созданных заметок

### Логика приложения
  - Загрузка данных из базы данных
  - Отображение расписания в соответствии с выбранными параметрами (группа, преподаватель, кабинет)
  - Управление заметками (создание, редактирование, удаление)
  - Создание и обновление виджета на главном экране

### Взаимодействие с мобильной операционной системой
  - Добавление виджета на главный экран
  - Локальное сохранение настроек и заметок
