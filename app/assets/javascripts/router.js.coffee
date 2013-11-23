WorkoutWars.Router.map (match)->
  @resource "competitions", ->
    @resource "competition",
      path: ":competition_id"
  @resource "challenges", ->
    @resource "challenge",
      path: ":challenge_id"
  @resource "teamCompetitions", ->
    @resource "teamCompetition",
      path: ":teamCompetition_id"
  @resource "teamChallenges", ->
    @resource "teamChallenge",
      path: ":teamChallenge_id"
  @route "contact",
    path: "/contact"

