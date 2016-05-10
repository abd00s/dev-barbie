require "spec_helper"
require "rails_helper"

describe  "ClicksController" do
  let(:user) { Fabricate(:user)}
  let(:click) { Fabricate(:click, user: user) }

  describe "#create Action" do
    it "Increases the total number of clicks by one" do
      expect { :click }.to change {Click.count}.by(1)
    end
  end
end