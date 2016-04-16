Todai Robot Project Math Problem Library in TPTP THF Format
===========================================================

# Problem File Organization
------------------------------

A problem file consists of one or more problem formulas
and zero or more answer formulas.
A problem formula represents one of three directives: 'Find','Draw', and 'Show'.

A 'Find' directive is represented as a term of the form `'find/1'(...)` as in:

```
  thf(<name>_question,
      question,
      'find/1' @ <type> @ (^[V: <type>]: <formula>)).
```

where `<type>` can be of any type and `<formula>` defines the condition
on `V`. The task is to find all possible values for `V`.

A 'Draw' directive is represented as a term of the form `'draw/1'(...)` as in:

```
  thf(<name>_question,
      question,
      'draw/1' @ (^[V: <type>]: <formula>)).
```

where `<type>` is either `'2d.Shape'` or `'2d.Point'`.
The task is to determine the geometric object `V` defined by `<formula>`.

A 'Show' directive is represented as a conjecture formula as in other TPTP problems:

```
  thf(<name>,
      conjecture,
      <formula>).
```

The task is to prove `<formula>`.

For the 'Find' and 'Draw' directives, the problem file includes their answers.
For a 'Find' directive named `<name>_question`, you can find an answer formula 
named `<name>_answer` and annotated with `answer_to(...)` including the problem name:

```
  thf(<name>_answer,
      answer,
      (^[X: <type>]: <formula>),
      answer_to(<name>_question,[])).
```

The lambda expression `(^[X: <type>]: <formula>)` represents the set 
of answers as a characteristic function.

For a 'Draw' directive named `<name>_question` in the annotated formula,
you can find an answer formula named `<name>_answer` and annotated with
`answer_to(...)` including the problem name:

```
  thf(<name>_answer,
      answer,
      <term>,
      answer_to(<name>_question,[])).
```

where `<term>` is the geometric object to find.


