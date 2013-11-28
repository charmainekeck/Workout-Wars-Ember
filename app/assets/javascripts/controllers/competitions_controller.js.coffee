WorkoutWars.CompetitionsController = Ember.ArrayController.extend
  sortProperties: ['name']

  actions:
    addCompetition: ->
      console.log "name #{@get('name')}"
      console.log "startdate #{@get('dick')}"
      console.log "enddate #{@get('endDate')}"
      console.log "lowerlevel #{@get('lowerLevelRestriction')}"
      console.log "upperlevel #{@get('upperLevelRestriction')}"
      console.log "max Par #{@get('maxParticipants')}"
      WorkoutWars.Competition.createRecord
        name: @get('name')
        startDate: @get('startDate')
        endDate: @get('endDate')
        lowerLevelRestriction: @get('lowerLevelRestriction')
        upperLevelRestriction: @get('upperLevelRestriction')
        maxParticipants: @get('maxParticipants')
        isPublic: @get('isPublic')
      @get('store').commit()
        