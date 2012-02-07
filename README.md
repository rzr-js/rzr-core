#### **rzr** (_razor_) is a razor-thin functional application framework 

**rzr** consists of a small number of artifacts, primarily: **Services**, **Models** and **Agents**
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
