# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # SmsMessage model
  class SmsMessage < BaseModel
    # Your sender id - more info:
    # http://help.clicksend.com/SMS/what-is-a-sender-id-or-sender-number.
    # @return [String]
    attr_accessor :from

    # Your message.
    # @return [String]
    attr_accessor :body

    # Recipient phone number in E.164 format.
    # @return [String]
    attr_accessor :to

    # Your method of sending e.g. 'wordpress', 'php', 'c#'.
    # @return [String]
    attr_accessor :source

    # Leave blank for immediate delivery. Your schedule time in unix format
    # http://help.clicksend.com/what-is-a-unix-timestamp
    # @return [Integer]
    attr_accessor :schedule

    # Your reference. Will be passed back with all replies and delivery reports.
    # @return [String]
    attr_accessor :custom_string

    # Your list ID if sending to a whole list. Can be used instead of 'to'.
    # @return [Integer]
    attr_accessor :list_id

    # Recipient country.
    # @return [String]
    attr_accessor :country

    # An email address where the reply should be emailed to. If omitted, the
    # reply will be emailed back to the user who sent the outgoing SMS.
    # @return [String]
    attr_accessor :from_email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['from'] = 'from'
      @_hash['body'] = 'body'
      @_hash['to'] = 'to'
      @_hash['source'] = 'source'
      @_hash['schedule'] = 'schedule'
      @_hash['custom_string'] = 'custom_string'
      @_hash['list_id'] = 'list_id'
      @_hash['country'] = 'country'
      @_hash['from_email'] = 'from_email'
      @_hash
    end

    def initialize(from = nil,
                   body = nil,
                   to = '0411111111',
                   source = 'sdk',
                   schedule = 0,
                   custom_string = nil,
                   list_id = nil,
                   country = nil,
                   from_email = nil)
      @from = from
      @body = body
      @to = to
      @source = source
      @schedule = schedule
      @custom_string = custom_string
      @list_id = list_id
      @country = country
      @from_email = from_email
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      from = hash['from']
      body = hash['body']
      to = hash['to'] ||= '0411111111'
      source = hash['source'] ||= 'sdk'
      schedule = hash['schedule'] ||= 0
      custom_string = hash['custom_string']
      list_id = hash['list_id']
      country = hash['country']
      from_email = hash['from_email']

      # Create object from extracted values.
      SmsMessage.new(from,
                     body,
                     to,
                     source,
                     schedule,
                     custom_string,
                     list_id,
                     country,
                     from_email)
    end
  end
end
