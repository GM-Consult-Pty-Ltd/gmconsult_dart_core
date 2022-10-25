// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

part of 'gm_consult.dart';

/// A list of language codes supported by the GM Consult platform.
const _supportedLanguages = [
  // 'en_us',
  'en'
      // 'zh',
      // 'hi',
      'es',
  // 'ar',
  'fr',
  // 'ru',
  'pt',
  // 'id',
  'de',
  // 'ja',
  // 'ko',
  'it',
  'el',
  'tr'
];

/// Short-form proprietary license
const _license = 'Copyright ©2022, GM Consult (Pty) Ltd.'
    ' All rights reserved. End user is granted a non-exclusive non-transferable'
    ' license the ("License") to use GM Consult\'s proprietary software '
    '(the "Software").';

/// Short-form open-source license
const _osLicense =
    'Copyright ©2022, GM Consult (Pty) Ltd.\nBSD 3-Clause License\nAll rights reserved';

/// GM Consult long-form End-user License Agreement as List<StringMap>
/// Includes style element/tags 'heading1', 'bullet' and 'bodyText' to allow
/// formatting in a user interface.
const _eula = [
  {
    'style': 'heading1',
    'text': 'GM Consult Software Products End-User License Agreement (EULA)'
  },
  {
    'style': 'bodyText',
    'text':
        'This End-User License Agreement ("EULA") is the only legal agreement '
            'between you and GM Consult Pty Ltd.'
  },
  {
    'style': 'bodyText',
    'text':
        'This EULA governs your acquisition and use of our Software ("Software") directly from GM Consult Pty Ltd or indirectly through GM Consult Pty Ltd authorized reseller or distributor (a "Reseller").'
  },
  {
    'style': 'bodyText',
    'text':
        'Please read this EULA carefully before completing the installation process and using Software. It provides a license to use the Software and contains warranty information and liability disclaimers.'
  },
  {
    'style': 'bodyText',
    'text':
        'If you register for a free trial of the Software, this EULA will also govern that trial. By clicking "accept" or installing and/or using the Software, you are confirming your acceptance of the Software and agreeing to become bound by the terms of this EULA.'
  },
  {
    'style': 'bodyText',
    'text':
        'If you are entering into this EULA on behalf of a company or other legal entity, you represent that you have the authority to bind such entity and its affiliates to these terms and conditions. If you do not have such authority or if you do not agree with the terms and conditions of this EULA, do not install or use the Software, and you must not accept this EULA.'
  },
  {
    'style': 'bodyText',
    'text':
        'This EULA shall apply only to the Software supplied by GM Consult Pty Ltd herewith regardless of whether other software is referred to or described herein. The terms also apply to any GM Consult Pty Ltd updates, supplements, Internet-based services, and support services for the Software, unless other terms accompany those items on delivery. If so, those terms shall apply.'
  },
  {'style': 'heading1', 'text': 'License Grant'},
  {
    'style': 'bodyText',
    'text':
        'GM Consult Pty Ltd hereby grants you a personal, non-transferable, non-exclusive licence to use the Software on your devices in accordance with the terms of this EULA. You are permitted to load the Software (for example a PC, laptop, mobile or tablet) under your control. You are responsible for ensuring your device meets the minimum requirements of the Software.'
  },
  {
    'style': 'bodyText',
    'text':
        'You are NOT permitted to edit, alter, modify, adapt, translate or otherwise change the whole or any part of the Software nor permit the whole or any part of the Software to be combined with or become incorporated in any other software, nor decompile, disassemble or reverse engineer the Software or attempt to do any such things.You are also NOT permitted to reproduce, copy, distribute, resell or otherwise use the Software for any commercial purpose or allow any third party to use the Software on behalf of or for the benefit of any third party.You may not the Software in any way which breaches any applicable local, national or international law oruse the Software for any purpose that GM Consult Pty Ltd considers is a breach of this EULA.'
  },
  {'style': 'heading1', 'text': 'Intellectual Property and Ownership'},
  {
    'style': 'bodyText',
    'text':
        'GM Consult Pty Ltd shall at all times retain ownership of the Software as originally downloaded by you and all subsequent downloads of the Software by you. The Software (and the copyright, and other intellectual property rights of whatever nature in the Software, including any modifications made thereto) are and shall remain the property of GM Consult Pty Ltd. GM Consult Pty Ltd reserves the right to grant licences to use the Software to third parties.'
  },
  {'style': 'heading1', 'text': 'Termination'},
  {
    'style': 'bodyText',
    'text':
        'This EULA is effective from the date you first use the Software and shall continue until terminated. You may terminate it at any time upon written notice to GM Consult Pty Ltd. It will also terminate immediately if you fail to comply with any term of this EULA. Upon such termination, the licenses granted by this EULA will immediately terminate and you agree to stop all access and use of the Software. The provisions that by their nature continue and survive will survive any termination of this EULA.'
  },
  {'style': 'heading1', 'text': 'Governing Law'},
  {
    'style': 'bodyText',
    'text':
        'This EULA, and any dispute arising out of or in connection with this EULA, shall be governed by and construed in accordance with the laws of Australia.'
  }
];

/// GM Consult long-form End-user License Agreement as List<StringMap>
/// Includes style element/tags 'heading1', 'bullet' and 'bodyText' to allow
/// formatting in a user interface.
const _osdLicense = [
  {'style': 'heading1', 'text': 'BSD 3-Clause License'},
  {'style': 'bodyText', 'text': 'Copyright (c) 2022, GM Consult Pty Ltd'},
  {
    'style': 'bodyText',
    'text': 'Redistribution and use in source and binary forms, with '
        'or without modification, are permitted provided that the following conditions are met:'
  },
  {
    'style': 'bullet',
    'text': 'Redistributions of source code must retain the above '
        'copyright notice, this list of conditions and the following '
        'disclaimer.'
  },
  {
    'style': 'bullet',
    'text': 'Redistributions in binary form must reproduce the above '
        'copyright notice, this list of conditions and the following '
        'disclaimer in the documentation and/or other materials provided '
        'with the distribution.'
  },
  {
    'style': 'bullet',
    'text': 'Neither the name of the copyright holder nor the names of '
        'its contributors may be used to endorse or promote products '
        'derived from this software without specific prior written '
        'permission.'
  },
  {
    'style': 'bodyText',
    'text': 'THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND '
        'CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,'
        ' INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF '
        'MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE '
        'DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR '
        'CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, '
        'SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT '
        'NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; '
        'LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER '
        'CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, '
        'STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) '
        'ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF '
        'ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.'
  },
];
