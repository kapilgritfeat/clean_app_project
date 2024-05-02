# State Management/Test using Cubit

#### Libraries Used
```  
flutter_bloc: ^8.1.5
bloc_test: ^9.1.7 --> for cubit testing
freezed: ^2.5.2 --> code generator for cubit and state

```  
### Project Structure
The project structure is the same as our base structure, but cubit is defined under view directory.

.../base structure
/view
- cubit
-  flower_list_screen.dart
   /test
- app_cubit_test.dart --> cubit test

### Custom Lint rules
Ignore errors due to code generation package primarily freezed

```  
invalid_annotation_target: ignore
```  




  