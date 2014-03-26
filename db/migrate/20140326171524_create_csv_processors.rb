class CreateCsvProcessors < ActiveRecord::Migration
  def change
    create_table :csv_processors do |t|

    	t.string :email
    	t.string :first_name
    	t.string :last_name
    	t.string :street1
    	t.string :street2
    	t.string :city
    	t.string :state
    	t.string :zip
    	t.string :ups_code

      t.timestamps
    end

    add_index :csv_processors, :id
    add_index :csv_processors, :email
  end
end
