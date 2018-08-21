# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Verifies an account by token that should have been sent to the user's phone
  class AccountVerify < BaseModel
    # Country code
    # @return [String]
    attr_accessor :country

    # User's phone number
    # @return [String]
    attr_accessor :user_phone

    # Type of verification
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country'] = 'country'
      @_hash['user_phone'] = 'user_phone'
      @_hash['type'] = 'type'
      @_hash
    end

    def initialize(country = nil,
                   user_phone = nil,
                   type = 'sms')
      @country = country
      @user_phone = user_phone
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country = hash['country']
      user_phone = hash['user_phone']
      type = hash['type'] ||= 'sms'

      # Create object from extracted values.
      AccountVerify.new(country,
                        user_phone,
                        type)
    end
  end
end
