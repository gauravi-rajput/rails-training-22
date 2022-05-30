class User < ApplicationRecord
  validates :username, presence: true
  validates :email, uniqueness: true
  # validates :terms_of_service, acceptance: true
  # validates :legacy_code, format: { with:
  # /\A[a-zA-Z]+\z/, message: "only allows letters" }
  # validates :registration_number, length: { is: 6 }
  before_validation :normalize_name, on: :create
  has_many :post_comment
  has_many :post

  private

  def normalize_name
    self.username = username.downcase.titleize
  end
end
