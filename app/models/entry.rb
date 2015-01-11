class Entry < ActiveRecord::Base
  validates :author, presence: true
  validates :photo_url, presence: true
  validate :before_start_date

  def before_start_date
    start_date = Date.new(2010, 10, 1)
    unless ( start_date <=> date_taken ) == -1
      errors.add(:date_taken, "taken too long ago")
    end 
  end
end
