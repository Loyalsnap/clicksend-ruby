# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # VoiceController
  class VoiceController < BaseController
    @instance = VoiceController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Send a voice call
    # @param [VoiceMessageCollection] voice_messages Required parameter:
    # VoiceMessageCollection model
    # @return String response from the API call
    def send_voice(voice_messages)
      # Validate required parameters.
      validate_parameters(
        'voice_messages' => voice_messages
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: voice_messages.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Calculate voice price
    # @param [VoiceMessageCollection] voice_messages Required parameter:
    # VoiceMessageCollection model
    # @return String response from the API call
    def calculate_price(voice_messages)
      # Validate required parameters.
      validate_parameters(
        'voice_messages' => voice_messages
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: voice_messages.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get all voice languages
    # @return String response from the API call
    def get_voice_languages
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/lang'
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

    # Get all voice receipts
    # @return String response from the API call
    def get_voice_receipts
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/receipts'
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

    # Update voice message status as cancelled
    # @param [String] message_id Required parameter: Your voice message id
    # @return String response from the API call
    def cancel_voice_message(message_id)
      # Validate required parameters.
      validate_parameters(
        'message_id' => message_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/{message_id}/cancel'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'message_id' => message_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
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

    # Update all voice messages as cancelled
    # @return String response from the API call
    def cancel_voice_messages
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/cancel-all'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
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

    # Export voice history
    # @param [String] filename Required parameter: Filename to export to
    # @return String response from the API call
    def export_voice_history(filename)
      # Validate required parameters.
      validate_parameters(
        'filename' => filename
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/history/export'
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

    # Get all voice history
    # @param [Integer] date_from Optional parameter: Timestamp (from) used to
    # show records by date.
    # @param [Integer] date_to Optional parameter: Timestamp (to) used to show
    # records by date
    # @return String response from the API call
    def get_voice_history(date_from = nil,
                          date_to = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/history'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'date_from' => date_from,
          'date_to' => date_to
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
