# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Array of FaxMessage items
  class FaxMessageCollection < BaseModel
    # Array of FaxMessage items
    # @return [List of FaxMessage]
    attr_accessor :messages

    # URL of file to send
    # @return [String]
    attr_accessor :file_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['messages'] = 'messages'
      @_hash['file_url'] = 'file_url'
      @_hash
    end

    def initialize(messages = nil,
                   file_url = nil)
      @messages = messages
      @file_url = file_url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      messages = nil
      unless hash['messages'].nil?
        messages = []
        hash['messages'].each do |structure|
          messages << (FaxMessage.from_hash(structure) if structure)
        end
      end
      file_url = hash['file_url']

      # Create object from extracted values.
      FaxMessageCollection.new(messages,
                               file_url)
    end
  end
end
