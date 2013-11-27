WorkoutWars.ExercisesController = Ember.ArrayController.extend
  addExercise: (exercise) ->  
   competition = @controllerFor('competition').get('model')
    exercises = competition.get('exercises')
    #exercises.createRecord

  transitionAfterSave:( ->
    @transitionToRoute('exercise', @get('content')) if @get('content.id')
  ).observes('content.id')