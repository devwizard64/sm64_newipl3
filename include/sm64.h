#include <ultra64.h>
#ifdef sgi
#include <bstring.h>
#endif
#include <string.h>

#include <sm64/types.h>
#include <sm64/gbi_ext.h>
#include <sm64/segment.h>

#include <sm64/defaudio.h>
#include <sm64/defshape.h>
#include <sm64/defobject.h>
#include <sm64/defmap.h>
#include <sm64/defwipe.h>
#include <sm64/defshadow.h>
#include <sm64/defback.h>
#include <sm64/defmessage.h>
#include <sm64/defweather.h>
#include <sm64/defmapobj.h>
#include <sm64/deftag.h>
#include <sm64/defscene.h>
#include <sm64/defplayer.h>
#include <sm64/defgame.h>
#include <sm64/defstage.h>
#include <sm64/defcourse.h>
#include <sm64/defsave.h>
#include <sm64/defshplang.h>
#include <sm64/defprglang.h>
#include <sm64/defobjlang.h>

extern char __dummy0[];
extern char __dummy1[];
extern char __dummy2[];
extern char __dummy3[];
extern char __dummy4[];
extern char __dummy5[];
extern char __dummy6[];
extern char __dummy7[];
extern char __dummy8[];
extern char __dummy9[];
extern char __dummy10[];
extern char __dummy11[];
extern char __dummy12[];
extern char __dummy13[];
extern char __dummy14[];
extern char __dummy15[];
extern char __dummy16[];
extern char __dummy17[];
extern char __dummy18[];
extern char __dummy19[];
extern char __dummy20[];
extern char __dummy21[];
extern char __dummy22[];
extern char __dummy23[];
extern char __dummy24[];
extern char __dummy25[];
extern char __dummy26[];
extern char __dummy27[];
extern char __dummy28[];
extern char __dummy29[];
extern char __dummy30[];
extern char __dummy31[];
extern char __dummy32[];
extern char __dummy33[];
extern char __dummy34[];
extern char __dummy35[];
extern char __dummy36[];
extern char __dummy37[];
extern char __dummy38[];
extern char __dummy39[];
extern char __dummy40[];
extern char __dummy41[];
extern char __dummy42[];
extern char __dummy43[];
extern char __dummy44[];
extern char __dummy45[];
extern char __dummy46[];
extern char __dummy47[];
extern char __dummy48[];
extern char __dummy49[];
extern char __dummy50[];
extern char __dummy51[];
extern char __dummy52[];
extern char __dummy53[];
extern char __dummy54[];
extern char __dummy55[];
extern char __dummy56[];
extern char __dummy57[];
extern char __dummy58[];
extern char __dummy59[];
extern char __dummy60[];
extern char __dummy61[];
extern char __dummy62[];
extern char __dummy63[];
extern char __dummy64[];
extern char __dummy65[];
extern char __dummy66[];
extern char __dummy67[];
extern char __dummy68[];
extern char __dummy69[];
extern char __dummy70[];
extern char __dummy71[];
extern char __dummy72[];
extern char __dummy73[];
extern char __dummy74[];
extern char __dummy75[];
extern char __dummy76[];
extern char __dummy77[];
extern char __dummy78[];
extern char __dummy79[];
extern char __dummy80[];
extern char __dummy81[];
extern char __dummy82[];
extern char __dummy83[];
extern char __dummy84[];
extern char __dummy85[];
extern char __dummy86[];
extern char __dummy87[];
extern char __dummy88[];
extern char __dummy89[];
extern char __dummy90[];
extern char __dummy91[];
extern char __dummy92[];
extern char __dummy93[];
extern char __dummy94[];
extern char __dummy95[];
extern char __dummy96[];
extern char __dummy97[];
extern char __dummy98[];
extern char __dummy99[];
extern char __dummy100[];
extern char __dummy101[];
extern char __dummy102[];
extern char __dummy103[];
extern char __dummy104[];
extern char __dummy105[];
extern char __dummy106[];
extern char __dummy107[];
extern char __dummy108[];
extern char __dummy109[];
extern char __dummy110[];
extern char __dummy111[];
extern char __dummy112[];
extern char __dummy113[];
extern char __dummy114[];
extern char __dummy115[];
extern char __dummy116[];
extern char __dummy117[];
extern char __dummy118[];
extern char __dummy119[];
extern char __dummy120[];
extern char __dummy121[];
extern char __dummy122[];
extern char __dummy123[];
extern char __dummy124[];
extern char __dummy125[];
extern char __dummy126[];
extern char __dummy127[];
extern char __dummy128[];
extern char __dummy129[];
extern char __dummy130[];
extern char __dummy131[];
extern char __dummy132[];
extern char __dummy133[];
extern char __dummy134[];
extern char __dummy135[];
extern char __dummy136[];
extern char __dummy137[];
extern char __dummy138[];
extern char __dummy139[];
extern char __dummy140[];
extern char __dummy141[];
extern char __dummy142[];
extern char __dummy143[];
extern char __dummy144[];
extern char __dummy145[];
extern char __dummy146[];
extern char __dummy147[];
extern char __dummy148[];
extern char __dummy149[];
extern char __dummy150[];
extern char __dummy151[];
extern char __dummy152[];
extern char __dummy153[];
extern char __dummy154[];
extern char __dummy155[];
extern char __dummy156[];
extern char __dummy157[];
extern char __dummy158[];
extern char __dummy159[];
extern char __dummy160[];
extern char __dummy161[];
extern char __dummy162[];
extern char __dummy163[];
extern char __dummy164[];
extern char __dummy165[];
extern char __dummy166[];
extern char __dummy167[];
extern char __dummy168[];
extern char __dummy169[];
extern char __dummy170[];
extern char __dummy171[];
extern char __dummy172[];
extern char __dummy173[];
extern char __dummy174[];
extern char __dummy175[];
extern char __dummy176[];
extern char __dummy177[];
extern char __dummy178[];
extern char __dummy179[];
extern char __dummy180[];
extern char __dummy181[];
extern char __dummy182[];
extern char __dummy183[];
extern char __dummy184[];
extern char __dummy185[];
extern char __dummy186[];
extern char __dummy187[];
extern char __dummy188[];
extern char __dummy189[];
extern char __dummy190[];
extern char __dummy191[];
extern char __dummy192[];
extern char __dummy193[];
extern char __dummy194[];
extern char __dummy195[];
extern char __dummy196[];
extern char __dummy197[];
extern char __dummy198[];
extern char __dummy199[];
extern char __dummy200[];
extern char __dummy201[];
extern char __dummy202[];
extern char __dummy203[];
extern char __dummy204[];
extern char __dummy205[];
extern char __dummy206[];
extern char __dummy207[];
extern char __dummy208[];
extern char __dummy209[];
extern char __dummy210[];
extern char __dummy211[];
extern char __dummy212[];
extern char __dummy213[];
extern char __dummy214[];
extern char __dummy215[];
extern char __dummy216[];
extern char __dummy217[];
extern char __dummy218[];
extern char __dummy219[];
extern char __dummy220[];
extern char __dummy221[];
extern char __dummy222[];
extern char __dummy223[];
extern char __dummy224[];
extern char __dummy225[];
extern char __dummy226[];
extern char __dummy227[];
extern char __dummy228[];
extern char __dummy229[];
extern char __dummy230[];
extern char __dummy231[];
extern char __dummy232[];
extern char __dummy233[];
extern char __dummy234[];
extern char __dummy235[];
extern char __dummy236[];
extern char __dummy237[];
extern char __dummy238[];
extern char __dummy239[];
extern char __dummy240[];
extern char __dummy241[];
extern char __dummy242[];
extern char __dummy243[];
extern char __dummy244[];
extern char __dummy245[];
extern char __dummy246[];
extern char __dummy247[];
extern char __dummy248[];
extern char __dummy249[];
extern char __dummy250[];
extern char __dummy251[];
extern char __dummy252[];
extern char __dummy253[];
extern char __dummy254[];
extern char __dummy255[];
extern char __dummy256[];
extern char __dummy257[];
extern char __dummy258[];
extern char __dummy259[];
extern char __dummy260[];
extern char __dummy261[];
extern char __dummy262[];
extern char __dummy263[];
extern char __dummy264[];
extern char __dummy265[];
extern char __dummy266[];
extern char __dummy267[];
extern char __dummy268[];
extern char __dummy269[];
extern char __dummy270[];
extern char __dummy271[];
extern char __dummy272[];
extern char __dummy273[];
extern char __dummy274[];
extern char __dummy275[];
extern char __dummy276[];
extern char __dummy277[];
extern char __dummy278[];
extern char __dummy279[];
extern char __dummy280[];
extern char __dummy281[];
extern char __dummy282[];
extern char __dummy283[];
extern char __dummy284[];
extern char __dummy285[];
extern char __dummy286[];
extern char __dummy287[];
extern char __dummy288[];
extern char __dummy289[];
extern char __dummy290[];
extern char __dummy291[];
extern char __dummy292[];
extern char __dummy293[];
extern char __dummy294[];
extern char __dummy295[];
extern char __dummy296[];
extern char __dummy297[];
extern char __dummy298[];
extern char __dummy299[];
extern char __dummy300[];
extern char __dummy301[];
extern char __dummy302[];
extern char __dummy303[];
extern char __dummy304[];
extern char __dummy305[];
extern char __dummy306[];
extern char __dummy307[];
extern char __dummy308[];
extern char __dummy309[];
extern char __dummy310[];
extern char __dummy311[];
extern char __dummy312[];
extern char __dummy313[];
extern char __dummy314[];
extern char __dummy315[];
extern char __dummy316[];
extern char __dummy317[];
extern char __dummy318[];
extern char __dummy319[];

