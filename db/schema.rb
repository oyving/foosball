# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 5) do

  create_table "games", :force => true do |t|
    t.column "played_at", :datetime
    t.column "red", :string, :limit => 50
    t.column "redscore", :integer
    t.column "blue", :string, :limit => 50
    t.column "bluescore", :integer
    t.column "red_rating_diff", :float, :default => 0.0
    t.column "blue_rating_diff", :float, :default => 0.0
  end

  create_table "players", :force => true do |t|
    t.column "name", :string, :limit => 50, :default => "", :null => false
    t.column "won", :integer, :default => 0
    t.column "lost", :integer, :default => 0
    t.column "rating", :float, :default => 1500.0
    t.column "team_won", :integer, :default => 0
    t.column "team_lost", :integer, :default => 0
    t.column "team_rating", :float, :default => 1500.0
  end

  create_table "team_games", :force => true do |t|
    t.column "played_at", :datetime
    t.column "red1", :string, :limit => 50
    t.column "red2", :string, :limit => 50
    t.column "redscore", :integer
    t.column "blue1", :string, :limit => 50
    t.column "blue2", :string, :limit => 50
    t.column "bluescore", :integer
    t.column "red_rating_diff", :float, :default => 0.0
    t.column "blue_rating_diff", :float, :default => 0.0
  end

end
