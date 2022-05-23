axis         = require 'axis'
jeet         = require 'jeet'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  locals:
    title: '"IDe" Kerzen'
    author: 'Markus Arendt'
    description: 'Website of Markus Arendt - "IDe" Kerzen'


  extensions: [
    js_pipeline(files: ['assets/js/vendor/**', 'assets/js/main.coffee']),
    css_pipeline(files: 'assets/css/*.styl')
  ]

  stylus:
    use: [axis(), rupture(), jeet(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
