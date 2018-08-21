# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # ContactController
  class ContactController < BaseController
    @instance = ContactController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Create new contact
    # @param [Contact] contact Required parameter: Contact model
    # @param [Integer] list_id Required parameter: List id
    # @return String response from the API call
    def create_contact(contact,
                       list_id)
      # Validate required parameters.
      validate_parameters(
        'contact' => contact,
        'list_id' => list_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'list_id' => list_id
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
        parameters: contact.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get a specific contact
    # @param [Integer] list_id Required parameter: Your contact list id you want
    # to access.
    # @param [Integer] contact_id Required parameter: Your contact id you want
    # to access.
    # @return String response from the API call
    def get_contact(list_id,
                    contact_id)
      # Validate required parameters.
      validate_parameters(
        'list_id' => list_id,
        'contact_id' => contact_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts/{contact_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'list_id' => list_id,
        'contact_id' => contact_id
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

    # Update contact
    # @param [Integer] list_id Required parameter: Contact list id
    # @param [Integer] contact_id Required parameter: Contact ID
    # @param [Contact] contact Required parameter: Contact model
    # @return String response from the API call
    def update_contact(list_id,
                       contact_id,
                       contact)
      # Validate required parameters.
      validate_parameters(
        'list_id' => list_id,
        'contact_id' => contact_id,
        'contact' => contact
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts/{contact_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'list_id' => list_id,
        'contact_id' => contact_id
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
        parameters: contact.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Remove all opted out contacts
    # @param [Integer] list_id Required parameter: Your list id
    # @param [Integer] opt_out_list_id Required parameter: Your opt out list
    # id
    # @return String response from the API call
    def remove_opted_out_contacts(list_id,
                                  opt_out_list_id)
      # Validate required parameters.
      validate_parameters(
        'list_id' => list_id,
        'opt_out_list_id' => opt_out_list_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/remove-opted-out-contacts/{opt_out_list_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'list_id' => list_id,
        'opt_out_list_id' => opt_out_list_id
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

    # Delete a contact
    # @param [Integer] list_id Required parameter: List ID
    # @param [Integer] contact_id Required parameter: Contact ID
    # @return String response from the API call
    def delete_contact(list_id,
                       contact_id)
      # Validate required parameters.
      validate_parameters(
        'list_id' => list_id,
        'contact_id' => contact_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts/{contact_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'list_id' => list_id,
        'contact_id' => contact_id
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

    # Get all contacts in a list
    # @param [Integer] list_id Required parameter: Contact list ID
    # @param [Integer] page_num Optional parameter: Page number
    # @return String response from the API call
    def get_contacts(list_id,
                     page_num = 1)
      # Validate required parameters.
      validate_parameters(
        'list_id' => list_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'list_id' => list_id
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page_num' => page_num
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
