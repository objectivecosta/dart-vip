#!/usr/bin/ruby
def presenter_template(name)
    return  "

import '../models/#{name}FetchSomethingModels.dart';
import '../#{name}.dart';

class #{name}PresentationLogic {

  #{name}DisplayLogic view;

  void presentSomething(#{name}FetchSomethingResponse response) async {
    throw UnimplementedError();
  }
}

class #{name}Presenter implements #{name}PresentationLogic {

  @override
  #{name}DisplayLogic view;

  @override
  void presentSomething(#{name}FetchSomethingResponse response) async {
    
  }
}"
end