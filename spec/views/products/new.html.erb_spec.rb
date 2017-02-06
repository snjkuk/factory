require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :pro_name => "MyText",
      :pro_title => "MyText",
      :pro_type => "MyText"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "textarea#product_pro_name[name=?]", "product[pro_name]"

      assert_select "textarea#product_pro_title[name=?]", "product[pro_title]"

      assert_select "textarea#product_pro_type[name=?]", "product[pro_type]"
    end
  end
end
