# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'json'
require 'singleton'

module YandexTranslator
  # configuration
  class Config
    attr_accessor :api_key, :default_lang
    def self.api_key
      @api_key
    end

    def self.api_key=(api_key)
      @api_key = api_key
    end

    def self.default_lang
      @default_lang
    end

    def self.default_lang=(default_lang)
      @default_lang = default_lang
    end
  end
  # client yandex api translate
  class Api

    def configurate(options = {})
      Config.api_key = options[:api_key]
      Config.default_lang = options[:default_lang] || 'en'
    rescue StandardError
      'Input data error. Please check input data.'
    end

    def translate(options = {})
      lang = options[:lang] || Config.default_lang || 'ru'
      text = options[:text] || 'Hello'
      uri = URI('https://translate.yandex.net/api/v1.5/tr.json/translate?' \
        "key=#{Config.api_key}&lang=#{lang}&text=#{URI.encode(text)}")
      res = Net::HTTP.get(uri)
      JSON.parse(res)['text']
    rescue StandardError
      'Request error. Please check input data or internet connection.'
    end

    def languages
      uri = URI('https://translate.yandex.net/api/v1.5/tr.json/getLangs?' \
        "key=#{Config.api_key}&ui=en")
      res = Net::HTTP.get(uri)
      JSON.parse(res)['langs']
    rescue StandardError
      'Request error. Please check input data or internet connection.'
    end
  end
end

# example
# api = YandexTranslator::Api.new
# api.configurate(api_key: 'trnsl.1.1.20191023T101011Z.d0ab8730fe62b788.be13f4dcbdd74247838474a096b5a4dbe82384fc', default_lang: 'ru')
# api.translate(text: 'Hello world', lang: 'zh')
# api.languages
