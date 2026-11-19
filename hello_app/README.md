# hello_app

Перший Rails-застосунок (Лабораторна робота №2): міні-мікроблог
з користувачами (Users) та мікропостами (Microposts).

## Запуск

```sh
bundle install
ruby bin/rails db:migrate
ruby bin/rails db:seed
ruby bin/rails server
```

Потім відкрийте http://localhost:3000

## Сторінки

| URL           | Що показує                                  |
|---------------|---------------------------------------------|
| `/`           | список користувачів (`users#index`)         |
| `/users`      | список користувачів, створення/редагування  |
| `/microposts` | список мікропостів                          |
| `/hello`      | «Hello world!»                              |
| `/goodbye`    | «goodbye, world!»                           |

## Консоль

```sh
ruby bin/rails console
>> first_user = User.first
>> first_user.microposts
>> micropost = first_user.microposts.first
>> micropost.user
```

## Тести

```sh
ruby bin/rails test
```
