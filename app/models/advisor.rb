class Advisor < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :investment_company
  belongs_to :investment_company
end