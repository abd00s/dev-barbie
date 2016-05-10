class ClickMailer < ApplicationMailer
  helper :clicks

  def clicked_email(user, click)
    @click = click
    @user = user
    mail(to: Rails.application.secrets.target_email, subject: 'Another shrimp on the dev barbie')
  end
end
