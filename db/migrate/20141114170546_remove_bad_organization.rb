class RemoveBadOrganization < ActiveRecord::Migration
  def change
    Organization.where('name is NULL OR name = ? OR name = ?', '', ' ').delete_all
    Organization.where('active is NULL').update_all(active: false)
  end
end
