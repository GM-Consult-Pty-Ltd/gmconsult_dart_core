// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

part 'meta_data.dart';

/// A collections of constants proprietary to GM Consult Pty Ltd.
class GmConsult {
  //

  /// Hiding the default constructor.
  const GmConsult._();

  /// A list of language codes supported by GM Consult software.
  static const supportedLanguages = _supportedLanguages;

  /// GM Consult Pty Ltd short-form end-user license (EULA)
  static const license = _license;

  /// GM Consult Pty Ltd BSD 3-clause open-source license as `List<StringMap>`.
  ///
  /// Includes style element/tags 'heading1', 'bullet' and 'bodyText' to allow
  /// formatting in a user interface.
  static const osdLicense = _osdLicense;

  /// GM Consult Pty Ltd short-form BSD 3-clause open-source license.
  static const osdLicenseShort = _osLicense;

  /// GM Consult long-form End-user License Agreement as `List<StringMap>`.
  ///
  /// Includes style element/tags 'heading1', 'bullet' and 'bodyText' to allow
  /// formatting in a user interface.
  static const eula = _eula;
}
