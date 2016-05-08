class ClickMailer < ApplicationMailer
  helper :clicks
  # include SendGrid

  def clicked_email(user, click)
    @click = click
    @user = user
    mail(to: "abdullah.pharaon@gmail.com", subject: 'Another shrimp on the dev barbie')
  end
end
