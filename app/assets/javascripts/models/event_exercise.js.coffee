WorkoutWars.EventExercise = DS.Model.extend
  competition: DS.belongsTo('WorkoutWars.Competition') 
  exerciseId: DS.attr('number')
  exerciseableId: DS.attr('number')
  exerciseableType: DS.attr('string')
