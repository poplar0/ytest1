# -*- encoding : utf-8 -*-
require "yinxiangma/configuration"
require "yinxiangma/client_helper"
require "yinxiangma/valid"

module Yinxiangma
  
  
  YINXIANGMA_API_SERVER_URL = 'http://api.hinside.cn/index.php'
  YINXIANGMA_REGISTER_URL   = 'http://api.hinside.cn/index.php'
  YINXIANGMA_TOKEN_URL      = 'https://api.hinside.cn/default.php'
  YINXIANGMA_VALID_URL      = 'https://api.hinside.cn/default.php'  
  YINXIANGMA_DISPLAY_MODE   = 'live'
  YINXIANGMA_PUBLISHER_KEY  = 'b6ccaa33ebb72559e03e2f6aeb3764bc'
  YINXIANGMA_PRI
  
  SKIP_VALID_ENV = 'test'
  

  def self.configuration
    @configuration ||= Configuration.new
  end
  
  def self.configure
    config = configuration
    yield(config)
  end
    
  class YinxiangmaError < StandardError
  end
end

if defined?(Rails)
  require "yinxiangma/rails"
end
