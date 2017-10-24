document.addEventListener('submit', function(city_input) {
  const key = 1cc8bc5312ac5267
  //const city = form value for city
  // need to pull from backend
  // const cityName = city.name
  // const state = city.state
  const URL = `'http://api.wunderground.com/api/${key}/forecast/q/${state}/${cityName}.json'`

  fetch(URL)
  .then( res => res.json() )
  .then( json => calculateComplaint(json) )

})

function calculateComplaint(json) {
  var highTemp = json.forecast.simpleforecast.forecastday[0].high.farhrenheit
  var lowTemp = json.forecast.simpleforecast.forecastday[0].low.farhrenheit
  var prec = json.forecast.simpleforecast.forecastday[0].qpf.all_day

  //backend data here and comparison

}

function displayComplaint() {

}
