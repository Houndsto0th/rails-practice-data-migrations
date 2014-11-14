class RemovePeopleOver110 < ActiveRecord::Migration
  def change
    Person.where('date_of_birth = ?', 110.years.ago).delete_all
  end
end
