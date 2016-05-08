class Click < ActiveRecord::Base
  belongs_to :user

  def self.count_from(date)
    where(['created_at >= ? AND created_at < ?', date, date + 1]).count
  end
end
