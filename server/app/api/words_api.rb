class WordsAPI < ApplicationAPI
    namespace :words do
        desc "get words" 
        get do

            Word.all.as_json
        end
    end
end