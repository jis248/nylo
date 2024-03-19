import 'package:flutter/material.dart';
import 'package:flutter_app/app/networking/api_service.dart';
import '../models/location_resp.dart';
import '/resources/widgets/logo_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'controller.dart';

class HomeController extends Controller {
  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  ApiService _apiservice = new ApiService();
  onTapDocumentation() async {
    await launchUrl(Uri.parse("https://nylo.dev/docs"));
  }

  onTapGithub() async {
    // await launchUrl(Uri.parse("https://github.com/nylo-core/nylo"));

    List<LocationRespLocationAvailability>? temp = await _apiservice.fetchTestData1();
    
  }

  onTapChangeLog() async {
    await launchUrl(Uri.parse(
        "https://github.com/nylo-core/nylo/releases"));
  }

  onTapYouTube() async {
    await launchUrl(Uri.parse("https://m.youtube.com/@nylo_dev"));
  }

  showAbout() {
    showAboutDialog(
      context: context!,
      applicationName: getEnv('APP_NAME'),
      applicationIcon: Logo(),
      applicationVersion: nyloVersion,
    );
  }
}
