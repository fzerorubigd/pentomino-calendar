vazirFont = "Vazir:style=Black";
defaultFont = "Ubuntu:style=Bold";
langFa = "fa";
langEN = "en";
dirRTL = "rtl";
dirLTR = "ltr";
scriptArabic = "arabic";
scriptLatin = "latin";

function getData(cal) = cal=="jalali" ? jalali() : gregorian();

function jalali() = [
    // Text, Font, Font Size, Possible Spin, language code, direction, script, top_adjust
    ["شنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["جمعه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۴", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۵", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۶", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["فروردین", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 1],
    ["اردیبهشت", vazirFont, 4, 135, langFa, dirRTL, scriptArabic, 1],
    
    ["یکشنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۷", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۸", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۹", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۰", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۲", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۳", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["خرداد", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 1],
    ["تیر", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["دوشنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱۴", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۵", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۶", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۷", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۸", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۹", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۰", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["مرداد", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["شهریور", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["سه‌شنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۲۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۲", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۳", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۴", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۵", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۶", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۷", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["مهر", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["آبان", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0], // if the font is small on آ the hat will be omitted in the print

    ["چهارشنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۲۸", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۹", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳۰", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۴", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۵", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۶", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],

    ["آذر", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["دی", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["پنج‌شنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱۴۰۷", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۸", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۰۹", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۰", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۱", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۲", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴۱۳", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["بهمن", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["اسفند", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
];


function jalali_animal() = [
    // Text, Font, Font Size, Possible Spin, language code, direction, script, top_adjust
    ["شنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۴", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۵", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۶", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۷", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["فروردین", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 1],
    ["اردیبهشت", vazirFont, 4, 135, langFa, dirRTL, scriptArabic, 1],
    
    ["یکشنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۸", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۹", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۰", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۲", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۳", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۴", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["خرداد", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 1],
    ["تیر", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["دوشنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۱۵", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۶", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۷", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۸", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۱۹", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۰", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["مرداد", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["شهریور", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["سه‌شنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۲۲", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۳", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۴", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۵", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۶", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۷", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۲۸", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["مهر", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["آبان", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0], // if the font is small on آ the hat will be omitted in the print

    ["چهارشنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["۲۹", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳۰", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["۳۱", vazirFont, 9, 90, langFa, dirLTR, scriptArabic, 4],
    ["موش", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["گاو", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["پلنگ", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["خرگوش", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 0],

    ["آذر", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["دی", vazirFont, 5.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["پنج‌شنبه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["نهنگ", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["مار", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["اسب", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["گوسفند", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 1],
    ["میمون", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["مرغ", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["سگ", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1],
    ["بهمن", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],
    ["اسفند", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0],

    ["جمعه", vazirFont, 4.5, 135, langFa, dirRTL, scriptArabic, 0 ],
    ["", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["", vazirFont, 7, 90, langFa, dirLTR, scriptArabic, 4],
    ["خوک", vazirFont, 5, 135, langFa, dirRTL, scriptArabic, 1]
];



function gregorian() = [
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