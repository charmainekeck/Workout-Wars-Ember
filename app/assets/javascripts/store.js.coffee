DS.RESTAdapter.reopen namespace: "api/v1"
WorkoutWars.Store = DS.Store.extend(
  revision: 11
  adapter: DS.RESTAdapter.create()
)

