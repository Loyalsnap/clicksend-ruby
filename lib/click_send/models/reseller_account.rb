# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # ResellerAccount model
  class ResellerAccount < BaseModel
    # Account username
    # @return [String]
    attr_accessor :username

    # Account password (unhashed)
    # @return [String]
    attr_accessor :password

    # Account email
    # @return [String]
    attr_accessor :user_email

    # Account phone number
    # @return [String]
    attr_accessor :user_phone

    # Account owner first name
    # @return [String]
    attr_accessor :user_first_name

    # Account owner last name
    # @return [String]
    attr_accessor :user_last_name

    # Account name (usually company name)
    # @return [String]
    attr_accessor :account_name

    # Country of account holder
    # @return [String]
    attr_accessor :country

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['username'] = 'username'
      @_hash['password'] = 'password'
      @_hash['user_email'] = 'user_email'
      @_hash['user_phone'] = 'user_phone'
      @_hash['user_first_name'] = 'user_first_name'
      @_hash['user_last_name'] = 'user_last_name'
      @_hash['account_name'] = 'account_name'
      @_hash['country'] = 'country'
      @_hash
    end

    def initialize(username = nil,
                   password = nil,
                   user_email = nil,
                   user_phone = nil,
                   user_first_name = nil,
                   user_last_name = nil,
                   account_name = nil,
                   country = nil)
      @username = username
      @password = password
      @user_email = user_email
      @user_phone = user_phone
      @user_first_name = user_first_name
      @user_last_name = user_last_name
      @account_name = account_name
      @country = country
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      username = hash['username']
      password = hash['password']
      user_email = hash['user_email']
      user_phone = hash['user_phone']
      user_first_name = hash['user_first_name']
      user_last_name = hash['user_last_name']
      account_name = hash['account_name']
      country = hash['country']

      # Create object from extracted values.
      ResellerAccount.new(username,
                          password,
                          user_email,
                          user_phone,
                          user_first_name,
                          user_last_name,
                          account_name,
                          country)
    end
  end
end
