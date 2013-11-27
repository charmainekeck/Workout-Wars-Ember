WorkoutWars.ExercisesController = Ember.ArrayController.extend
  saveCompetition: ->  
    @get('store').commit()
  
  transitionAfterSave:( ->
    @transitionToRoute('exercise', @get('content')) if @get('content.id')
  ).observes('content.id')