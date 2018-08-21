# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostPostcardController
  class PostPostcardController < BaseController
    @instance = PostPostcardController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Send one or more postcards
    # @param [PostPostcard] post_postcards Required parameter: PostPostcard
    # model
    # @return String response from the API call
    def send_postcard(post_postcards)
      # Validate required parameters.
      validate_parameters(
        'post_postcards' => post_postcards
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/postcards/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: post_postcards.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Calculate price for sending one or more postcards
    # @param [PostPostcard] post_postcards Required parameter: PostPostcard
    # model
    # @return String response from the API call
    def calculate_price(post_postcards)
      # Validate required parameters.
      validate_parameters(
        'post_postcards' => post_postcards
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/postcards/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: post_postcards.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Retrieve the history of postcards sent or scheduled
    # @return String response from the API call
    def get_postcard_history
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/postcards/history'
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

    # Export postcard history to a CSV file
    # @param [String] filename Required parameter: Filename to export to
    # @return String response from the API call
    def export_postcard_history(filename)
      # Validate required parameters.
      validate_parameters(
        'filename' => filename
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/postcards/history/export'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'filename' => filename
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
  end
end
