## ServiceFactory 
## base service class

class ServiceFactory 
  constructor: () ->

  'in': (inArgs) ->
    for arg, validator of inArgs
      @[arg] = validator @repo[arg]

  out: (outArgs) -> @next outArgs

  # util  

  error: (err) -> console.log "error: " + err
  next: (args) -> return args

  # type checking

  string: (arg) -> validate 'string', arg
  number: (arg) -> validate 'number', arg

## Service
## functional constructor
## returns a "class" generated function

Service = (closure) ->
  class Tmp extends ServiceFactory 
    constructor: (@repo) -> 
    exe: closure

## framework constructs

validate = (type, arg) ->
  if typeof arg is type then return arg
  else throw new Error typeof arg + " '#{arg}' is not a number"

_ = (serviceClass, args) ->
  svc = new serviceClass args
  svc.exe()
 
run = (closure) -> closure()  

   
## Service definition
## commented out things represent possible functionality

#on 'some.event'

foo = Service ->

  @in 
    foo: @string # length > 10    # possible validation DSL
    baz: @number # > 10 and < 100

#  run ->
#    _ someSideFX, #!
#      foo: @foo

  @out
    foo: @foo + ' out' #.length.min 4
    baz: @baz + 34     #.min.10.max.100


## TEST 

require 'should'

( run ->

    _ foo,
      foo: "foo"
      baz: 32

).should.eql 
  foo: 'foo out'
  baz: 66


