# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # UploadController
  class UploadController < BaseController
    @instance = UploadController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Upload a file
    # @param [File] file Required parameter: The file to be uploaded
    # @param [String] convert Required parameter: The product that this file
    # will be used with e.g. 'fax', 'mms', 'csv' or 'post'
    # @return String response from the API call
    def upload_file(file,
                    convert)
      # Validate required parameters.
      validate_parameters(
        'file' => file,
        'convert' => convert
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/uploads'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'convert' => convert
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'file' => file
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # TODO: type endpoint description here
    # @param [FileContent] content Required parameter: Base64-encoded file
    # contents
    # @param [String] convert Required parameter: The product that this file
    # will be used with e.g. 'fax', 'mms', 'csv' or 'post'
    # @return String response from the API call
    def upload_file1(content,
                     convert)
      # Validate required parameters.
      validate_parameters(
        'content' => content,
        'convert' => convert
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/uploads'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'convert' => convert
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: content.to_json
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
