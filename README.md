# Pupu

Тестовый гем, включающий в себя библеотеку ViewComponents и TailwindCSS (частично, есть лишь заранее скомпилированный файл стилей, который содержит только используемые в библиотеке стили).

## Генерация главного css-файла гема

```bash
$(bundle show tailwindcss-ruby)/exe/tailwindcss -i app/assets/tailwind/application.css -o app/assets/builds/pupu.css --minify -w
```

- `bundle show tailwindcss-ruby` — выводит путь к гему `tailwindcss-ruby`, и подставляет этот путь в команду с помощью `$(...)`.
- `-i` — указывает входной CSS-файл.
- `-o` — указывает выходной файл, куда будет записан скомпилированный CSS.
- `-minify` — минимизирует выходной файл, удаляя пробелы, комментарии и созкращая CSS-код.
- `-w` — следит за изменениями во входном файле (`application.css`) и автоматически пересобирает `pupu.css`, если что-то меняется.

## Установка гема

Добавить в Gemfile приложения.

```ruby
gem "pupu"
```

Затем выполнить команду для установки гема и зависимостей в приложение.

```bash
$ bundle
```

Добавить в файле `application.html.erb` внутрь тега `<head>` строку для импорта ассетов гема.

```erb
<%= stylesheet_link_tag "pupu", media: "all", "data-turbo-track": "reload" %>
```
