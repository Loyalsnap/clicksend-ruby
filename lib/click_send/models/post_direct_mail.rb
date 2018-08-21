# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Post direct mail model
  class PostDirectMail < BaseModel
    # Campaign name
    # @return [String]
    attr_accessor :name

    # Campaign file URLs (maximum 2)
    # @return [List of String]
    attr_accessor :file_urls

    # Document size - A5 or DL
    # @return [String]
    attr_accessor :size

    # PostDirectMailArea model
    # @return [List of PostDirectMailArea]
    attr_accessor :areas

    # Leave blank for immediate delivery. Your schedule time in unix format.
    # @return [Integer]
    attr_accessor :schedule

    # Your method of sending e.g. 'wordpress', 'php', 'c#'.
    # @return [String]
    attr_accessor :source

    # A custom string for your own reference
    # @return [String]
    attr_accessor :custom_string

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['file_urls'] = 'file_urls'
      @_hash['size'] = 'size'
      @_hash['areas'] = 'areas'
      @_hash['schedule'] = 'schedule'
      @_hash['source'] = 'source'
      @_hash['custom_string'] = 'custom_string'
      @_hash
    end

    def initialize(name = nil,
                   file_urls = nil,
                   size = nil,
                   areas = nil,
                   schedule = 0,
                   source = 'sdk',
                   custom_string = nil)
      @name = name
      @file_urls = file_urls
      @size = size
      @areas = areas
      @schedule = schedule
      @source = source
      @custom_string = custom_string
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      file_urls = hash['file_urls']
      size = hash['size']
      # Parameter is an array, so we need to iterate through it
      areas = nil
      unless hash['areas'].nil?
        areas = []
        hash['areas'].each do |structure|
          areas << (PostDirectMailArea.from_hash(structure) if structure)
        end
      end
      schedule = hash['schedule'] ||= 0
      source = hash['source'] ||= 'sdk'
      custom_string = hash['custom_string']

      # Create object from extracted values.
      PostDirectMail.new(name,
                         file_urls,
                         size,
                         areas,
                         schedule,
                         source,
                         custom_string)
    end
  end
end
