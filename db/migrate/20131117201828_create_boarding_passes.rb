class CreateBoardingPasses < ActiveRecord::Migration
  def change
    create_table :boarding_passes do |t|
      t.string :source
      t.string :destination
      t.string :transportation
      t.string :seat
      t.string :gate
      t.string :counter

      t.timestamps
    end
  end
end
