class Contact < ActiveRecord::Base
  validates :first_name, presence: true

  validates :email, presence: true, format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
  validates :description, presence: true
  validates :last_name, presence: true
  validates :subject, presence: true
end
