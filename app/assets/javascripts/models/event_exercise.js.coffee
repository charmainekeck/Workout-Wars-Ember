WorkoutWars.EventExercise = DS.Model.extend
  competition: DS.belongsTo('competition') 
  exerciseId: DS.attr('number')
  exerciseableId: DS.attr('number')
  exerciseableType: DS.attr('string')
