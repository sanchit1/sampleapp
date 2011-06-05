require 'spec_helper'

describe "documents/index.html.erb" do
  before(:each) do
    assign(:documents, [
      stub_model(Document,
        :parent_id => 1,
        :content_type => "Content Type",
        :filename => "Filename",
        :size => 1,
        :attachable_id => 1,
        :attachable_type => "Attachable Type",
        :title => "Title"
      ),
      stub_model(Document,
        :parent_id => 1,
        :content_type => "Content Type",
        :filename => "Filename",
        :size => 1,
        :attachable_id => 1,
        :attachable_type => "Attachable Type",
        :title => "Title"
      )
    ])
  end

  it "renders a list of documents" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content Type".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Attachable Type".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
