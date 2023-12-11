str_digit   = "0123456789"
str_upper   = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
str_lower   = "abcdefghijklmnopqrstuvwxyz"
str_f_digit = "０１２３４５６７８９"
str_f_upper = "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ"
str_f_lower = "ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ"
str_hira_0  = "あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをん。、"
str_hira_1  = "がぎぐげござじずぜぞだぢづでど"
str_hira_2  = "ばびぶべぼ"
str_hira_3  = "ぱぴぷぺぽ"
str_hira_4  = "ぇっゃゅょぁぃぅぉ"
str_kata_0  = "アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲン　ー"
str_kata_1  = "ガギグゲゴザジズゼゾダヂヅデド"
str_kata_2  = "バビブベボ"
str_kata_3  = "パピプペポ"
str_kata_4  = "ェッャュョァィゥォ"

def str_range(n, s, p=[]):
	return [(c, p + [n+i]) for i, c in enumerate(s)]

jp = [
	("<->", [0xE4]),
	("[+]", [0xF9]),
	("[-]", [0xFA]),
	("[x]", [0xFB]),
	("[.]", [0xFD]),
	("%d",  [0xE0]),
	(")(",  [0xE2]),
] + (
	str_range(0x00, str_f_digit + str_f_upper + str_f_lower) +
	str_range(0x40 + 5*1, str_hira_1, [0xF0]) +
	str_range(0x40 + 5*5, str_hira_2, [0xF0]) +
	str_range(0x40 + 5*5, str_hira_3, [0xF1]) +
	str_range(0x70 + 5*1, str_kata_1, [0xF0]) +
	str_range(0x70 + 5*5, str_kata_2, [0xF0]) +
	str_range(0x70 + 5*5, str_kata_3, [0xF1]) +
	str_range(0x40, str_hira_0) +
	str_range(0x70, str_kata_0) +
	str_range(0xA0, str_hira_4) +
	str_range(0xD0, str_kata_4)
) + [
	("（",   [0xE1]),
	("）",   [0xE3]),
	("！",   [0xF2]),
	("％",   [0xF3]),
	("？",   [0xF4]),
	("『",   [0xF5]),
	("』",   [0xF6]),
	("〜",   [0xF7]),
	("…",   [0xF8]),
	("・",   [0xFC]),
	("\n",  [0xFE]),
]

jp_sel = str_range(0x00, "ファイルセレクトをコピーするけマリオスアみどの?サウンド")

en = [
	("[M]", [0x40, 0x41]),
	("[^]", [0x50]),
	("[v]", [0x51]),
	("[<]", [0x52]),
	("[>]", [0x53]),
	("[A]", [0x54]),
	("[B]", [0x55]),
	("[C]", [0x56]),
	("[Z]", [0x57]),
	("[R]", [0x58]),
	("<->", [0xE4]),
	("[+]", [0xF9]),
	("[-]", [0xFA]),
	("[x]", [0xFB]),
	("[*]", [0xFC]),
	("[.]", [0xFD]),
	("%d",  [0xE0]),
] + str_range(0x00, str_digit + str_upper + str_lower) + [
	("'",   [0x3E]),
	(".",   [0x3F]),
	(",",   [0x6F]),
	(" ",   [0x9E]),
	("-",   [0x9F]),
	("\t",  [0xD0]),
	("(",   [0xE1]),
	(")",   [0xE3]),
	("&",   [0xE5]),
	(":",   [0xE6]),
	("!",   [0xF2]),
	("%",   [0xF3]),
	("?",   [0xF4]),
	("{",   [0xF5]),
	("}",   [0xF6]),
	("~",   [0xF7]),
	("…",   [0xF8]),
	("\n",  [0xFE]),
]

en_m = [
	("the", [0xD1]),
	("you", [0xD2]),
	(")(",  [0xE2]),
] + en

table = {
	"jp": jp,
	"jp.sel": jp_sel,
	"en": en,
	"en.m": en_m,
}
