# template-lib-cpp
Template C/C++ library

## Build
```
docker build --target=build-export --output type=local,dest=./output .
```

## Test

### Unit
```
docker build --target build -t templatelib .
```

### Integration
```
docker build --target test -t templatelib .
docker run -it --rm templatelib
```

