class CreateRecipe < ActiveRecord::Migration
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:catagory, :string)

      t.timestamps()
    end
  end
end
