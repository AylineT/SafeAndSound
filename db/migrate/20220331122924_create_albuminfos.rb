class CreateAlbuminfos < ActiveRecord::Migration[6.1]
  def change
    create_table :albuminfos do |t|
      t.string :title
      t.text :artists
      t.text :cover
      t.time :duration
      t.integer :tracks
      t.integer :release

      t.timestamps
    end
  end
end
