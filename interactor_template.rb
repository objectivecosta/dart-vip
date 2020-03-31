#!/usr/bin/ruby
def interactor_template(name)
    return  "
import '../models/#{name}FetchSomethingModels.dart';
import '../presentation/#{name}Presenter.dart';
import 'package:http/http.dart' as http;
    
class #{name}BusinessLogic {

  #{name}PresentationLogic presenter;

  void fetchSomething(#{name}FetchSomethingRequest request) async {
    throw UnimplementedError();
  }
}

class #{name}Interactor implements #{name}BusinessLogic {

  @override
  #{name}PresentationLogic presenter;

  @override
  void fetchSomething(#{name}FetchSomethingRequest request) async {
    // TODO: Implement this
  }
}"
end