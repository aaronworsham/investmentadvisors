class CreateAdvisorSearches < ActiveRecord::Migration
  def up
    create_table :advisor_searches do |t|
      t.string  :name
      
      t.timestamps
    end
  end

  def down
    drop_table :advisor_searches
  end
end
