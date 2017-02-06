require 'rails_helper'
require 'capybara/rspec'
feature 'edit article' do
  before do
    
     @article = FactoryGirl.create(:article)
    # signin("test@example.com", "please123")
    visit article_path(@article)
     find(:xpath, "//a[@href='/articles/#{@article.id}/edit']").click
  end

  scenario 'editing article' do
    fill_in 'Title', with: 'MyText'
    fill_in 'Text', with: 'MyText'
    click_on 'Update Article'
    expect(page).to have_content 'MyText '
    expect(page).to have_content 'MyText'
  end

  
end