require 'rails_helper'
require 'capybara/rspec'
feature 'show article' do
  before do
    
     @article = FactoryGirl.create(:article)
    # signin("test@example.com", "please123")
    visit article_path(@article)
    # find(:xpath, "//a[@href='/articles/id']").click
  end

  scenario 'show title and show text',:js,:driver => :chrome do
    # show_in 'title', with: 'MyTitle'
    # show_in 'title', with: 'MyTitle'
    # click_on 'edit'
    # click_on 'back'
    expect(page).to have_content 'MyText '
    expect(page).to have_content 'MyText'
  end

  
end
