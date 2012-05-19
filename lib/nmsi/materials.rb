module NMSI

  class Materials

    include HTTParty
    API_KEY = 'hackday'

    class << self

      def all(tier = 1)
        get resouce_url('materials/list', {'tier' => tier})
      end

      def match(opts = {})
        get resouce_url('materials/list/match', opts)
      end

      def range(key, from=0, to=100)
        get resouce_url('materials/list', {key => "#{from},#{to}"})
      end

      def search(query, opts = {})
        get resouce_url("materials/search/#{query}", opts)
      end

      #######
      private
      #######

      def resouce_url(resource, options = {})
        uri = "http://nmsi.dailypath.com/#{resource}/key:#{API_KEY}"
        if options.length > 0
          uri += '/' + options.to_a.map{|k,v| "#{k}:#{v}"}.join('/')
        end
        uri += '.json'
        return uri
      end

    end

  end

end