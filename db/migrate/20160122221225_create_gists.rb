class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.references :ruby_gem, index: true, foreign_key: true
      t.string :gist_uri

      t.timestamps null: false
    end
  end
end
