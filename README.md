**rzr** (_razor_)is a razor-thin functional application framework 

**rzr** consists of a small number of artifacts, primarily: Services, Models and Agents

## Service:

```
foo = Service ->

  @in 
    foo: @string ''
    baz: @number.min.10

  @out
    foo: @foo + ' out'
    baz: @baz + 34    
```

## Model

