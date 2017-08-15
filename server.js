#!/usr/bin/env node

var path = require( "path" );
var express = require( "express" );

var app = express();

app.use( express.static( path.join( __dirname, "lib" ) ) );
app.use( express.static( path.join( __dirname, "src" ) ) );

app.listen( 8085 );
