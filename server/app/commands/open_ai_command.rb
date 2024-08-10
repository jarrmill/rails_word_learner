class OpenAiCommand
    include OpenAiClient

    def initialize
        @client = client
    end
    def createChat(messages = [])
        response = @client.chat(
        parameters: {
            model: "gpt-3.5-turbo", # Required.
            messages:,
            temperature: 0.7,
        })

        response
    end
end