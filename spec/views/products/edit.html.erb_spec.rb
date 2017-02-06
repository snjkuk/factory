require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :pro_name => "MyText",
      :pro_title => "MyText",
      :pro_type => "MyText"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "textarea#product_pro_name[name=?]", "product[pro_name]"

      assert_select "textarea#product_pro_title[name=?]", "product[pro_title]"

      assert_select "textarea#product_pro_type[name=?]", "product[pro_type]"
    end
  end
end
