require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :pro_name => "MyText",
        :pro_title => "MyText",
        :pro_type => "MyText"
      ),
      Product.create!(
        :pro_name => "MyText",
        :pro_title => "MyText",
        :pro_type => "MyText"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
