class Event < ApplicationRecord
  has_many :speakers, dependent: :destroy
  accepts_nested_attributes_for :speakers, reject_if: :all_blank, allow_destroy: true

  with_options presence: true do
    validates :title, length: { maximum: 200 }
    validates :body, length: { maximum: 20_000 }
    validates :date
  end
end
