# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Email-to-SMS Allowed Address
  class EmailSMSAddress < BaseModel
    # Your email address
    # @return [String]
    attr_accessor :email_address

    # Your sender id
    # @return [String]
    attr_accessor :from

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['email_address'] = 'email_address'
      @_hash['from'] = 'from'
      @_hash
    end

    def initialize(email_address = nil,
                   from = nil)
      @email_address = email_address
      @from = from
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email_address = hash['email_address']
      from = hash['from']

      # Create object from extracted values.
      EmailSMSAddress.new(email_address,
                          from)
    end
  end
end
