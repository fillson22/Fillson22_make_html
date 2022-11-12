require "sanitize"

class PageController
    def self.greate(body, name: 'index.html', bypass_html: false)
      body = Sanitize.fragment(body) unless bypass_html
      File.open(name, "w+") do |code|
        html_code = <<~HTML
        <!DOCTYPE html>
          <html lang="ru">
        <head>
          <meta charset="UTF-8">
          <title>Тамагочи</title>
        </head>
        <body>
          #{body}
          </div>
        </body>
        </html>
        HTML
            code.write(html_code)
      end
    end
end