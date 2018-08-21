# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostLetterController
  class PostLetterController < BaseController
    @instance = PostLetterController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Send post letter
    # @param [PostLetter] post_letter Required parameter: PostLetter model
    # @return String response from the API call
    def send_post_letter(post_letter)
      # Validate required parameters.
      validate_parameters(
        'post_letter' => post_letter
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: post_letter.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Calculate post letter price
    # @param [PostLetter] post_letter Required parameter: PostLetter model
    # @return String response from the API call
    def calculate_price(post_letter)
      # Validate required parameters.
      validate_parameters(
        'post_letter' => post_letter
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: post_letter.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get all post letter history
    # @return String response from the API call
    def get_post_letter_history
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/history'
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

    # export post letter history
    # @param [String] filename Required parameter: Filename to export to
    # @return String response from the API call
    def export_post_letter_history(filename)
      # Validate required parameters.
      validate_parameters(
        'filename' => filename
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/export'
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
