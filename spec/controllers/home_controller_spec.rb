require "spec_helper"

describe  "HomeController" do
  let(:unsubscribed_user) { User.new }
  let(:signed_in_user) { Fabricate(:user)}
  let(:signed_in_admin) { Fabricate(:user, is_admin?: true)}

  describe "GET #index" do
    context "As an unsubscribed user" do

    end
  end
end