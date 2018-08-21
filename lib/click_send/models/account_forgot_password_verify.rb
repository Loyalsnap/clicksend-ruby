# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # AccountForgotPasswordVerify Model.
  class AccountForgotPasswordVerify < BaseModel
    # ID of subaccount
    # @return [Integer]
    attr_accessor :subaccount_id

    # Activation token
    # @return [String]
    attr_accessor :activation_token

    # Password
    # @return [String]
    attr_accessor :password

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subaccount_id'] = 'subaccount_id'
      @_hash['activation_token'] = 'activation_token'
      @_hash['password'] = 'password'
      @_hash
    end

    def initialize(subaccount_id = nil,
                   activation_token = nil,
                   password = nil)
      @subaccount_id = subaccount_id
      @activation_token = activation_token
      @password = password
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subaccount_id = hash['subaccount_id']
      activation_token = hash['activation_token']
      password = hash['password']

      # Create object from extracted values.
      AccountForgotPasswordVerify.new(subaccount_id,
                                      activation_token,
                                      password)
    end
  end
end
