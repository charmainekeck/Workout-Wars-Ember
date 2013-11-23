puts "Seeding..."

Competition.create(
  name: "Competition Number 1",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

Competition.create(
  name: "Competition Number 2",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

TeamCompetition.create(
  name: "Team Competition Number 1",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

TeamCompetition.create(
  name: "Team Competition Number 2",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

Challenge.create(
  name: "Challenge Number 1",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

Challenge.create(
  name: "Challenge Number 2",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

TeamChallenge.create(
  name: "Team Challenge Number 1",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

TeamChallenge.create(
  name: "Team Challenge Number 2",
  start_date: Date.today,
  end_date: Date.today+3.weeks,
  max_participants: 10,
  lower_level_restriction: 0,
  upper_level_restriction: 10
)

puts "Complete!"