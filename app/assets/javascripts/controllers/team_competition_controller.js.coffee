WorkoutWars.TeamCompetitionController = Ember.ObjectController.extend
  deleteMode: false
  
  delete: ->
    @toggleProperty('deleteMode')

  cancelDelete: ->
    @set('deleteMode', false)  
    
  confirmDelete: ->
    @get("model").deleteRecord()
    @get("model").save()
    @transitionToRoute "teamCompetitions"
  
  edit: ->
    @transitionToRoute "teamCompetition.edit"
    