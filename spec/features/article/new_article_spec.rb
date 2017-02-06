require 'rails_helper'
# added per suggestion stackoverflow to fix failure "undefined method 'visit'"
require 'capybara/rspec'
feature 'new article' do
  before do
    
    # @article = FactoryGirl.create(:article)
    # signin("test@example.com", "please123")
    visit articles_path
    # click_on 'new article'
    # find('.new article-link').click
    find(:xpath, "//a[@href='/articles/new']").click
  end

  
  # scenario ' with out text' do
  # 	fill_in 'Title', with: 'Any Title'
  #   click_on 'Create article'
  #   expect(page).to have_content 'text cant be balnk'
  #   # find(:xpath, "//a[@href='/articles/show']").click
  # end
  scenario 'with text and with title',:js,:driver => :chrome do

  	fill_in 'Title', with: 'Any Title'
  	fill_in 'Text', with: 'Any Text'
    click_button 'Create Article'
    # find('.input-group-btn').click
     expect(page).to have_content 'Any Title'
     expect(page).to have_content 'Any Text'
  end
  # scenario 'with title' do
  #   fill_in 'title', with: 'MyText'
  #   click_on 'create article'
  #   expect(page).to have_content 'text cant be balnk'
  # end

  # scenario 'with text' do
  #   fill_in 'text', with: 'MyText'
  #   click_on 'create article'
  #   expect(page).to have_content 'title can\'t be blank'
  # end

end
