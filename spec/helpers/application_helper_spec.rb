require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PageHelper. For example:
#
# describe PageHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  describe "content" do
    it "replaces the shortcode" do
      expect(helper.content("thisthat [description]")).to eq("thisthat [description]")
    end
  end

  describe "content_html" do
    it "replaces the shortcode" do
      expect(helper.content_html("thisthat [description]")).to eq("thisthat [description]")
    end
  end
end
