class Entities::OpenAIChatEntity < Grape::Entity
expose :id
expose :object
expose :created
expose :model
expose :system_fingerprint
expose :choices, using: Entities::Choice
expose :usage, using: Entities::Usage

class Choice < Grape::Entity
    expose :index
    expose :message, using: Entities::Message
    expose :logprobs
    expose :finish_reason
end

class Message < Grape::Entity
    expose :role
    expose :content
end

class Usage < Grape::Entity
    expose :prompt_tokens
    expose :completion_tokens
    expose :total_tokens
end
end
