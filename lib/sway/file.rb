require 'sway/base'
require 'sway/extensions'
require 'sway/json'
require 'sway/yaml'
require 'sway/csv'
require 'active_support'

module Sway
  class File < Sway::Base
    def initialize(array_or_hash_path, *options)
      raise 'Not file path argument.' unless ::File.exist?(array_or_hash_path)
      @filename_extension = ::File.extname(array_or_hash_path).delete('.')
      raise 'Sorry, unsupported extension.' unless Extensions::ALL.include?(@filename_extension)
      @file = ::File.open(array_or_hash_path, 'r').read
      @options = options.extract_options!
      filename_extension_instance = create_filename_extension_instance
      @mash = filename_extension_instance.mash
      @mashes = filename_extension_instance.mashes
    end

    private
    def create_filename_extension_instance
      case @filename_extension
      when *Extensions::YAML
        Sway::YAML.new(@file)
      when *Extensions::JSON
        Sway::JSON.new(@file)
      when *Extensions::CSV
        Sway::CSV.new(@file, @options)
      end
    end
  end
end
