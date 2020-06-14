library laas_ioc;

class IoC {

  static final IoC _instance = IoC._get();
  IoC._get();
  factory IoC()=> _instance;

  static Map<Type,Object> _registered =  Map<Type,Object>();
  void register<T>(T child){
    _registered.putIfAbsent(T, () => child);
  }
  T get<T>(){
    return _registered[T];
  }
  
}


