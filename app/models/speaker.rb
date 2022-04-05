class Speaker < ApplicationRecord
  belongs_to :event

  with_options presence: true do
    validates :name, length: { maximum: 200 }
    validates :title, length: { maximum: 20_000 }
    validates :start_time, :end_time
  end
end
