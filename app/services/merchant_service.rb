class MerchantService
    def self.get_url(url)
        conn = Faraday.new(url: "http://localhost:3000")
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.all_merchants
        get_url("/api/v1/merchants")
    end

    def self.merchant_items(merchant_id)
        get_url("/api/v1/merchants/#{merchant_id}/items")
    end

    def self.find(merchant_id)
        get_url("api/v1/merchants/#{merchant_id}")
    end
end