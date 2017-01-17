class AddNumber < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :number, :string
  end
end
