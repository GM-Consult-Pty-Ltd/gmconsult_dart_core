/// Currencies
const currencies = {
  'AFN': {
    'name': 'Afghani',
    'symbol': '؋',
    'symbolUnicode': '1547',
    'isoSerial': '971',
    'countries': ['AF'],
  },
  'EUR': {
    'name': 'Euro',
    'symbol': '€',
    'symbolUnicode': '8364',
    'isoSerial': '978',
    'countries': [
      'AX',
      'AD',
      'AT',
      'BE',
      'CY',
      'EE',
      'EU',
      'FI',
      'FR',
      'GF',
      'TF',
      'DE',
      'GR',
      'GP',
      'VA',
      'IE',
      'IT',
      'LV',
      'LT',
      'LU',
      'MT',
      'MQ',
      'YT',
      'MC',
      'ME',
      'NL',
      'PT',
      'RE',
      'BL',
      'MF',
      'PM',
      'SM',
      'SK',
      'SI',
      'ES',
      'IC',
      'EA',
      'XK'
    ],
  },
  'ALL': {
    'name': 'Lek',
    'symbol': 'Lek',
    'isoSerial': '008',
    'countries': ['AL'],
  },
  'DZD': {
    'name': 'Algerian Dinar',
    'symbol': 'د.ج',
    'symbolUnicode': '1583',
    'isoSerial': '012',
    'countries': ['DZ'],
  },
  'USD': {
    'name': 'US Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '840',
    'countries': [
      'AS',
      'BQ',
      'IO',
      'EC',
      'SV',
      'GU',
      'HT',
      'MH',
      'FM',
      'MP',
      'PW',
      'PA',
      'PR',
      'TL',
      'TC',
      'UM',
      'US',
      'VG',
      'VI',
      'DG',
      'AQ'
    ],
  },
  'AOA': {
    'name': 'Kwanza',
    'symbol': 'Kz',
    'symbolUnicode': '75',
    'isoSerial': '973',
    'countries': ['AO'],
  },
  'XCD': {
    'name': 'East Caribbean Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '951',
    'countries': ['AI', 'AG', 'DM', 'GD', 'MS', 'KN', 'LC', 'VC'],
  },
  'ARS': {
    'name': 'Argentine Peso',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '032',
    'countries': ['AR'],
  },
  'AMD': {
    'name': 'Armenian Dram',
    'symbol': 'Դ',
    'symbolUnicode': '1332',
    'isoSerial': '051',
    'countries': ['AM'],
  },
  'AWG': {
    'name': 'Aruban Florin',
    'symbol': 'ƒ',
    'symbolUnicode': '402',
    'isoSerial': '533',
    'countries': ['AW'],
  },
  'AUD': {
    'name': 'Australian Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '036',
    'countries': ['AU', 'CX', 'CC', 'HM', 'KI', 'NR', 'NF', 'TV'],
  },
  'AZN': {
    'name': 'Azerbaijan Manat',
    'symbol': '₼',
    'symbolUnicode': '8380',
    'isoSerial': '944',
    'countries': ['AZ'],
  },
  'BSD': {
    'name': 'Bahamian Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '044',
    'countries': ['BS'],
  },
  'BHD': {
    'name': 'Bahraini Dinar',
    'symbol': 'ب.د',
    'symbolUnicode': '1576',
    'isoSerial': '048',
    'countries': ['BH'],
  },
  'BDT': {
    'name': 'Taka',
    'symbol': '৳',
    'symbolUnicode': '2547',
    'isoSerial': '050',
    'countries': ['BD'],
  },
  'BBD': {
    'name': 'Barbados Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '052',
    'countries': ['BB'],
  },
  'BYN': {
    'name': 'Belarusian Ruble',
    'symbol': 'Br',
    'symbolUnicode': '66',
    'isoSerial': '933',
    'countries': ['BY'],
  },
  'BZD': {
    'name': 'Belize Dollar',
    'symbol': 'BZ\$',
    'symbolUnicode': '66',
    'isoSerial': '084',
    'countries': ['BZ'],
  },
  'XOF': {
    'name': 'CFA Franc BCEAO',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '952',
    'countries': ['BJ', 'BF', 'CI', 'GW', 'ML', 'NE', 'SN', 'TG'],
  },
  'BMD': {
    'name': 'Bermudian Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '060',
    'countries': ['BM'],
  },
  'BTN': {
    'name': 'Ngultrum',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '064',
    'countries': ['BT'],
  },
  'INR': {
    'name': 'Indian Rupee',
    'symbol': '₹',
    'symbolUnicode': '8377',
    'isoSerial': '356',
    'countries': ['BT', 'IN'],
  },
  'BOB': {
    'name': 'Boliviano',
    'symbol': '\$b',
    'symbolUnicode': '36',
    'isoSerial': '068',
    'countries': ['BO'],
  },
  'BOV': {
    'name': 'Mvdol',
    'symbol': 'Bs.',
    'symbolUnicode': '66',
    'isoSerial': '984',
    'countries': ['BO'],
  },
  'BAM': {
    'name': 'Convertible Mark',
    'symbol': 'KM',
    'isoSerial': '977',
    'countries': ['BA'],
  },
  'BWP': {
    'name': 'Pula',
    'symbol': 'P',
    'symbolUnicode': '80',
    'isoSerial': '072',
    'countries': ['BW'],
  },
  'NOK': {
    'name': 'Norwegian Krone',
    'symbol': 'kr',
    'symbolUnicode': '107',
    'isoSerial': '578',
    'countries': ['BV', 'NO', 'SJ'],
  },
  'BRL': {
    'name': 'Brazilian Real',
    'symbol': 'R\$',
    'symbolUnicode': '82',
    'isoSerial': '986',
    'countries': ['BR'],
  },
  'BND': {
    'name': 'Brunei Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '096',
    'countries': ['BN'],
  },
  'BGN': {
    'name': 'Bulgarian Lev',
    'symbol': 'лв',
    'symbolUnicode': '1083',
    'isoSerial': '975',
    'countries': ['BG'],
  },
  'BIF': {
    'name': 'Burundi Franc',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '108',
    'countries': ['BI'],
  },
  'CVE': {
    'name': 'Cabo Verde Escudo',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '132',
    'countries': ['CV'],
  },
  'KHR': {
    'name': 'Riel',
    'symbol': '៛',
    'symbolUnicode': '6107',
    'isoSerial': '116',
    'countries': ['KH'],
  },
  'XAF': {
    'name': 'CFA Franc BEAC',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '950',
    'countries': ['CM', 'CF', 'TD', 'CG', 'GQ', 'GA'],
  },
  'CAD': {
    'name': 'Canadian Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '124',
    'countries': ['CA'],
  },
  'KYD': {
    'name': 'Cayman Islands Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '136',
    'countries': ['KY'],
  },
  'CLF': {
    'name': 'Unidad de Fomento',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '990',
    'countries': ['CL'],
  },
  'CLP': {
    'name': 'Chilean Peso',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '152',
    'countries': ['CL'],
  },
  'CNY': {
    'name': 'Yuan Renminbi',
    'symbol': '¥',
    'symbolUnicode': '165',
    'isoSerial': '156',
    'countries': ['CN'],
  },
  'COP': {
    'name': 'Colombian Peso',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '170',
    'countries': ['CO'],
  },
  'COU': {
    'name': 'Unidad de Valor Real',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '970',
    'countries': ['CO'],
  },
  'KMF': {
    'name': 'Comorian Franc ',
    'symbol': '៛',
    'symbolUnicode': '6107',
    'isoSerial': '174',
    'countries': ['KM'],
  },
  'CDF': {
    'name': 'Congolese Franc',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '976',
    'countries': ['CD'],
  },
  'NZD': {
    'name': 'New Zealand Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '554',
    'countries': ['CK', 'NZ', 'NU', 'PN', 'TK'],
  },
  'CRC': {
    'name': 'Costa Rican Colon',
    'symbol': '₡',
    'symbolUnicode': '8353',
    'isoSerial': '188',
    'countries': ['CR'],
  },
  'HRK': {
    'name': 'Kuna',
    'symbol': 'kn',
    'isoSerial': '191',
    'countries': ['HR'],
  },
  'CUC': {
    'name': 'Peso Convertible',
    'symbol': '₡',
    'symbolUnicode': '8353',
    'isoSerial': '931',
    'countries': ['CU'],
  },
  'CUP': {
    'name': 'Cuban Peso',
    'symbol': '₱',
    'symbolUnicode': '8369',
    'isoSerial': '192',
    'countries': ['CU'],
  },
  'ANG': {
    'name': 'Netherlands Antillean Guilder',
    'symbol': 'ƒ',
    'symbolUnicode': '402',
    'isoSerial': '532',
    'countries': ['CW', 'SX'],
  },
  'CZK': {
    'name': 'Czech Koruna',
    'symbol': 'Kč',
    'symbolUnicode': '75',
    'isoSerial': '203',
    'countries': ['CZ'],
  },
  'DKK': {
    'name': 'Danish Krone',
    'symbol': 'kr',
    'symbolUnicode': '107',
    'isoSerial': '208',
    'countries': ['DK', 'FO', 'GL'],
  },
  'DJF': {
    'name': 'Djibouti Franc',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '262',
    'countries': ['DJ'],
  },
  'DOP': {
    'name': 'Dominican Peso',
    'symbol': 'RD\$',
    'isoSerial': '214',
    'countries': ['DO'],
  },
  'EGP': {
    'name': 'Egyptian Pound',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '818',
    'countries': ['EG'],
  },
  'SVC': {
    'name': 'El Salvador Colon',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '222',
    'countries': ['SV'],
  },
  'ERN': {
    'name': 'Nakfa',
    'symbol': 'Nfk',
    'symbolUnicode': '78',
    'isoSerial': '232',
    'countries': ['ER'],
  },
  'SZL': {
    'name': 'Lilangeni',
    'symbol': 'L',
    'symbolUnicode': '76',
    'isoSerial': '748',
    'countries': ['SZ'],
  },
  'ETB': {
    'name': 'Ethiopian Birr',
    'symbol': 'ብር',
    'symbolUnicode': '4709',
    'isoSerial': '230',
    'countries': ['ET'],
  },
  'FKP': {
    'name': 'Falkland Islands Pound',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '238',
    'countries': ['FK'],
  },
  'FJD': {
    'name': 'Fiji Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '242',
    'countries': ['FJ'],
  },
  'XPF': {
    'name': 'CFP Franc',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '953',
    'countries': ['PF', 'NC', 'WF'],
  },
  'GMD': {
    'name': 'Dalasi',
    'symbol': 'D',
    'symbolUnicode': '68',
    'isoSerial': '270',
    'countries': ['GM'],
  },
  'GEL': {
    'name': 'Lari',
    'symbol': 'ლ',
    'symbolUnicode': '4314',
    'isoSerial': '981',
    'countries': ['GE'],
  },
  'GHS': {
    'name': 'Ghana Cedi',
    'symbol': '¢',
    'symbolUnicode': '162',
    'isoSerial': '936',
    'countries': ['GH'],
  },
  'GIP': {
    'name': 'Gibraltar Pound',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '292',
    'countries': ['GI'],
  },
  'GTQ': {
    'name': 'Quetzal',
    'symbol': 'Q',
    'symbolUnicode': '81',
    'isoSerial': '320',
    'countries': ['GT'],
  },
  'GBP': {
    'name': 'Pound Sterling',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '826',
    'countries': ['GG', 'IM', 'JE', 'GB', 'GS'],
  },
  'GNF': {
    'name': 'Guinean Franc',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '324',
    'countries': ['GN'],
  },
  'GYD': {
    'name': 'Guyana Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '328',
    'countries': ['GY'],
  },
  'HTG': {
    'name': 'Gourde',
    'symbol': 'G',
    'symbolUnicode': '71',
    'isoSerial': '332',
    'countries': ['HT'],
  },
  'HNL': {
    'name': 'Lempira',
    'symbol': 'L',
    'symbolUnicode': '76',
    'isoSerial': '340',
    'countries': ['HN'],
  },
  'HKD': {
    'name': 'Hong Kong Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '344',
    'countries': ['HK'],
  },
  'HUF': {
    'name': 'Forint',
    'symbol': 'Ft',
    'symbolUnicode': '70',
    'isoSerial': '348',
    'countries': ['HU'],
  },
  'ISK': {
    'name': 'Iceland Krona',
    'symbol': 'kr',
    'symbolUnicode': '107',
    'isoSerial': '352',
    'countries': ['IS'],
  },
  'IDR': {
    'name': 'Rupiah',
    'symbol': 'Rp',
    'symbolUnicode': '82',
    'isoSerial': '360',
    'countries': ['ID'],
  },
  'XDR': {
    'name': 'SDR (Special Drawing Right)',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '960',
    'countries': ['IMF'],
  },
  'IRR': {
    'name': 'Iranian Rial',
    'symbol': '﷼',
    'symbolUnicode': '65020',
    'isoSerial': '364',
    'countries': ['IR'],
  },
  'IQD': {
    'name': 'Iraqi Dinar',
    'symbol': 'ع.د',
    'symbolUnicode': '1593',
    'isoSerial': '368',
    'countries': ['IQ'],
  },
  'ILS': {
    'name': 'New Israeli Sheqel',
    'symbol': '₪',
    'symbolUnicode': '8362',
    'isoSerial': '376',
    'countries': ['IL', 'PS'],
  },
  'JMD': {
    'name': 'Jamaican Dollar',
    'symbol': 'J\$',
    'symbolUnicode': '74',
    'isoSerial': '388',
    'countries': ['JM'],
  },
  'JPY': {
    'name': 'Yen',
    'symbol': '¥',
    'symbolUnicode': '165',
    'isoSerial': '392',
    'countries': ['JP'],
  },
  'JOD': {
    'name': 'Jordanian Dinar',
    'symbol': 'د.ا',
    'symbolUnicode': '1583',
    'isoSerial': '400',
    'countries': ['JO'],
  },
  'KZT': {
    'name': 'Tenge',
    'symbol': 'лв',
    'symbolUnicode': '1083',
    'isoSerial': '398',
    'countries': ['KZ'],
  },
  'KES': {
    'name': 'Kenyan Shilling',
    'symbol': 'Sh',
    'symbolUnicode': '83',
    'isoSerial': '404',
    'countries': ['KE'],
  },
  'KPW': {
    'name': 'North Korean Won',
    'symbol': '₩',
    'symbolUnicode': '8361',
    'isoSerial': '408',
    'countries': ['KP'],
  },
  'KRW': {
    'name': 'Won',
    'symbol': '₩',
    'symbolUnicode': '8361',
    'isoSerial': '410',
    'countries': ['KR'],
  },
  'KWD': {
    'name': 'Kuwaiti Dinar',
    'symbol': 'د.ك',
    'symbolUnicode': '1583',
    'isoSerial': '414',
    'countries': ['KW'],
  },
  'KGS': {
    'name': 'Som',
    'symbol': 'лв',
    'symbolUnicode': '1083',
    'isoSerial': '417',
    'countries': ['KG'],
  },
  'LAK': {
    'name': 'Lao Kip',
    'symbol': '₭',
    'symbolUnicode': '8365',
    'isoSerial': '418',
    'countries': ['LA'],
  },
  'LBP': {
    'name': 'Lebanese Pound',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '422',
    'countries': ['LB'],
  },
  'LSL': {
    'name': 'Loti',
    'symbol': 'L',
    'symbolUnicode': '76',
    'isoSerial': '426',
    'countries': ['LS'],
  },
  'ZAR': {
    'name': 'Rand',
    'symbol': 'R',
    'symbolUnicode': '82',
    'isoSerial': '710',
    'countries': ['LS', 'NA', 'ZA'],
  },
  'LRD': {
    'name': 'Liberian Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '430',
    'countries': ['LR'],
  },
  'LYD': {
    'name': 'Libyan Dinar',
    'symbol': 'ل.د',
    'symbolUnicode': '1604',
    'isoSerial': '434',
    'countries': ['LY'],
  },
  'CHF': {
    'name': 'Swiss Franc',
    'symbol': 'CHF',
    'symbolUnicode': '67',
    'isoSerial': '756',
    'countries': ['LI', 'CH'],
  },
  'MOP': {
    'name': 'Pataca',
    'symbol': 'P',
    'symbolUnicode': '80',
    'isoSerial': '446',
    'countries': ['MO'],
  },
  'MGA': {
    'name': 'Malagasy Ariary',
    'symbol': 'Ar',
    'symbolUnicode': '65',
    'isoSerial': '969',
    'countries': ['MG'],
  },
  'MWK': {
    'name': 'Malawi Kwacha',
    'symbol': 'MK',
    'symbolUnicode': '77',
    'isoSerial': '454',
    'countries': ['MW'],
  },
  'MYR': {
    'name': 'Malaysian Ringgit',
    'symbol': 'RM',
    'symbolUnicode': '82',
    'isoSerial': '458',
    'countries': ['MY'],
  },
  'MVR': {
    'name': 'Rufiyaa',
    'symbol': 'ރ.',
    'symbolUnicode': '1923',
    'isoSerial': '462',
    'countries': ['MV'],
  },
  'MRU': {
    'name': 'Ouguiya',
    'symbol': 'UM',
    'symbolUnicode': '85',
    'isoSerial': '929',
    'countries': ['MR'],
  },
  'MUR': {
    'name': 'Mauritius Rupee',
    'symbol': '₨',
    'symbolUnicode': '8360',
    'isoSerial': '480',
    'countries': ['MU'],
  },
  'MXN': {
    'name': 'Mexican Peso',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '484',
    'countries': ['MX'],
  },
  'MXV': {
    'name': 'Mexican Unidad de Inversion (UDI)',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '979',
    'countries': ['MX'],
  },
  'MDL': {
    'name': 'Moldovan Leu',
    'symbol': 'L',
    'symbolUnicode': '76',
    'isoSerial': '498',
    'countries': ['MD'],
  },
  'MNT': {
    'name': 'Tugrik',
    'symbol': '₮',
    'symbolUnicode': '8366',
    'isoSerial': '496',
    'countries': ['MN'],
  },
  'MAD': {
    'name': 'Moroccan Dirham',
    'symbol': 'د.م.',
    'symbolUnicode': '1583',
    'isoSerial': '504',
    'countries': ['MA', 'EH'],
  },
  'MZN': {
    'name': 'Mozambique Metical',
    'symbol': 'MT',
    'symbolUnicode': '77',
    'isoSerial': '943',
    'countries': ['MZ'],
  },
  'MMK': {
    'name': 'Kyat',
    'symbol': 'K',
    'symbolUnicode': '75',
    'isoSerial': '104',
    'countries': ['MM'],
  },
  'NAD': {
    'name': 'Namibia Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '516',
    'countries': ['NA'],
  },
  'NPR': {
    'name': 'Nepalese Rupee',
    'symbol': '₨',
    'symbolUnicode': '8360',
    'isoSerial': '524',
    'countries': ['NP'],
  },
  'NIO': {
    'name': 'Cordoba Oro',
    'symbol': 'C\$',
    'symbolUnicode': '67',
    'isoSerial': '558',
    'countries': ['NI'],
  },
  'NGN': {
    'name': 'Naira',
    'symbol': '₦',
    'symbolUnicode': '8358',
    'isoSerial': '566',
    'countries': ['NG'],
  },
  'MKD': {
    'name': 'Denar',
    'symbol': 'ден',
    'symbolUnicode': '1076',
    'isoSerial': '807',
    'countries': ['MK'],
  },
  'OMR': {
    'name': 'Rial Omani',
    'symbol': '﷼',
    'symbolUnicode': '65020',
    'isoSerial': '512',
    'countries': ['OM'],
  },
  'PKR': {
    'name': 'Pakistan Rupee',
    'symbol': '₨',
    'symbolUnicode': '8360',
    'isoSerial': '586',
    'countries': ['PK'],
  },
  'PAB': {
    'name': 'Balboa',
    'symbol': 'B/.',
    'symbolUnicode': '66',
    'isoSerial': '590',
    'countries': ['PA'],
  },
  'PGK': {
    'name': 'Kina',
    'symbol': 'K',
    'symbolUnicode': '75',
    'isoSerial': '598',
    'countries': ['PG'],
  },
  'PYG': {
    'name': 'Guarani',
    'symbol': 'Gs',
    'symbolUnicode': '71',
    'isoSerial': '600',
    'countries': ['PY'],
  },
  'PEN': {
    'name': 'Sol',
    'symbol': 'S/.',
    'symbolUnicode': '83',
    'isoSerial': '604',
    'countries': ['PE'],
  },
  'PHP': {
    'name': 'Philippine Peso',
    'symbol': '₱',
    'symbolUnicode': '8369',
    'isoSerial': '608',
    'countries': ['PH'],
  },
  'PLN': {
    'name': 'Zloty',
    'symbol': 'zł',
    'symbolUnicode': '122',
    'isoSerial': '985',
    'countries': ['PL'],
  },
  'QAR': {
    'name': 'Qatari Rial',
    'symbol': '﷼',
    'symbolUnicode': '65020',
    'isoSerial': '634',
    'countries': ['QA'],
  },
  'RON': {
    'name': 'Romanian Leu',
    'symbol': 'lei',
    'symbolUnicode': '108',
    'isoSerial': '946',
    'countries': ['RO'],
  },
  'RUB': {
    'name': 'Russian Ruble',
    'symbol': '₽',
    'symbolUnicode': '8381',
    'isoSerial': '643',
    'countries': ['RU'],
  },
  'RWF': {
    'name': 'Rwanda Franc',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '646',
    'countries': ['RW'],
  },
  'SHP': {
    'name': 'Saint Helena Pound',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '654',
    'countries': ['SH'],
  },
  'WST': {
    'name': 'Tala',
    'symbol': 'T',
    'symbolUnicode': '84',
    'isoSerial': '882',
    'countries': ['WS'],
  },
  'STN': {
    'name': 'Dobra',
    'symbol': 'Db',
    'symbolUnicode': '68',
    'isoSerial': '930',
    'countries': ['ST'],
  },
  'SAR': {
    'name': 'Saudi Riyal',
    'symbol': '﷼',
    'symbolUnicode': '65020',
    'isoSerial': '682',
    'countries': ['SA'],
  },
  'RSD': {
    'name': 'Serbian Dinar',
    'symbol': 'Дин.',
    'symbolUnicode': '1044',
    'isoSerial': '941',
    'countries': ['RS'],
  },
  'SCR': {
    'name': 'Seychelles Rupee',
    'symbol': '₨',
    'symbolUnicode': '8360',
    'isoSerial': '690',
    'countries': ['SC'],
  },
  'SLL': {
    'name': 'Leone',
    'symbol': 'Le',
    'symbolUnicode': '76',
    'isoSerial': '694',
    'countries': ['SL'],
  },
  'SGD': {
    'name': 'Singapore Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '702',
    'countries': ['SG'],
  },
  'SBD': {
    'name': 'Solomon Islands Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '090',
    'countries': ['SB'],
  },
  'SOS': {
    'name': 'Somali Shilling',
    'symbol': 'S',
    'symbolUnicode': '83',
    'isoSerial': '706',
    'countries': ['SO'],
  },
  'SSP': {
    'name': 'South Sudanese Pound',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '728',
    'countries': ['SS'],
  },
  'LKR': {
    'name': 'Sri Lanka Rupee',
    'symbol': '₨',
    'symbolUnicode': '8360',
    'isoSerial': '144',
    'countries': ['LK'],
  },
  'SDG': {
    'name': 'Sudanese Pound',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '938',
    'countries': ['SD'],
  },
  'SRD': {
    'name': 'Surinam Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '968',
    'countries': ['SR'],
  },
  'SEK': {
    'name': 'Swedish Krona',
    'symbol': 'kr',
    'symbolUnicode': '107',
    'isoSerial': '752',
    'countries': ['SE'],
  },
  'CHE': {
    'name': 'WIR Euro',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '947',
    'countries': ['CH'],
  },
  'CHW': {
    'name': 'WIR Franc',
    'symbol': '₣',
    'symbolUnicode': '8355',
    'isoSerial': '948',
    'countries': ['CH'],
  },
  'SYP': {
    'name': 'Syrian Pound',
    'symbol': '£',
    'symbolUnicode': '163',
    'isoSerial': '760',
    'countries': ['SY'],
  },
  'TWD': {
    'name': 'New Taiwan Dollar',
    'symbol': 'NT\$',
    'symbolUnicode': '78',
    'isoSerial': '901',
    'countries': ['TW'],
  },
  'TJS': {
    'name': 'Somoni',
    'symbol': 'ЅМ',
    'symbolUnicode': '1029',
    'isoSerial': '972',
    'countries': ['TJ'],
  },
  'TZS': {
    'name': 'Tanzanian Shilling',
    'symbol': 'Sh',
    'symbolUnicode': '83',
    'isoSerial': '834',
    'countries': ['TZ'],
  },
  'THB': {
    'name': 'Baht',
    'symbol': '฿',
    'symbolUnicode': '3647',
    'isoSerial': '764',
    'countries': ['TH'],
  },
  'TOP': {
    'name': 'Pa’anga',
    'symbol': 'T\$',
    'symbolUnicode': '84',
    'isoSerial': '776',
    'countries': ['TO'],
  },
  'TTD': {
    'name': 'Trinidad and Tobago Dollar',
    'symbol': 'TT\$',
    'symbolUnicode': '84',
    'isoSerial': '780',
    'countries': ['TT'],
  },
  'TND': {
    'name': 'Tunisian Dinar',
    'symbol': 'د.ت',
    'symbolUnicode': '1583',
    'isoSerial': '788',
    'countries': ['TN'],
  },
  'TRY': {
    'name': 'Turkish Lira',
    'symbol': '₺',
    'symbolUnicode': '8378',
    'isoSerial': '949',
    'countries': ['TR'],
  },
  'TMT': {
    'name': 'Turkmenistan New Manat',
    'symbol': 'm',
    'symbolUnicode': '109',
    'isoSerial': '934',
    'countries': ['TM'],
  },
  'UGX': {
    'name': 'Uganda Shilling',
    'symbol': 'Sh',
    'symbolUnicode': '83',
    'isoSerial': '800',
    'countries': ['UG'],
  },
  'UAH': {
    'name': 'Hryvnia',
    'symbol': '₴',
    'symbolUnicode': '8372',
    'isoSerial': '980',
    'countries': ['UA'],
  },
  'AED': {
    'name': 'UAE Dirham',
    'symbol': 'د.إ',
    'symbolUnicode': '1583',
    'isoSerial': '784',
    'countries': ['AE'],
  },
  'USN': {
    'name': 'US Dollar (Next day)',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '997',
    'countries': ['US'],
  },
  'UYI': {
    'name': 'Uruguay Peso en Unidades Indexadas (UI)',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '940',
    'countries': ['UY'],
  },
  'UYU': {
    'name': 'Peso Uruguayo',
    'symbol': '\$U',
    'symbolUnicode': '36',
    'isoSerial': '858',
    'countries': ['UY'],
  },
  'UYW': {
    'name': 'Unidad Previsional',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '927',
    'countries': ['UY'],
  },
  'UZS': {
    'name': 'Uzbekistan Sum',
    'symbol': 'лв',
    'symbolUnicode': '1083',
    'isoSerial': '860',
    'countries': ['UZ'],
  },
  'VUV': {
    'name': 'Vatu',
    'symbol': 'Vt',
    'symbolUnicode': '86',
    'isoSerial': '548',
    'countries': ['VU'],
  },
  'VES': {
    'name': 'Bolívar Soberano',
    'symbol': 'Bs F',
    'symbolUnicode': '66',
    'isoSerial': '928',
    'countries': ['VE'],
  },
  'VND': {
    'name': 'Dong',
    'symbol': '₫',
    'symbolUnicode': '8363',
    'isoSerial': '704',
    'countries': ['VN'],
  },
  'YER': {
    'name': 'Yemeni Rial',
    'symbol': '﷼',
    'symbolUnicode': '65020',
    'isoSerial': '886',
    'countries': ['YE'],
  },
  'ZMW': {
    'name': 'Zambian Kwacha',
    'symbol': 'ZK',
    'symbolUnicode': '90',
    'isoSerial': '967',
    'countries': ['ZM'],
  },
  'ZWL': {
    'name': 'Zimbabwe Dollar',
    'symbol': '\$',
    'symbolUnicode': '36',
    'isoSerial': '932',
    'countries': ['ZW'],
  },
};
