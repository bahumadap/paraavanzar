class Report < ApplicationRecord
  belongs_to :administrator
  belongs_to :supervisor
  has_one :executive, dependent: :destroy

end
