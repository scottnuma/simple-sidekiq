class AddViewedToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :viewed, :datetime
  end
end
