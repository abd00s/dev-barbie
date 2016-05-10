module ClicksHelper
  def pretty_date(click)
    click.created_at.in_time_zone("Eastern Time (US & Canada)").strftime("%A %b %e at %I:%M %p")
  end
end
