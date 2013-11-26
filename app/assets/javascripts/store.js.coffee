DS.RESTAdapter.reopen namespace: "api/v1"

DS.RESTAdapter.configure "plurals",
  activity: "activities"

WorkoutWars.Store = DS.Store.extend(
  revision: 11
  adapter: DS.RESTAdapter.create()
)

