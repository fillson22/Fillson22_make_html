def greate_file(file_name = 'index', bypass_html = true)
    html_code= <<~HTML
    <!DOCTYPE html>
        <html lang="ru">
    <head>
        <meta charset="UTF-8">
        <title>Тамагочи</title>
    </head>
    <body>
        <h1>Имя - #{@name}</h1>
        <p> Сыт - #{@full} </p>
        <p> Усталость - #{@fatigue}</p>
        <p> Возраст - #{@age} </p>
        <p> Здоровье - #{@health} </p>
        <div style="font-size:5rem;width:100%;text-align:center;">
        #{emodzi}
        </div>
        
    </body>
    </html>
    HTML
    
    fileHtml = File.expand_path("#{file_name}.html")
    File.open(fileHtml, 'w') { |f| f.write html_code }
end
