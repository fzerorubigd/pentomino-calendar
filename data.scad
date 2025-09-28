langFa = "fa";
langEN = "en";
dirRTL = "rtl";
dirLTR = "ltr";
scriptArabic = "arabic";
scriptLatin = "latin";

function getData(cal, font) = cal=="jalali" ? jalali(defaultFont=font) : gregorian(defaultFont=font);

function jalali(defaultFont = "Vazir:style=Black") = [
    // Text, Font, Font Size, Possible Spin, language code, direction, script, top_adjust
    ["شنبه", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["جمعه", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۴", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۵", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۶", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["فروردین", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 1],
    ["اردیبهشت", defaultFont, 4, 135, langFa, dirRTL, scriptArabic, 1],
    
    ["یکشنبه", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۷", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۸", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۹", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۰", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۱", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۲", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۳", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["خرداد", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 1],
    ["تیر", defaultFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["دوشنبه", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱۴", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۵", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۶", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۷", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۸", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۹", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۰", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["مرداد", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["شهریور", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["سه‌شنبه", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۲۱", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۲", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۳", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۴", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۵", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۶", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۷", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["مهر", defaultFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["آبان", defaultFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0], // if the font is small on آ the hat will be omitted in the print

    ["چهارشنبه", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۲۸", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۹", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳۰", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳۱", defaultFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۴", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۵", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۶", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],

    ["آذر", defaultFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["دی", defaultFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["پنج‌شنبه", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱۴۰۷", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۸", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۹", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۰", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۱", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۲", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۳", defaultFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["بهمن", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["اسفند", defaultFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
];

function gregorian(defaultFont = "Noto Sans:style=Bold") = [
    // Text, Font, Font Size, Possible Spin, language code, direction, script, top_adjust
    // Days
    ["Sun", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Sat", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],

    ["1", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["2", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["3", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["4", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["5", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["6", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["Jan", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Feb", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],

    ["Mon", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["7", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["8", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["9", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["10", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["11", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["12", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["13", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["Mar", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Apr", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],

    ["Tue", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["14", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["15", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["16", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["17", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["18", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["19", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["20", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["May", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Jun", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],

    ["Wed", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["21", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["22", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["23", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["24", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["25", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["26", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["27", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],

    ["Jul", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Aug", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Thu", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],

    ["28", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["29", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["30", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["31", defaultFont, 9, 90, langEN, dirLTR, scriptLatin, 4],
    ["2025", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2026", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2027", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],

    ["Sep", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Oct", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Fri", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],

    ["2028", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2029", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2030", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2031", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2032", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2033", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["2034", defaultFont, 6, 90, langEN, dirLTR, scriptLatin, 4],
    ["Nov", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
    ["Dec", defaultFont, 7, 90, langEN, dirLTR, scriptLatin, 4],
];