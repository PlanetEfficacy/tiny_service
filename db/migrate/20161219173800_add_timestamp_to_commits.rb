class AddTimestampToCommits < ActiveRecord::Migration[5.0]
  def change
    add_column :commits, :timestamp, :datetime
  end
end
