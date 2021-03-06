require 'rails_helper'

RSpec.describe "artists/new", type: :view do
  before(:each) do
    assign(:artist, Artist.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :description => "MyText",
      :user => nil,
      :art => nil
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input#artist_first_name[name=?]", "artist[first_name]"

      assert_select "input#artist_last_name[name=?]", "artist[last_name]"

      assert_select "textarea#artist_description[name=?]", "artist[description]"

      assert_select "input#artist_user_id[name=?]", "artist[user_id]"

      assert_select "input#artist_art_id[name=?]", "artist[art_id]"
    end
  end
end
