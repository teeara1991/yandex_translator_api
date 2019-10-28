Client for yandex translator api.   
Яндекс переводчик

Установка  
- Склонируйте на ваше устройство репозиторий https://github.com/teeara1991/yandex_translator_api.git  
- Зайдите в папку и найдите файл yandex_translator-1.0.gem  
- Откройте терминал, убедитесь, что находитесь в папке с файлом yandex_translator-1.0.gem, 
выполните команду gem install --local yandex_translator

Получение ключа яндекс  
- Получите api_key из https://tech.yandex.ru/keys/get/?service=trnsl.

Работа  
- Подключите yandex_translator в ваш проект, require 'yandex_translator'  
- Создайте обьект типа api = YandexTranslator::Api.new 
- Для создания первоначальной конфигурации используйте метод  .configurate(api_key: "YOUR KEY", default_lang: "en") (обязательно) 
- Для перевода используйте метод  .translate(text: "YOUR TEXT", lang: "FINISH LANGUAGE")  
- Для получения списка всех доступных языков с кодами, используйте метод  .languages  

<<<<<<< HEAD
Особенности
=======
Особенности  
>>>>>>> d541bb36894e54746ce15328a40d00fe782086d9
- параметры default_lang и lang необходимо передавать в нижнем регистре. "ru", "en", "zh"

Содействие  
Отчеты об ошибках и запросы на улучшения гема приветствуются на GitHub в https://github.com/teeara1991/yandex_translator_api.git
