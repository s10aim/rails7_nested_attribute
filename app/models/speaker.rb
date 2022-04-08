class Speaker < ApplicationRecord
  belongs_to :event

  with_options presence: true do
    validates :name, length: { maximum: 200 }
    validates :title, length: { maximum: 20_000 }
    validates :start_time, :end_time
  end

  validate :start_time_less_than_end_time

  private

  def start_time_less_than_end_time
    return if start_time.nil? || end_time.nil?
    return if start_time < end_time

    errors.add(:end_time, :gt)
  end
end
