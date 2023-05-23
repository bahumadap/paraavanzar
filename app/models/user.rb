class User < ApplicationRecord
    has_one :requesting_user, dependent: :destroy
    has_one :administrator, dependent: :destroy
    has_one :supervisor, dependent: :destroy
    has_one :executive, dependent: :destroy
  end
  