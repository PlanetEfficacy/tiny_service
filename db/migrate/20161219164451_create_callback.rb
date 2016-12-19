class CreateCallback < ActiveRecord::Migration[5.0]
  def change
    create_table :callbacks do |t|
      t.string :json
    end
  end
end
