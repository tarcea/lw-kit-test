class AddDomainToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :domain, :string
  end
end
