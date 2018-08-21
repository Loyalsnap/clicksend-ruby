# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # MMSController
  class MMSController < BaseController
    @instance = MMSController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # TODO: type endpoint description here
    # @param [MmsMessageCollection] mms_messages Required parameter:
    # MmsMessageCollection model
    # @return String response from the API call
    def send_mms(mms_messages)
      # Validate required parameters.
      validate_parameters(
        'mms_messages' => mms_messages
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/mms/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: mms_messages.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get Price for MMS sent
    # @param [MmsMessageCollection] mms_messages Required parameter:
    # MmsMessageCollection model
    # @return String response from the API call
    def get_price(mms_messages)
      # Validate required parameters.
      validate_parameters(
        'mms_messages' => mms_messages
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/mms/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: mms_messages.to_json
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
