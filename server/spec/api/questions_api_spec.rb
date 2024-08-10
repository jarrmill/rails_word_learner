require "rails_helper"

RSpec.describe "Questions", type: :request do
    scenario "Post an answer and get a response" do
        payload = { 
            question: "What is the meaning of life?",
            word: "Life",
            answer: "The meaning of life is to live it."
        }
        post "http://localhost:3000/questions", params: payload
        expect(response).to have_http_status(:success)
        words = JSON.parse(response.body)
        expect(words.length).to eq(2)
    end
end