describe "/admin" do
  let!(:signed_in_user) { Fabricate(:user)}
  let(:signed_in_admin) { Fabricate(:user, is_admin?: true)}

  context "As an admin user" do
    it "grants access and displays the management dashboard" do
      login_as(signed_in_admin)
      visit('/admin')
      expect(page).to have_content('Site Administration')
    end
  end

  context "As a guest user (unsubscribed)" do
    it "denies access and reroutes to home" do
      visit('/admin')
      expect(page).to have_content(/You are not authorized to access/)
    end
  end

  context "As a logged in non-admin user (unsubscribed)" do
    it "denies access and reroutes to home" do
      login_as(signed_in_user)
      visit('/admin')
      expect(page).to have_content(/You are not authorized to access/)
    end
  end

end
