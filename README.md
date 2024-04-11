# Mobile application

1. Clean code structure
2. User design
3. API integration
4. Routes Management
5. Custom lint rules
6. Unit tests

Make sure it passes lint rules

``` 
flutter analyze 
```

### Project Structure

- global
    - extensions
    - logs
    - configs
    - styles
    - themes
- routes
    - routes.dart --> contains all the routing names
    - app_routes.dart --> contains the routing logic
    - separated or module --> module wise routes grouping
        - flower_routes.dart --> contains the routing logic for flower module
- network
    - api urls
    - network service
- screens
    - module 1
        - model
        - view
        - controller or view-model or presenter
        - repository
        - widgets
    - module 2
        - similar as module1
- utils or utility
    - utility classes
    - utility widgets