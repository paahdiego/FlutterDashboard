import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static String get docFile => "assets/icons/doc_file.svg";
  static String get documents => "assets/icons/documents.svg";
  static String get dropBox => "assets/icons/drop_box.svg";
  static String get excleFile => "assets/icons/excle_file.svg";
  static String get figmaFile => "assets/icons/figma_file.svg";
  static String get folder => "assets/icons/folder.svg";
  static String get googleDrive => "assets/icons/google_drive.svg";
  static String get logoSvg => "assets/icons/logo.svg";
  static String get media => "assets/icons/media.svg";
  static String get mediaFile => "assets/icons/media_file.svg";
  static String get menuDashboard => "assets/icons/menu_dashboard.svg";
  static String get menuDoc => "assets/icons/menu_doc.svg";
  static String get menuNotification => "assets/icons/menu_notification.svg";
  static String get menuProfile => "assets/icons/menu_profile.svg";
  static String get menuSetting => "assets/icons/menu_setting.svg";
  static String get menuStore => "assets/icons/menu_store.svg";
  static String get menuTask => "assets/icons/menu_task.svg";
  static String get menuTran => "assets/icons/menu_tran.svg";
  static String get oneDrive => "assets/icons/one_drive.svg";
  static String get pdfFile => "assets/icons/pdf_file.svg";
  static String get search => "assets/icons/search.svg";
  static String get soundFile => "assets/icons/sound_file.svg";
  static String get unknown => "assets/icons/unknown.svg";
  static String get xdFile => "assets/icons/xd_file.svg";

  static Future<void> loadCache() {
    return Future.wait([
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.docFile),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.documents),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.dropBox),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.excleFile),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.figmaFile),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.folder),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.googleDrive),
        null,
      ),
      /* precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.logoSvg),
        null,
      ), */
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.media),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.mediaFile),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.menuDashboard),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.menuDoc),
        null,
      ),
      precachePicture(
        ExactAssetPicture(
            SvgPicture.svgStringDecoder, AppIcons.menuNotification),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.menuProfile),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.menuSetting),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.menuStore),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.menuTask),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.menuTran),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.oneDrive),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.pdfFile),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.search),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.soundFile),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.unknown),
        null,
      ),
      precachePicture(
        ExactAssetPicture(SvgPicture.svgStringDecoder, AppIcons.xdFile),
        null,
      ),
    ]);
  }
}
