module NMSI

  class << self

    def api_key
      @api_key || 'hackday'
    end

    def api_key=(key)
      @api_key = key
    end

  end

end