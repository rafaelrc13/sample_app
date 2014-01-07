require 'spec_helper'

describe ApplicationHelper do
  
  describe "full title" do
    it "should include de page title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include de base title" do
      expect(full_title("foo")).to match(/Ruby on Rails Tutorial Sample App/)
    end

    it "should not include bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end