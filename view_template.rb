#!/usr/bin/ruby
def view_template(name)
    return  "
import 'package:flutter/widgets.dart';
import 'presentation/#{name}Presenter.dart';
import 'business/#{name}Interactor.dart';
import 'models/#{name}FetchSomethingModels.dart';

class #{name}DisplayLogic {

  #{name}BusinessLogic interactor;

  void displaySomething(#{name}FetchSomethingViewModel viewModel) {
    throw UnimplementedError();
  }
}

class #{name} extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _#{name}State();
  }
}

class _#{name}State extends State<#{name}> with SingleTickerProviderStateMixin implements #{name}DisplayLogic {

  _#{name}State() {
    final view = this;
    final interactor = #{name}Interactor();
    final presenter = #{name}Presenter();

    view.interactor = interactor;
    interactor.presenter = presenter;
    presenter.view = view;
  }

  @override
  #{name}BusinessLogic interactor;

  @override
  void displaySomething(#{name}FetchSomethingViewModel viewModel) {
    setState(() { });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(\"View\");
  }
}"
end