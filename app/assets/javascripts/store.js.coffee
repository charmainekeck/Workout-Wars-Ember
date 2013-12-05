DS.RESTAdapter.reopen namespace: "api/v1"

inflector = Ember.Inflector.inflector
inflector.irregular("activity", "activities")

# WorkoutWars.Store = DS.Store.extend(
#   revision: 11
#   adapter: DS.RESTAdapter.create()
# )

WorkoutWars.ApplicationAdapter = DS.RESTAdapter()
WorkoutWars.ApplicationSerializer = DS.ActiveModelSerializer.extend()
