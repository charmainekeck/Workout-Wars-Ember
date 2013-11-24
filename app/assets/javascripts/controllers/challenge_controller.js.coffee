WorkoutWars.ChallengeController = Ember.ObjectController.extend
  deleteMode: false
  
  delete: ->
    @toggleProperty('deleteMode')

  cancelDelete: ->
    @set('deleteMode', false)  
    
  confirmDelete: ->
    @set('deleteMode', false) 
    @get("model").deleteRecord()
    @get("model").save()
    @transitionToRoute "challenges"
  
  edit: ->
    @transitionToRoute "challenge.edit"
    