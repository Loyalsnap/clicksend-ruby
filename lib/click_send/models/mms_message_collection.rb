# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Array of MmsMessage items
  class MmsMessageCollection < BaseModel
    # Media file you want to send
    # @return [String]
    attr_accessor :media_file

    # Array of MmsMessage models
    # @return [List of MmsMessage]
    attr_accessor :messages

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['media_file'] = 'media_file'
      @_hash['messages'] = 'messages'
      @_hash
    end

    def initialize(media_file = nil,
                   messages = nil)
      @media_file = media_file
      @messages = messages
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      media_file = hash['media_file']
      # Parameter is an array, so we need to iterate through it
      messages = nil
      unless hash['messages'].nil?
        messages = []
        hash['messages'].each do |structure|
          messages << (MmsMessage.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      MmsMessageCollection.new(media_file,
                               messages)
    end
  end
end
