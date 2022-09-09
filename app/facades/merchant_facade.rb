class MerchantFacade
    def self.merchants
        data = MerchantService.all_merchants
        data[:data].map do |merchant|
            Merchants.new(merchant)
        end
    end

    def self.find_merchant(merchant_id)
        data = MerchantService.find(merchant_id)
        merchant = data[:data]
        Merchants.new(merchant)
    end

    def self.items(merchant_id)
        data = MerchantService.merchant_items(merchant_id)
        data[:data].map do |item|
            MerchantItems.new(item)
        end
    end
end