#include <sm64/math.h>
#include <sm64/memory.h>

#include <sm64/main.h>

#include <sm64/Na.h>

#include <sm64/graphics.h>
#include <sm64/audio.h>
#include <sm64/time.h>

#include <sm64/shape.h>
#include <sm64/draw.h>
#include <sm64/script.h>
#include <sm64/object.h>
#include <sm64/map.h>

#include <sm64/camera.h>

#include <sm64/wipe.h>
#include <sm64/shadow.h>
#include <sm64/back.h>
#include <sm64/water.h>
#include <sm64/objshape.h>
#include <sm64/wave.h>
#include <sm64/dprint.h>
#include <sm64/message.h>
#include <sm64/weather.h>
#include <sm64/tag.h>
#include <sm64/hud.h>

extern char __dummy320[];
extern char __dummy321[];
extern char __dummy322[];
extern char __dummy323[];
extern char __dummy324[];
extern char __dummy325[];
extern char __dummy326[];
extern char __dummy327[];
extern char __dummy328[];
extern char __dummy329[];
extern char __dummy330[];
extern char __dummy331[];
extern char __dummy332[];
extern char __dummy333[];
extern char __dummy334[];
extern char __dummy335[];
extern char __dummy336[];
extern char __dummy337[];
extern char __dummy338[];
extern char __dummy339[];
extern char __dummy340[];
extern char __dummy341[];
extern char __dummy342[];
extern char __dummy343[];
extern char __dummy344[];
extern char __dummy345[];
extern char __dummy346[];
extern char __dummy347[];
extern char __dummy348[];
extern char __dummy349[];
extern char __dummy350[];
extern char __dummy351[];
extern char __dummy352[];
extern char __dummy353[];
extern char __dummy354[];
extern char __dummy355[];
extern char __dummy356[];
extern char __dummy357[];
extern char __dummy358[];
extern char __dummy359[];
extern char __dummy360[];
extern char __dummy361[];
extern char __dummy362[];
extern char __dummy363[];
extern char __dummy364[];
extern char __dummy365[];
extern char __dummy366[];
extern char __dummy367[];
extern char __dummy368[];
extern char __dummy369[];
extern char __dummy370[];
extern char __dummy371[];
extern char __dummy372[];
extern char __dummy373[];
extern char __dummy374[];
extern char __dummy375[];
extern char __dummy376[];
extern char __dummy377[];
extern char __dummy378[];
extern char __dummy379[];
extern char __dummy380[];
extern char __dummy381[];
extern char __dummy382[];
extern char __dummy383[];
extern char __dummy384[];
extern char __dummy385[];
extern char __dummy386[];
extern char __dummy387[];
extern char __dummy388[];
extern char __dummy389[];
extern char __dummy390[];
extern char __dummy391[];
extern char __dummy392[];
extern char __dummy393[];
extern char __dummy394[];
extern char __dummy395[];
extern char __dummy396[];
extern char __dummy397[];
extern char __dummy398[];
extern char __dummy399[];
extern char __dummy400[];
extern char __dummy401[];
extern char __dummy402[];
extern char __dummy403[];
extern char __dummy404[];
extern char __dummy405[];
extern char __dummy406[];
extern char __dummy407[];
extern char __dummy408[];
extern char __dummy409[];

