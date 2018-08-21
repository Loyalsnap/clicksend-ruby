# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # SMSController
  class SMSController < BaseController
    @instance = SMSController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Send one or more SMS messages
    # @param [SmsMessageCollection] sms_messages Required parameter:
    # SmsMessageCollection model
    # @return String response from the API call
    def send_sms(sms_messages)
      # Validate required parameters.
      validate_parameters(
        'sms_messages' => sms_messages
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: sms_messages.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Calculate sms price
    # @param [SmsMessageCollection] sms_messages Required parameter:
    # SmsMessageCollection model
    # @return String response from the API call
    def calculate_price(sms_messages)
      # Validate required parameters.
      validate_parameters(
        'sms_messages' => sms_messages
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: sms_messages.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Export all sms history
    # @param [String] filename Required parameter: Filename to download history
    # as
    # @return String response from the API call
    def export_history(filename)
      # Validate required parameters.
      validate_parameters(
        'filename' => filename
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/history/export'
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

    # Add a delivery receipt
    # @param [String] url Required parameter: Your url
    # @return String response from the API call
    def create_receipt(url)
      # Validate required parameters.
      validate_parameters(
        'url' => url
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: url
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Marked delivery receipts as read
    # @param [String] date_before Optional parameter: Mark all as read before
    # this timestamp
    # @return String response from the API call
    def mark_receipts_as_read(date_before = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts-read'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: date_before
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get all inbound sms
    # @return String response from the API call
    def get_inbound_sms
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/inbound'
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

    # Create inbound sms
    # @param [String] url Required parameter: Your url
    # @return String response from the API call
    def create_inbound_sms(url)
      # Validate required parameters.
      validate_parameters(
        'url' => url
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/inbound'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: url
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Update scheduled message as cancel
    # @param [String] message_id Required parameter: The message ID you want to
    # cancel
    # @return String response from the API call
    def cancel_scheduled_sms(message_id)
      # Validate required parameters.
      validate_parameters(
        'message_id' => message_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/{message_id}/cancel'
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

    # Update all scheduled message as cancelled
    # @return String response from the API call
    def cancel_all_scheduled_sms
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/cancel-all'
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

    # Create sms template
    # @param [SmsTemplate] sms_template Required parameter: SmsTemplate model
    # @return String response from the API call
    def create_sms_template(sms_template)
      # Validate required parameters.
      validate_parameters(
        'sms_template' => sms_template
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: sms_template.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Delete sms template
    # @param [Integer] template_id Required parameter: Template id
    # @return String response from the API call
    def delete_sms_template(template_id)
      # Validate required parameters.
      validate_parameters(
        'template_id' => template_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates/{template_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'template_id' => template_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
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

    # Update sms template
    # @param [Integer] template_id Required parameter: Template id
    # @param [SmsTemplate] sms_template Required parameter: Template item
    # @return String response from the API call
    def update_sms_template(template_id,
                            sms_template)
      # Validate required parameters.
      validate_parameters(
        'template_id' => template_id,
        'sms_template' => sms_template
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates/{template_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'template_id' => template_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: sms_template.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get all delivery receipts
    # @return String response from the API call
    def get_delivery_receipts
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts'
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

    # Get lists of all sms templates
    # @return String response from the API call
    def get_sms_templates
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates'
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

    # Mark all inbound SMS as read optionally before a certain date
    # @param [String] date_before Optional parameter: An optional timestamp -
    # mark all as read before this timestamp. If not given, all messages will be
    # marked as read.
    # @return String response from the API call
    def mark_all_inbound_sms_as_read(date_before = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/inbound-read'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: date_before
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get a Specific Delivery Receipt
    # @param [String] message_id Required parameter: Message ID
    # @return String response from the API call
    def get_specific_delivery_receipt(message_id)
      # Validate required parameters.
      validate_parameters(
        'message_id' => message_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts/{message_id}'
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

    # Get all sms history
    # @param [Integer] date_from Optional parameter: Start date
    # @param [Integer] date_to Optional parameter: End date
    # @return String response from the API call
    def get_sms_history(date_from = nil,
                        date_to = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/history'
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
