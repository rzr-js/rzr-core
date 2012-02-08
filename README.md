## **rzr** 
(_razor_) is a razor-thin functional application framework 
### Core Components
**rzr** consists of 3 core components: **Services**, **Models** and **Agents**
<br><br>
**Services** are the _verbs_ in your stories- the _actions_ that happen.

```coffeescript
login = Service ->
  @in 
    user: X @User
  @out
    user: @find @user
    token: generateToken()
```
<br>
**Models** are the _nouns_ in your stories- the _things_ that are important

```coffeescript
User = Model
  name: @string.length.min.3
  password: @password.min.12
```
<br>
**Agents** expose Models and Services, and communicate with other Agents

```coffeescript
UserAgent = Agent ->
  @collab SomeOtherAgent
  @expose login, User
```
### Modules

a Module is a collection of related Models and Services (and their specs), with one Agent governing the Module.  Modules can be nested within other Modules with arbitrary depth 

### Specs

Specs are executable specifications that specify some behavior that needs to be fulfilled, every service has at least one Spec.  Spec support is provided by the Spex framework

### Control Structures

**run**
**series**
**chain**
