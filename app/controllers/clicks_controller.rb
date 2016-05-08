class ClicksController < ApplicationController
  def create
    @click = current_user.clicks.build
    respond_to do |format|
      if @click.save
        # ClickMailer.clicked_email(current_user, @click).deliver_now
        format.html {redirect_to root_path, notice: 'One more shrimp on the barbie!'}
      else
        format.html {redirect_to root_path, alert: 'Something went wrong'}
      end
    end
  end
end
