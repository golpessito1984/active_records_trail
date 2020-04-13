class Role < ApplicationRecord
  has_many :people

  #Person.all.joins(:role).where( roles: { billable: true } )
  #only return persons but is a bad method
  #

  def self.billable
    where(billable: true)
  end

end
