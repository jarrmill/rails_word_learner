class API < ApplicationAPI
#   prefix "api"
  mount QueriesAPI
  mount MessagesAPI
  mount ChatsAPI
end
