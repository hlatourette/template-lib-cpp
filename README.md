# template-lib
Template C++ library

## Build

### Builder
```
docker build --target builder -t templatelib .
```

### Full
```
docker build -t templatelib .
```

## Test

### Unit
```
docker build --target builder -t templatelib .
```

### Integration
```
docker build --target tester -t templatelib .
docker run -it --rm --name templatelib templatelib
```

In container
```
./tests/integration/integrationtest.tsk
```
