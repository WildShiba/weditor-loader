require "weditor/loader/version"
require 'nokogiri'
require 'open-uri'

module Weditor
  module Loader
    class Template
      def self.load (path)
        Nokogiri::HTML(File.open(path), nil, 'UTF-8')
      end
    end   
  end  
end
