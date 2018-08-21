# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # EmailToSmsController
  class EmailToSmsController < BaseController
    @instance = EmailToSmsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Create email to sms allowed address
    # @param [EmailSMSAddress] email_sms_address Required parameter:
    # EmailSMSAddress model
    # @return String response from the API call
    def create_allowed_address(email_sms_address)
      # Validate required parameters.
      validate_parameters(
        'email_sms_address' => email_sms_address
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/email-sms'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: email_sms_address.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get list of email to sms allowed addresses
    # @return String response from the API call
    def get_allowed_address
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/email-sms'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end
