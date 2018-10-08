# behave

## build

docker build -t behave .

## run

docker run behave

## example

```
not36788:docker-behave rafaelcirolini$ docker run behave
Feature: testing google # features/app.feature:1

  Scenario: visit google and check  # features/app.feature:3
    When we visit google            # features/steps/steps.py:1
    Then it should have a "content" # features/steps/steps.py:5

1 feature passed, 0 failed, 0 skipped
1 scenario passed, 0 failed, 0 skipped
2 steps passed, 0 failed, 0 skipped, 0 undefined
Took 0m1.620s
```
