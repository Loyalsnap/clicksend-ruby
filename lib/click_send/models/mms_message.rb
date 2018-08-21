# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Single MMS message model
  class MmsMessage < BaseModel
    # Recipient phone number in E.164 format
    # @return [String]
    attr_accessor :to

    # Your message
    # @return [String]
    attr_accessor :body

    # Subject line (max 20 characters)
    # @return [String]
    attr_accessor :subject

    # Your sender ID
    # @return [String]
    attr_accessor :from

    # Recipient country
    # @return [String]
    attr_accessor :country

    # Your method of sending
    # @return [String]
    attr_accessor :source

    # Your list ID if sending to a whole list (can be used instead of 'to')
    # @return [Integer]
    attr_accessor :list_id

    # Schedule time in unix format (leave blank for immediate delivery)
    # @return [Integer]
    attr_accessor :schedule

    # Custom string for your reference
    # @return [String]
    attr_accessor :custom_string

    # Email to send replies to
    # @return [String]
    attr_accessor :from_email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['to'] = 'to'
      @_hash['body'] = 'body'
      @_hash['subject'] = 'subject'
      @_hash['from'] = 'from'
      @_hash['country'] = 'country'
      @_hash['source'] = 'source'
      @_hash['list_id'] = 'list_id'
      @_hash['schedule'] = 'schedule'
      @_hash['custom_string'] = 'custom_string'
      @_hash['from_email'] = 'from_email'
      @_hash
    end

    def initialize(to = '0411111111',
                   body = nil,
                   subject = nil,
                   from = nil,
                   country = nil,
                   source = 'sdk',
                   list_id = nil,
                   schedule = 0,
                   custom_string = nil,
                   from_email = nil)
      @to = to
      @body = body
      @subject = subject
      @from = from
      @country = country
      @source = source
      @list_id = list_id
      @schedule = schedule
      @custom_string = custom_string
      @from_email = from_email
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      to = hash['to'] ||= '0411111111'
      body = hash['body']
      subject = hash['subject']
      from = hash['from']
      country = hash['country']
      source = hash['source'] ||= 'sdk'
      list_id = hash['list_id']
      schedule = hash['schedule'] ||= 0
      custom_string = hash['custom_string']
      from_email = hash['from_email']

      # Create object from extracted values.
      MmsMessage.new(to,
                     body,
                     subject,
                     from,
                     country,
                     source,
                     list_id,
                     schedule,
                     custom_string,
                     from_email)
    end
  end
end
