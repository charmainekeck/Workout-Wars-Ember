WorkoutWars.Competition = DS.Model.extend
  exercises: DS.hasMany('WorkoutWars.Exercise', { embedded: true }) 
  name: DS.attr('string')
  startDate: DS.attr('date')
  endDate: DS.attr('date')
  maxParticipants: DS.attr('number')
  lowerLevelRestriction: DS.attr('number')
  upperLevelRestriction: DS.attr('string')

  save: ->
    @get('store').commit() if @validate()

  validate: ->
    msg = { name: []}
    isValid = true

    value = @get("name")
    if /^\s+$/.test(value)
      isValid = false
      msg['name'].push "Field can't be empty"

    @set("errors", msg)
    @get('isValid', isValid)
    isValid
