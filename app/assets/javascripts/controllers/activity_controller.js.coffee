WorkoutWars.ActivityController = Ember.ObjectController.extend
  deleteMode: false
  actions:
    delete: ->
      @toggleProperty('deleteMode')

    cancelDelete: ->
      @set('deleteMode', false)  
      
    confirmDelete: ->
      @set('deleteMode', false) 
      @get("model").deleteRecord()
      @get("model").save()
      @transitionToRoute "activities"
    
    edit: ->
      @transitionToRoute "activity.edit"
    