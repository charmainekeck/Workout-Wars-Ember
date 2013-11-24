WorkoutWars.CompetitionView = Ember.View.extend
  templateName: 'competition'
  didInsertElement: ->
    console.log "boom yaa"

WorkoutWars.CompetitionEditView = Ember.View.extend
  didInsertElement: ->
    $('.date-field').datepicker