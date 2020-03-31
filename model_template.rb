#!/usr/bin/ruby
def model_template(name, use_case)
    return  "
class #{name}#{use_case}Request {
  #{name}#{use_case}Request({this.param});
  final String param;
}

class #{name}#{use_case}Response {
  #{name}#{use_case}Response({this.responseModel, this.error});
  final dynamic responseModel;
  final Error error;
}

class #{name}#{use_case}ViewModel {
  #{name}#{use_case}ViewModel({this.viewModel});
  final dynamic viewModel;
}
"
end