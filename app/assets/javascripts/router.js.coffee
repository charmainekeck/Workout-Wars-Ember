WorkoutWars.Router.map (match)->
  @resource "competitions", ->
    @resource "competition",
      path: ":competition_id"
  @resource "teamCompetitions", ->
    @resource "teamCompetition",
      path: ":teamCompetition_id"

