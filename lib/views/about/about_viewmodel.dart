import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stacked/stacked.dart';

class AboutViewModel extends BaseViewModel {
  String get version => dotenv.env['VERSION'] ?? "";
}
