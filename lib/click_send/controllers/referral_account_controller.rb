# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # ReferralAccountController
  class ReferralAccountController < BaseController
    @instance = ReferralAccountController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get all referral accounts
    # @return String response from the API call
    def get_referral_accounts
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/referral/accounts'
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
