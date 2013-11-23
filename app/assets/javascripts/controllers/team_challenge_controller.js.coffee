WorkoutWars.TeamChallengeController = Ember.ObjectController.extend
  deleteMode: false
  
  delete: ->
    @toggleProperty('deleteMode')

  cancelDelete: ->
    @set('deleteMode', false)  
    
  confirmDelete: ->
    @get("model").deleteRecord()
    @get("model").save()
    @transitionToRoute "teamChallenges"
  
  edit: ->
    @transitionToRoute "teamChallenge.edit"
    