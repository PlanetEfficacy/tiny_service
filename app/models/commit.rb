class Commit < ApplicationRecord
  def self.last_ten
    Commit.all.reverse[0..9]
  end
end
