class QuestionsAPI < ApplicationAPI
    namespace :question do
        desc "get a question" 
        get do
            question = {
                question: QuestionsCommand.get_question,
                word: "hi"
            }
            present question, with: Entities::QuestionEntity
        end

        desc "submit a question for grading" 
        params do
            requires :question, type: String, desc: 'Question'
            requires :word, type: String, desc: 'Word in Question'
            requires :answer, type: String, desc: 'Users response to the question'
        end
        post do
            messages = [
                {
                    role: "system",
                    conent: "You are a teacher helping students learn new words. The student is being asked to define the following word: #{params[:word]}. Please grade the student's response and provide feedback."
                },
                {
                    role: "user",
                    content: "Here is my definition for #{params[:word]}: #{params[:answer]}"
                }
            ]
            oa = OpenAiCommand.new
            response = oa.createChat(messages)
            present response, with: Entities::OpenAIChatEntity
        end
    end
end