# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Exercise.destroy_all

upper_back = MuscleGroup.where(name: "Upper Back").first
lats = MuscleGroup.where(name: "Lats").first
delts = MuscleGroup.where(name: "Delts").first


# Exercises from my pull day lmfao
Exercise.create!([{
  name: "Wide Grip T-Bar Row",
  description: "Wide grip t-bar row",
  emphasis: "Traps, Rhomboids, Rear delts",
  muscle_groups: [upper_back],
  user_id: 1
  },
  {
    name: "Kelso Shrug",
    description: "Shrug",
    emphasis: "Mid-Upper traps",
    muscle_groups: [upper_back],
    user_id: 1
  },
  {
    name: "Wide Grip Pulldown",
    description: "Lat pulldown with a wide grip",
    emphasis: "Iliac Lat",
    muscle_groups: [lats],
    user_id: 1
  },
  {
    name: "Unilateral Lat Pulldown",
    description: "Pulldown from the sagital plane",
    emphasis: "Thoracic-lumbar lat",
    muscle_groups: [lats],
    user_id: 1
  },
  {
    name: "Cable Rear Delt Flys",
    description: "",
    emphasis: "Rear delts",
    muscle_groups: [delts],
    user_id: 1
  }
])

puts "Created #{Exercise.count} exercises."
