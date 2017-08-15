var jasmineEnv = jasmine.getEnv();
var htmlReporter = new jasmine.HtmlReporter();

jasmineEnv.updateInterval = 1000;

jasmineEnv.specFilter = function( spec ) {

  return htmlReporter.specFilter( spec );
};

jasmineEnv.addReporter( htmlReporter );
jasmineEnv.addReporter( new jasmine.JSReporter() );

window.onload = function() {

  jasmineEnv.execute();
};
