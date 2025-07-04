import 'package:bookly_app/core/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customUrlLuncher(context, String? url) async {
  if (url != null) {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(context, 'url cant\'t lunch');
    }
  }
}
// import 'package:bookly_app/core/functions/custom_snack_bar.dart';
// import 'package:url_launcher/url_launcher.dart';

// Future<void> customUrlLuncher(context, String? url) async {
//   if (url != null) {
//     final uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     } else {
//       customSnackBar(context, 'url cant\'t lunch');
//     }
//   }
// }
