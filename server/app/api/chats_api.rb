class ChatsAPI < ApplicationAPI
    namespace :chats do
        desc "get chats" 
        params do
            requires :query, type: String, desc: 'Query string'
        end
        get do
            params[:query]
        end

        desc "create a chat" 
        params do
            requires :query, type: String, desc: 'Query string'
        end
        post do
            params[:query]
        end
    end
end