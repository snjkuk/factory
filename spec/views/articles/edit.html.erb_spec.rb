require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyText",
      :text => "MyText"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "textarea#article_title[name=?]", "article[title]"

      assert_select "textarea#article_text[name=?]", "article[text]"
    end
  end
end
