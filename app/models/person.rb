class Person < ApplicationRecord
  belongs_to :role

  #Person.all.joins(:role).where( roles: { billable: true } )
  #only return persons but is a bad method is better self.billable
  def self.billable
    joins(:role).merge(Role.billable)
  end
end
