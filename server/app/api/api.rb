class API < ApplicationAPI
#   prefix "api"
  mount QueriesAPI
  mount MessagesAPI
  mount ChatsAPI
  mount WordsAPI
  mount QuestionsAPI
end
