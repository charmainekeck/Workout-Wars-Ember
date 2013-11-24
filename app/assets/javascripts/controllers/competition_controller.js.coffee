WorkoutWars.CompetitionController = Ember.ObjectController.extend
  deleteMode: false
  
  delete: ->
    @toggleProperty('deleteMode')

  cancelDelete: ->
    @set('deleteMode', false)  
    
  confirmDelete: ->
    @set('deleteMode', false) 
    @get("model").deleteRecord()
    @get("model").save()
    @transitionToRoute "competitions"
  
  edit: ->
    @transitionToRoute "competition.edit"
    