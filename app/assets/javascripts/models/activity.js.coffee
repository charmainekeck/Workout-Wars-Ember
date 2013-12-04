WorkoutWars.Activity = DS.Model.extend 
  user: DS.belongsTo('WorkoutWars.User') 
  exercise: DS.belongsTo('WorkoutWars.Exercise') 
  reps: DS.attr('number')
  distance: DS.attr('number')
  duration: DS.attr('number')
  calories: DS.attr('number')
  weight: DS.attr('number')

