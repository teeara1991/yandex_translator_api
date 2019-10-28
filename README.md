Client for yandex translator api.   
Яндекс переводчик

Установка 
Способ 1
- Склонируйте на ваше устройство репозиторий https://github.com/teeara1991/yandex_translator_api.git  
- Зайдите в папку и найдите файл yandex_translator_api-1.1.gem  
- Откройте терминал, убедитесь, что находитесь в папке с файлом yandex_translator_api-1.1.gem, 
выполните команду gem install --local yandex_translator_api
Способ 2
- Откройте терминал и выполните команду gem install yandex_translator_api

Получение ключа яндекс  
- Получите api_key из https://tech.yandex.ru/keys/get/?service=trnsl.

Работа  
- Подключите yandex_translator_api в ваш проект, require 'yandex_translator_api'  
- Создайте обьект типа api = YandexTranslatorApi::Api.new 
- Для создания первоначальной конфигурации используйте метод  .configurate(api_key: "YOUR KEY", default_lang: "en") (обязательно) 
- Для перевода используйте метод  .translate(text: "YOUR TEXT", lang: "FINISH LANGUAGE")  
- Для получения списка всех доступных языков с кодами, используйте метод  .languages  


Особенности  
- параметры default_lang и lang необходимо передавать в нижнем регистре. "ru", "en", "zh"

Содействие  
Отчеты об ошибках и запросы на улучшения гема приветствуются на GitHub в https://github.com/teeara1991/yandex_translator_api.git
