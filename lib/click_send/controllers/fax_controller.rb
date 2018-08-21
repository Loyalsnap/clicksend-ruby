# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # FaxController
  class FaxController < BaseController
    @instance = FaxController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get List of Fax Receipts
    # @return String response from the API call
    def fax_receipt_list
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/receipts'
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

    # Get a single fax receipt based on message id.
    # @param [String] message_id Required parameter: ID of the message receipt
    # to retrieve
    # @return String response from the API call
    def get_fax_receipt(message_id)
      # Validate required parameters.
      validate_parameters(
        'message_id' => message_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/receipts/{message_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'message_id' => message_id
      )
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

    # Get a list of Fax History.
    # @param [Integer] date_from Optional parameter: Customize result by setting
    # from date (timestsamp) Example: 1457572619.
    # @param [Integer] date_to Optional parameter: Customize result by setting
    # to date (timestamp) Example: 1457573000.
    # @param [String] q Optional parameter: Custom query Example:
    # status:Sent,status_code:201.
    # @param [String] order Optional parameter: Order result by Example:
    # date_added:desc,list_id:desc.
    # @return String response from the API call
    def get_fax_history(date_from = nil,
                        date_to = nil,
                        q = nil,
                        order = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/history'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'date_from' => date_from,
          'date_to' => date_to,
          'q' => q,
          'order' => order
        },
        array_serialization: Configuration.array_serialization
      )
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

    # Calculate Total Price for Fax Messages sent
    # @param [FaxMessageCollection] fax_message Required parameter:
    # FaxMessageCollection model
    # @return String response from the API call
    def calculate_price(fax_message)
      # Validate required parameters.
      validate_parameters(
        'fax_message' => fax_message
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: fax_message.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Send a fax using supplied supported file-types.
    # @param [FaxMessageCollection] fax_message Required parameter:
    # FaxMessageCollection model
    # @return String response from the API call
    def send_fax(fax_message)
      # Validate required parameters.
      validate_parameters(
        'fax_message' => fax_message
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: fax_message.to_json
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
