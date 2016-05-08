module HomeHelper
  def day_of_week(date)
    Date::ABBR_DAYNAMES[date.wday]
  end
end
