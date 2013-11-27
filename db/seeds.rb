puts "Seeding..."

Exercise.destroy_all
[
  {name: 'Pushups',    reps: true, distance: false,  duration: false, weight: false, calories: false},
  {name: 'Pullups',    reps: true, distance: false,  duration: false, weight: false, calories: false},
  {name: 'Situps',     reps: true, distance: false,  duration: false, weight: false, calories: false},
  {name: 'Squats',     reps: true, distance: false,  duration: false, weight: false, calories: false},
  {name: 'Lunges',     reps: true, distance: false,  duration: false, weight: false, calories: false},
  {name: 'Burpees',    reps: true, distance: false,  duration: false, weight: false, calories: false},
  {name: 'Running',    reps: false, distance: true,  duration: false, weight: false, calories: false},
  {name: 'Biking',     reps: false, distance: true,  duration: false, weight: false, calories: false},
  {name: 'Swimming',   reps: false, distance: true,  duration: false, weight: false, calories: false},
  {name: 'Hiking',     reps: false, distance: true,  duration: false, weight: false, calories: false}, 
  {name: 'Aerobics',   reps: false, distance: false, duration: true , weight: false, calories: false}, 
  {name: 'Yoga',       reps: false, distance: false, duration: true , weight: false, calories: false} 
].each do |exercise|
  Exercise.create!(exercise)
end

puts "Complete!"