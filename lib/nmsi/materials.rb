module NMSI

  class Materials
    include HTTParty

    class << self

      def all(tier = 1)
        get resource_url('materials/list', {'tier' => tier})
      end

      def match(opts = {})
        get resource_url('materials/list/match', opts)
      end

      def range(key, from=0, to=100)
        get resource_url('materials/list', {key => "#{from},#{to}"})
      end

      def search(query, opts = {})
        get resource_url("materials/search/#{query}", opts)
      end

      #######
      private
      #######

      def resource_url(resource, options = {})
        params = options.merge({'key' => NMSI.api_key})
        params = params.to_a.map!{|k, v| "#{k}:#{v}"}.join('/')
        "http://nmsi.dailypath.com/#{resource}/#{params}.json"
      end

    end

  end

end