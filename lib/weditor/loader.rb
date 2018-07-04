require "weditor/loader/version"
require 'nokogiri'
require 'open-uri'

module Weditor
  module Loader
    class Template
      def self.parser (string)
        Nokogiri::HTML(string, nil, 'UTF-8')
      end
    end   
  end  
end
