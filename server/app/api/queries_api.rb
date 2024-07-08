class QueriesAPI < ApplicationAPI
    namespace :queries do
        desc "Post a query" 
        params do
            requires :query, type: String, desc: 'Query string'
        end
        post do
            params[:query]
        end
    end
end