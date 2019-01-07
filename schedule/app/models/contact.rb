class Contact < ApplicationRecord
  has_many :phones, dependent: :destroy
  has_one :address, dependent: :destroy

  has_many :contact_kinds
  has_many :kinds, through: :contact_kinds

  accepts_nested_atributes_for :phones, reject_if: :all_blank, allow_destroy: true
  accepts_nested_atributes_for :address
end