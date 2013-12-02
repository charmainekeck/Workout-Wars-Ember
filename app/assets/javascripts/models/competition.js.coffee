WorkoutWars.Competition = DS.Model.extend
  exercises: DS.hasMany('WorkoutWars.Exercise', { embedded: true }) 
  name: DS.attr('string')
  startDate: DS.attr('date')
  endDate: DS.attr('date')
  maxParticipants: DS.attr('number')
  lowerLevelRestriction: DS.attr('number')
  upperLevelRestriction: DS.attr('string')

  save: ->
    @get('store').commit()

