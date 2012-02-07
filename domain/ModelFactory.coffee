validate = (type, arg) ->
  if typeof arg is type then return arg
  else throw new Error typeof arg + " '#{arg}' is not a number"

class ModelClass 
  constructor: () ->

  # type checking

  string: (arg) -> console.log " sstttrrr" #validate 'string', arg
  number: (arg) -> validate 'number', arg


model = (closure) ->

  class Tmp extends ModelClass 
    constructor: (@repo) -> 
      @run @exe()
    exe: closure
    run: (args) ->
   
## MODEL

Bar = model ->

  foo: @string # length > 10
  baz: @number # > 10 and < 100


## TEST 

new Bar (bar) -> fuckwit bar 
  
  

bar = new Bar 
  foo: 'foo'
  baz: 'fff'

console.log bar

