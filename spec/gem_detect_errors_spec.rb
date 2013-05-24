require 'spec_helper'

describe "Raise errors on specific gems" do
  it "should should raise on sqlite3" do
    Hatchet::AnvilApp.new("sqlite3_gemfile", allow_failure: true).deploy do |app|
      expect(app).not_to be_deployed
      expect(app.output).to include("Cannot install sqlite3")
      expect(app.output).to include("devcenter.heroku.com/articles/sqlite3")
    end
  end
end

