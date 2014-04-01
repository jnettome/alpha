class AddProfileFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :number, :string
    add_column :users, :zipcode, :string
    add_column :users, :cpf, :string
    add_column :users, :corporate_name, :string
    add_column :users, :trade_name, :string
    add_column :users, :cnpj, :string
    add_column :users, :profile, :string
  end
end
