# template-lib-cpp
Template C/C++ library

## Build
```
docker build [--target builder] -t templatelibcpp .
```

## Test

### Unit
```
docker build --target builder -t templatelibcpp .
```

### Integration
```
docker build --target tester -t templatelibcpp .
docker run -it --rm templatelibcpp
> ./tests/integration/templatelib.i.t
```
