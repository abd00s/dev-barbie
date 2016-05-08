module ClicksHelper
  def pretty_date(click)
    click.created_at.strftime("%A %b %e at %I:%M %p")
  end
end
