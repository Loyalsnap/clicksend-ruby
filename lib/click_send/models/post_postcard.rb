# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostPostcard model
  class PostPostcard < BaseModel
    # Postcard file URLs
    # @return [List of String]
    attr_accessor :file_urls

    # Array of recipients
    # @return [List of PostRecipient]
    attr_accessor :recipients

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['file_urls'] = 'file_urls'
      @_hash['recipients'] = 'recipients'
      @_hash
    end

    def initialize(file_urls = nil,
                   recipients = nil)
      @file_urls = file_urls
      @recipients = recipients
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      file_urls = hash['file_urls']
      # Parameter is an array, so we need to iterate through it
      recipients = nil
      unless hash['recipients'].nil?
        recipients = []
        hash['recipients'].each do |structure|
          recipients << (PostRecipient.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      PostPostcard.new(file_urls,
                       recipients)
    end
  end
end
