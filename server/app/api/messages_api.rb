class MessagesAPI < ApplicationAPI
    namespace :messages do
        desc "get messages" 
        params do
            requires :query, type: String, desc: 'Query string'
        end
        get do
            OpenAiCommand.do_something
        end

        desc "create a message" 
        params do
            requires :chat_id, type: String, desc: 'Query string'
        end
        post do
            params[:query]
        end
    end
end