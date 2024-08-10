module OpenAiClient
    def client
        @client ||= OpenAI::Client.new
    end
end