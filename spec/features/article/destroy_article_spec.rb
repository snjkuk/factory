require 'rails_helper'
require 'capybara/rspec'
feature 'destroy article' do
  before do
    
    @article = FactoryGirl.create(:article)
    # signin("test@example.com", "please123")
     visit article_path(@article)
    
  end

  scenario 'delete' ,:js,:driver => :chrome do
  	expect{@article.destroy}.to change(Article, :count).by(-1)

  end

  
end
