# feature 'create product' do
#   before do
    
#     @article = FactoryGirl.create(:article)
#     # signin("test@example.com", "please123")
#     visit article_path
#     click_on 'create article'
#   end

#   scenario 'with title' do
#     fill_in 'title', with: 'MyText'
#     click_on 'create article'
#     expect(page).to have_content 'text cant be balnk'
#   end

#   scenario 'with text' do
#     fill_in 'text', with: 'MyText'
#     click_on 'create article'
#     expect(page).to have_content 'title can\'t be blank'
#   end

#   scenario 'with text and with title' do
#     click_on 'create article'
#     expect(page).to have_content 'successfull'
#   end
# end