#include <sm64/scene.h>
#include <sm64/player.h>
#include <sm64/game.h>
#include <sm64/collision.h>
#include <sm64/course.h>
#include <sm64/save.h>

#include <sm64/buffer.h>

#include <sm64/object_a.h>
#include <sm64/object_b.h>
#include <sm64/object_c.h>

extern char __dummy410[];
extern char __dummy411[];
extern char __dummy412[];
extern char __dummy413[];
extern char __dummy414[];
extern char __dummy415[];
extern char __dummy416[];
extern char __dummy417[];
extern char __dummy418[];
extern char __dummy419[];
extern char __dummy420[];
extern char __dummy421[];
extern char __dummy422[];
extern char __dummy423[];
extern char __dummy424[];
extern char __dummy425[];
extern char __dummy426[];
extern char __dummy427[];
extern char __dummy428[];
extern char __dummy429[];
extern char __dummy430[];
extern char __dummy431[];
extern char __dummy432[];
extern char __dummy433[];
extern char __dummy434[];
extern char __dummy435[];
extern char __dummy436[];
extern char __dummy437[];
extern char __dummy438[];
extern char __dummy439[];

#include <sm64/title.h>
#include <sm64/titlebg.h>
#include <sm64/fileselect.h>
#include <sm64/starselect.h>

#include <sm64/face.h>
