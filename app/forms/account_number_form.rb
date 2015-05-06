class AccountNumberForm
  include ActiveModel::Model

  attr_reader :number

  validates :number, presence: true
  validates :number, bank_account_number: true

  def initialize args = {}
    @number = args[:number]
  end
end