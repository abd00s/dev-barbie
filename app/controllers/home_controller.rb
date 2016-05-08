class HomeController < ApplicationController
  def index
    @clicks = Click.all
    @clicks_from_today = Click.count_from(Date.today)
    @clicks_from_1_day_ago = Click.count_from(Date.today - 1)
    @clicks_from_2_days_ago = Click.count_from(Date.today - 2)
    @clicks_from_3_days_ago = Click.count_from(Date.today - 3)
    @clicks_from_4_days_ago = Click.count_from(Date.today - 4)
    @clicks_from_5_days_ago = Click.count_from(Date.today - 5)
    @clicks_from_6_days_ago = Click.count_from(Date.today - 6)
  end
end
