puts "Seeding..."

Exercise.destroy_all
[
  {name: 'Pushups',    reps: true, distance: false,  duration: false, weight: false, calories: false, xp_multiplier: 1},
  {name: 'Pullups',    reps: true, distance: false,  duration: false, weight: false, calories: false, xp_multiplier: 4},
  {name: 'Situps',     reps: true, distance: false,  duration: false, weight: false, calories: false, xp_multiplier: 0.75},
  {name: 'Squats',     reps: true, distance: false,  duration: false, weight: false, calories: false, xp_multiplier: 1},
  {name: 'Lunges',     reps: true, distance: false,  duration: false, weight: false, calories: false, xp_multiplier: 1},
  {name: 'Burpees',    reps: true, distance: false,  duration: false, weight: false, calories: false, xp_multiplier: 3},
  {name: 'Running',    reps: false, distance: true,  duration: false, weight: false, calories: false, xp_multiplier: 40},
  {name: 'Biking',     reps: false, distance: true,  duration: false, weight: false, calories: false, xp_multiplier: 15},
  {name: 'Swimming',   reps: false, distance: true,  duration: false, weight: false, calories: false, xp_multiplier: 300},
  {name: 'Hiking',     reps: false, distance: true,  duration: false, weight: false, calories: false, xp_multiplier: 20}, 
  {name: 'Aerobics',   reps: false, distance: false, duration: true , weight: false, calories: false, xp_multiplier: 1}, 
  {name: 'Yoga',       reps: false, distance: false, duration: true , weight: false, calories: false, xp_multiplier: 5} 
].each do |exercise|
  Exercise.create!(exercise)
end

puts "Complete!"