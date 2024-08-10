require "rails_helper"

RSpec.describe "Words", type: :request do
    scenario "Get all words and checks the array length" do
        Word.create(name: "One", proficiency: 0)
        Word.create(name: "Two", proficiency: 0)

        get "http://localhost:3000/words"
        expect(response).to have_http_status(:success)
        words = JSON.parse(response.body)
        expect(words.length).to eq(2)
    end
end