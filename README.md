#### **rzr** (_razor_) is a razor-thin functional application framework 

**rzr** consists of a small number of artifacts, primarily: **Services**, **Models** and **Agents**

#### Services

**Services** are the _verbs_ in your stories- the _actions_ that happen.

```coffeescript
buildCode = Service ->

  @in 
    string: @string ''
    counter: @number.min.10

  @out
    code: string + ' out' + (@counter + 34)
```

#### Models

**Models** are the _nouns_ in your stories- the _things_ that are important

#### Agents

**Agents** expose Models and Services, and communicate with other Agents

#### Modules