module NMSI

  class Materials
    include HTTParty

    class << self

      def all(tier = 1)
        get(resource_url('materials/list', {'tier' => tier}))['data']
      end

      def match(opts = {})
        get(resource_url('materials/list/match', opts))['data']
      end

      def range(key, from=0, to=100)
        get(resource_url('materials/list', {key => "#{from},#{to}"}))['data']
      end

      def search(query, opts = {})
        get(resource_url("materials/search/#{query}", opts))['data']
      end

      #######
      private
      #######

      def resource_url(resource, options = {})
        params = options.merge({'key' => NMSI.api_key})
        params = params.to_a.map!{|k, v| "#{k}:#{v}"}.join('/')
        "http://nikemsiapi.nikebetterworld.com/#{resource}/#{params}.json"
      end

    end

  end

end