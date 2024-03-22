module GeoapifyClient
  class << self
    def connection
      @connection ||= Faraday.new(
        url: 'https://api.geoapify.com/',
        params: { apiKey: Rails.application.credentials.geoapify_key },
        headers: {'Content-Type' => 'application/json'}
      )
    end
  end
end
