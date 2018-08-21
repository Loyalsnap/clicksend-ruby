# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Credit card model
  class CreditCard < BaseModel
    # Credit card number
    # @return [String]
    attr_accessor :number

    # Expiry month of credit card
    # @return [Integer]
    attr_accessor :expiry_month

    # Expiry year of credit card
    # @return [Integer]
    attr_accessor :expiry_year

    # CVC number of credit card
    # @return [Integer]
    attr_accessor :cvc

    # Name printed on credit card
    # @return [String]
    attr_accessor :name

    # Name of bank that credit card belongs to
    # @return [String]
    attr_accessor :bank_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['number'] = 'number'
      @_hash['expiry_month'] = 'expiry_month'
      @_hash['expiry_year'] = 'expiry_year'
      @_hash['cvc'] = 'cvc'
      @_hash['name'] = 'name'
      @_hash['bank_name'] = 'bank_name'
      @_hash
    end

    def initialize(number = nil,
                   expiry_month = nil,
                   expiry_year = nil,
                   cvc = nil,
                   name = nil,
                   bank_name = nil)
      @number = number
      @expiry_month = expiry_month
      @expiry_year = expiry_year
      @cvc = cvc
      @name = name
      @bank_name = bank_name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      number = hash['number']
      expiry_month = hash['expiry_month']
      expiry_year = hash['expiry_year']
      cvc = hash['cvc']
      name = hash['name']
      bank_name = hash['bank_name']

      # Create object from extracted values.
      CreditCard.new(number,
                     expiry_month,
                     expiry_year,
                     cvc,
                     name,
                     bank_name)
    end
  end
end
