# template-lib-cpp
Template C++ library

## Build

### Builder
```
docker build --target builder -t templatelibcpp .
```

### Full
```
docker build -t templatelibcpp .
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
```

In container
```
./tests/integration/integrationtest.tsk
```
