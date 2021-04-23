---
description: Array functions are mapper functions that are designed to modify an array field.
---
---
template: overrides/main.html
---
!!! note "Before you begin" 

    In order to use the features in this section you need to have an active Spojit account. If you don't have an account you can checkout out the [pricing](https://www.spojit.com/pricing.html "Spojit Pricing"){target="_blank"} and [register here](https://app.spojit.com/register "Spojit Registration"){target="_blank"}.  If you already have an account you can [login here](https://app.spojit.com/login "Spojit Login"){target="_blank"}.
___
#### Count
```
count(array $value):int
```
  Counts all elements in given array and returns a number (integer).
```
  count(["one", "two", "three"]) => 3
  count([1, 2]) => 2
  count([0]) => 1
  count([]) => 0
```
___
#### Get Item By Index
```
getItemByIndex(array $value, integer $index):mixed
```
  Searches an array for given index and returns the array item found at the index specified. Array indexes start at 0 - zero index represents the first item in an array.

  Throws exception if array does not contain an item at specified index.
```
  getItemByIndex(["one", "two", "three"], 0) => "one"
  getItemByIndex([1, 2], 1) => 2
  getItemByIndex([0], 1) => throws Exception (array does not have an item at index 1)
```
___
#### Implode (Join)
```
implode( array $value, string $glue):string
```
  Joins all elements of an array. Returns a string containing a representation of all the array elements in the same order, with the glue string between each element.
```
  implode(["one", "two", "three"], " ") => "one two three"
  implode([1, 2, 3], ", ") => "1, 2, 3"
  implode([1, 2, 3]) => "123"
```
___
#### Array Filter
```
arr_filter(array $collection, array $conditions):array
```
  Searches input __\$collection__ (array of objects) for items matching __\$conditions__. Returns a new collection with records matching those __\$conditions__.

  __\$condition.field__: the name of the object field (ie. 'id', or 'order_id'). Nested objects use dot notation (ie. 'address.street_address' would refer to a 'street_address' field in nested object 'address' in each object in collection).

  __\$condition.value__: the value being searched for. Separate multiple search values by comma.

  For a __\$collection__ of person objects where each person has an 'id', a condition where __\$condition.field = 'id'__ and __\$condition.value = '1,2'__, this function will return a new array containing all persons where 'id' is either '1' or '2'. For the same __\$collection__ of persons, a condition where __\$condition.field = 'contact.email'__ and __\$condition.value = 'john-at-email-dot-com'__, this function will return a new array containing all persons where contact email address is 'john-at-email-dot-com'.

  Returns an empty array [ ] if no matching items are found.
  
```
  Given the following $collection:

  [
    {"id": 1, "name": "John", "contact": {"email": "john@email.com"}},
    {"id": 2, "name": "Mary", "contact": {"email": "mary@email.com"}},
    {"id": 3, "name": "Flynn", "contact": {"email": "flynn@email.com"}},
    {"id": 4, "name": "Brad", "contact": {"email": "brad@email.com"}}
  ]

  //Find one by 'id' where id equals 2
  $condition = [{$field = "id", $value = "2"}]
  arr_filter($collection, $conditions) => [{"id": 2, "name": "Mary", "contact": {"email": "mary@email.com"}}}]

  //Find one by 'id' where id equals 10 ($field = "id", $value = "10")
  $conditions = [{$field = "id", $value = "10"}]
  arr_filter($collection, $conditions) => [] //no item where id=10 exists - returns empty array

  //Find one by contact email where email equals "brad@email.com"
  $conditions = [{$field = "contact.email", $value = "brad@email.com"}]
  arr_filter($collection, $conditions) => [{"id": 4, "name": "Brad", "contact": {"email": "brad@email.com"}}]

  //Find any by 'id' where id equals 2 or 4
  $conditions = [{$field = "id", $value = "2,4"}]
  arr_filter($collection, $conditions) => [{"id": 2, "name": "Mary", "contact": {"email": "mary@email.com"}},{"id": 4, "name": "Brad", "contact": {"email": "brad@email.com"}}]
  
  //Find all where name is Flynn or id is 1 (two conditions required)
  $conditions = [{$field = "name", $value = "Flynn"}, {$field = "id", $value = "1"}]
  arr_filter($collection, $conditions) => [{"id": 1, "name": "John", "contact": {"email": "john@email.com"}},{"id": 3, "name": "Flynn", "contact": {"email": "flynn@email.com"}}]
```
___
#### Array Map
```
arr_map(array $collection, string $field):array
```
  Searches input __\$collection__ (array of objects) for values matching the provided __\$field__. Returns a new collection of values matching that __\$field__.

  __\$field__: the name of the object field (ie. 'id', or 'order_id').
  

  For a __\$collection__ of person objects where each person has a 'name' and a field where __\$field = 'name'__ this function will return a new array containing all persons names.

  Returns an empty array [ ] if no matching items are found.
  
```
  Given the following $collection:

  [
    {"id": 1, "name": "John", "contact": {"email": "john@email.com"}},
    {"id": 2, "name": "Mary", "contact": {"email": "mary@email.com"}},
    {"id": 3, "name": "Flynn", "contact": {"email": "flynn@email.com"}},
    {"id": 4, "name": "Brad", "contact": {"email": "brad@email.com"}}
  ]

  //Find all values where field equals name
  $field = "name"
  arr_map($collection, $field) => ["John", "Mary", "Flynn", "Brad"]

  //Find all values where field equals id
  $field = "id"
  arr_map($collection, $field) => [1, 2, 3, 4]

  //Find all values where field equals contact
  $field = "contact"
  arr_map($collection, $field) => [{"email": "john@email.com"}, {"email": "mary@email.com"}, {"email": "flynn@email.com"}, {"email": "brad@email.com"}]
```
