WorkoutWars.Router.map (match)->
  @resource "competitions", ->
    @resource "competition",
      path: "/:competition_id"
    , ->
      @route "edit"
    @route "create"
    
  @resource "challenges", ->
    @resource "challenge",
      path: ":challenge_id"
    , ->
      @route "edit"
    @route "create"

  @resource "team_competitions", ->
    @resource "team_competition",
      path: ":team_competition_id"
        , ->
      @route "edit"
    @route "create"

  @resource "team_challenges", ->
    @resource "team_challenge",
      path: ":team_challenge_id"
        , ->
      @route "edit"
    @route "create"

  @resource "users", ->
    @resource "user",
      path: "/:user_id"
    , ->
      @route "edit"
      
  @route "contact",
    path: "/contact"

