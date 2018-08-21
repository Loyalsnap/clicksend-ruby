# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Accounts that are maintained under a main account
  class Subaccount < BaseModel
    # Your new api username.
    # @return [String]
    attr_accessor :api_username

    # Your new password
    # @return [String]
    attr_accessor :password

    # Your new email.
    # @return [String]
    attr_accessor :email

    # Your phone number in E.164 format.
    # @return [String]
    attr_accessor :phone_number

    # Your firstname
    # @return [String]
    attr_accessor :first_name

    # Your lastname
    # @return [String]
    attr_accessor :last_name

    # Your access users flag value, must be 1 or 0.
    # @return [Integer]
    attr_accessor :access_users

    # Your access billing flag value, must be 1 or 0.
    # @return [Integer]
    attr_accessor :access_billing

    # Your access reporting flag value, must be 1 or 0.
    # @return [Integer]
    attr_accessor :access_reporting

    # Your access contacts flag value, must be 1 or 0.
    # @return [Integer]
    attr_accessor :access_contacts

    # Your access settings flag value, must be 1 or 0.
    # @return [Integer]
    attr_accessor :access_settings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['api_username'] = 'api_username'
      @_hash['password'] = 'password'
      @_hash['email'] = 'email'
      @_hash['phone_number'] = 'phone_number'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['access_users'] = 'access_users'
      @_hash['access_billing'] = 'access_billing'
      @_hash['access_reporting'] = 'access_reporting'
      @_hash['access_contacts'] = 'access_contacts'
      @_hash['access_settings'] = 'access_settings'
      @_hash
    end

    def initialize(api_username = nil,
                   password = nil,
                   email = nil,
                   phone_number = nil,
                   first_name = nil,
                   last_name = nil,
                   access_users = 1,
                   access_billing = 1,
                   access_reporting = 1,
                   access_contacts = 0,
                   access_settings = 1)
      @api_username = api_username
      @password = password
      @email = email
      @phone_number = phone_number
      @first_name = first_name
      @last_name = last_name
      @access_users = access_users
      @access_billing = access_billing
      @access_reporting = access_reporting
      @access_contacts = access_contacts
      @access_settings = access_settings
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      api_username = hash['api_username']
      password = hash['password']
      email = hash['email']
      phone_number = hash['phone_number']
      first_name = hash['first_name']
      last_name = hash['last_name']
      access_users = hash['access_users'] ||= 1
      access_billing = hash['access_billing'] ||= 1
      access_reporting = hash['access_reporting'] ||= 1
      access_contacts = hash['access_contacts'] ||= 0
      access_settings = hash['access_settings'] ||= 1

      # Create object from extracted values.
      Subaccount.new(api_username,
                     password,
                     email,
                     phone_number,
                     first_name,
                     last_name,
                     access_users,
                     access_billing,
                     access_reporting,
                     access_contacts,
                     access_settings)
    end
  end
end
