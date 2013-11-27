WorkoutWars.ExercisesController = Ember.ArrayController.extend
  needs: ['competition']

  actions:    
    addExercise: (exercise) ->  
      competition = @get('controllers.competition').get('model')
      exercises = competition.get('exercises')
      console.log exercises
