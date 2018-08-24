class AddAstronautToSpaceMission < ActiveRecord::Migration[5.1]
  def change
    add_reference :space_missions, :astronaugt, foreign_key: true
  end
end
