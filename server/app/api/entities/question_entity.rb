class Entities::QuestionEntity < Grape::Entity
  expose :question, documentation: {type: String, required: true}
  expose :word, documentation: {type: String, required: true}
end
