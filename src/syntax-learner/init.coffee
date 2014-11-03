console = require('ui/console')
corpus = require('corpus/corpus')
# file io
# date format
# calendar

moduleKeywords = [
  'extended'
  'included'
]

class Module
  @extend: (obj) ->
    for key, value of obj when key not in moduleKeywords
      @[key] = value

    obj.extended?.apply(@)
    this

  @include: (obj) ->
    for key, value of obj when key not in moduleKeywords
      # Assign properties to the prototype
      @::[key] = value

    obj.included?.apply(@)
    this

ORM =
  constructor: (@interface_arguments) ->
    # get arguments
    return
  find: (id) ->
  create: (attrs) ->
  text_corpus: (name = null, in_folder = null, out_folder = null, clusters = null, threshold = null, epsilon = null) ->
    # Init Learner int clusters, int threshold, double epsilon
    # Init corpus name, learner
    # Get get format
    # Determine out name
    # File input 1
    # File output 1
    # mkdir
    # Init recorder
    # Learner set recorder
    # recursive_add File 1, corpus
    #
    # Learner set corpus
    # Learner learn
    return
  recursive_add: (file = null, corpus = null) ->
    # Files list
    # loop files
    # check if is_file
    # get filename by txt
    # corpus add txt file
    # if dir, recursive_add file, corpus
  extended: ->
    @include
      save: ->

class Learner extends Module
  @extend ORM

module.export = Learner
