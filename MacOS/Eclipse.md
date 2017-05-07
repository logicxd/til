##  JSONIFY Java's toString() formatter to print your class in JSON format.

On an object (SomeClass)
```
{
  "${object.className}": {
    "${member.name}": "${member.value}",
    "${otherMembers}"
  }
}
```

On a plural object (SomeClasses)
```
${member.value},
${otherMembers}
```
