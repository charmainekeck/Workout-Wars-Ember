WorkoutWars.CompetitionController = Ember.ObjectController.extend
  deleteMode: false

  exercises:( ->
    @get("model").get('exercises')
  ).property('eventExercises')

  actions:
    activateDelete: ->
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
    