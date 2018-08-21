# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # TransferCreditController
  class TransferCreditController < BaseController
    @instance = TransferCreditController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Transfer Credit
    # @param [ResellerAccountTransferCredit] reseller_account_transfer_credit
    # Required parameter: ResellerAccountTransferCredit model
    # @return String response from the API call
    def transfer_credit(reseller_account_transfer_credit)
      # Validate required parameters.
      validate_parameters(
        'reseller_account_transfer_credit' => reseller_account_transfer_credit
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/transfer-credit'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: reseller_account_transfer_credit.to_json
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
