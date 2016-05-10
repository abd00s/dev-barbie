describe "home/index.html.erb" do
  let(:unsubscribed_user) { User.new }
  let!(:signed_in_user) { Fabricate(:user)}
  let(:signed_in_admin) { Fabricate(:user, is_admin?: true)}

  context "As an unsubscribed user" do
    it "displays the Sign In/ Sign Up panels" do
      visit('/')
      expect(page).to have_content('Sign In')
    end

    it "does not display the 'Account' dropdown" do
      visit('/')
      expect(page).to_not have_content('Account')
    end

    it "does not display the button" do
      visit('/')
      expect(page).to_not have_content('Click me!')
    end

    it "does not display the chart" do
      visit('/')
      expect(page).to_not have_css('div#chart')
    end
  end

  context "As a logged in user" do
    it "does not display the Sign In/ Sign Up panels" do
      login_as(signed_in_user)
      visit home_index_path
      expect(page).to_not have_content('Sign In')
    end

    it "displays the 'Account' dropdown menu" do
      login_as(signed_in_user)
      visit home_index_path
      expect(page).to have_content('Account')
    end

    it "displays the button" do
      login_as(signed_in_user)
      visit home_index_path
      expect(page).to have_content('Click me!')
    end

    it "displays the chart" do
      login_as(signed_in_user)
      visit home_index_path
      expect(page).to have_css('div#chart')
    end

    context "who isn't an admin" do
      it "does not display the 'Admin Panel' item in dropdown menu" do
        login_as(signed_in_user)
        visit home_index_path
        expect(page).to_not have_content('Admin Panel')
      end
    end

    context "who is an admin" do
      it "displays the 'Admin Panel' item in dropdown menu" do
        login_as(signed_in_admin)
        visit home_index_path
        expect(page).to have_content('Admin Panel')
      end
    end

    context "when the button is pressed" do
      it "creates a new Click" do
        login_as(signed_in_admin)
        visit home_index_path
        expect {find_by_id('button').click }.to change {Click.count}.by(1)
      end
    end
  end
end
