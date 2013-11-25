WorkoutWars.Router.map (match)->
  @resource "competitions", ->
    @resource "competition", path: "/:competition_id", ->
      @route "edit"
    @route "create"
    
  @resource "challenges", ->
    @resource "challenge", path: ":challenge_id", ->
      @route "edit"
    @route "create"

  @resource "teamCompetitions", ->
    @resource "teamCompetition", path: ":teamCompetition_id", ->
      @route "edit"
    @route "create"

  @resource "teamChallenges", ->
    @resource "teamChallenge", path: ":teamChallenge_id", ->
      @route "edit"
    @route "create"

  @resource "users", ->
    @resource "user",
      path: "/:user_id", ->
        @route "edit",
        @resource "activities", path: "/:activity_id", ->
          @route "edit"
        @route "stats",
        @route "competitions", 
        @route "teamCompetitions",
        @route "challenges",
        @route "teamChallenges"
      
  @route "contact",
    path: "/contact"

