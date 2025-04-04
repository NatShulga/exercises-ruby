
Одна из идиоматических конструкций в Ruby – функция, принимающая последним параметром хеш. Обычно этот хеш содержит опции. Такое часто встречается и во встроенных функциях, и в библиотеках:

```ruby
# link_to(body, url, html_options = {})
link_to 'blog', 'https://ru.hexlet.io/blog?utm_source=code-basics&utm_medium=referral&utm_campaign=blog&utm_content=main-blog-page', { id: 'news', class: 'article' }
# <a href="https://ru.hexlet.io/blog?utm_source=code-basics&utm_medium=referral&utm_campaign=blog&utm_content=main" class="article" id="news">blog</a>
```

В Ruby добавлен «синтаксический сахар», позволяющий опускать скобки в подобных ситуациях. Вызов выше в реальном коде выглядит так:

```ruby
link_to 'blog', 'https://ru.hexlet.io/blog', id: 'news', class: 'article'
```

К такому способу записи нужно немного привыкнуть, так как может быть не сразу понятно, что к чему относится. Но потом станет видно, насколько он удобен и практичен. Это ещё одна из его «фишек», которая помогает строить [языки предметной области](https://github.com/aasm/aasm) (DSL). Из-за небольшого количества дополнительного синтаксиса код на Ruby может выглядеть просто, как текст. Ниже пример роутинга (отвечает за формирование адресов страниц сайта) из Rails:

```ruby
# В большинстве других языков подобная конструкция либо невозможна,
# либо получится в разы сложнее и загроможденнее символами
resources :companies, only: [:show, :edit, :update, :destroy] do
  resources :orders, only: [:create] do
    member do
      get :payment
    end
  end
end
```
