# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Array of SmsMessage items
  class SmsMessageCollection < BaseModel
    # Array of SmsMessage items
    # @return [List of SmsMessage]
    attr_accessor :messages

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['messages'] = 'messages'
      @_hash
    end

    def initialize(messages = nil)
      @messages = messages
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
          messages << (SmsMessage.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      SmsMessageCollection.new(messages)
    end
  end
end
