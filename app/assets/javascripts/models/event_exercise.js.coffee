WorkoutWars.EventExercise = DS.Model.extend
  competition: DS.belongsTo('WorkoutWars.Competition') 
  exerciseableId: DS.attr('number')
  exerciseableType: DS.attr('string')
