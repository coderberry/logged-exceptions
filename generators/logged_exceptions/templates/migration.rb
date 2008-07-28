class CreateLoggedExceptions < ActiveRecord::Migration
  def self.up
    create_table :logged_exceptions do |t|
      t.column :exception_class, :string
      t.column :controller_name, :string
      t.column :action_name, :string
      t.column :message, :text
      t.column :backtrace, :text
      t.column :environment, :text
      t.column :request, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :logged_exceptions
  end
end
