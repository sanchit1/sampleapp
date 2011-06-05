require 'spec_helper'

describe "documents/new.html.erb" do
  before(:each) do
    assign(:document, stub_model(Document,
      :parent_id => 1,
      :content_type => "MyString",
      :filename => "MyString",
      :size => 1,
      :attachable_id => 1,
      :attachable_type => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => documents_path, :method => "post" do
      assert_select "input#document_parent_id", :name => "document[parent_id]"
      assert_select "input#document_content_type", :name => "document[content_type]"
      assert_select "input#document_filename", :name => "document[filename]"
      assert_select "input#document_size", :name => "document[size]"
      assert_select "input#document_attachable_id", :name => "document[attachable_id]"
      assert_select "input#document_attachable_type", :name => "document[attachable_type]"
      assert_select "input#document_title", :name => "document[title]"
    end
  end
end
