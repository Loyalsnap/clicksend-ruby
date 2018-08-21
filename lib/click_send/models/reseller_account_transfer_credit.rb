# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # ResellerAccountTransferCredit model
  class ResellerAccountTransferCredit < BaseModel
    # User ID of client
    # @return [Integer]
    attr_accessor :client_user_id

    # Balance to transfer
    # @return [Integer]
    attr_accessor :balance

    # Currency of balance to transfer
    # @return [String]
    attr_accessor :currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['client_user_id'] = 'client_user_id'
      @_hash['balance'] = 'balance'
      @_hash['currency'] = 'currency'
      @_hash
    end

    def initialize(client_user_id = nil,
                   balance = nil,
                   currency = nil)
      @client_user_id = client_user_id
      @balance = balance
      @currency = currency
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      client_user_id = hash['client_user_id']
      balance = hash['balance']
      currency = hash['currency']

      # Create object from extracted values.
      ResellerAccountTransferCredit.new(client_user_id,
                                        balance,
                                        currency)
    end
  end
end
