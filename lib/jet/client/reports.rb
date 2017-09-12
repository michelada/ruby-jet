module Jet
  class Client
    # Reports client
    class Reports
      def initialize(client)
        @client = client
      end

      def create_report(type)
        @client.rest_post_with_token("/reports/#{type}")
      end

      def report_status(report_id)
        @client.rest_get_with_token("/reports/state/#{report_id}")
      end
    end
  end
end
