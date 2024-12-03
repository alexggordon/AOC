#!/Users/alexggordon/.rbenv/shims/ruby
require 'active_support/all'
require 'pry'
require 'pry-byebug'

input = <<-AOC
325324343122414426341311521355436756516735365767735336243266456152424263655442375437323425146317632655141433156665635625563452536534233413111
445243425411645566112351545244163515223165477656331552463117221625365717275545124476464451442531715677337534443363223313661263112221651414352
434514252414363452511152554236546325615346321237216231776737145123246363247221568835776177657563335176174462444145653231645541641352324222432
512344115556454364551122335531173547353527264165771324616431564154352161434333624143426673724271674725735171453732677454152514121553642514342
245335631545534511262451241637156561454332212544137121477616833536676467486356424113643275743254655271257165273233333713436363316152215525412
525134431665424254245311755242225774344146256415414763387571367658688754454216857288228327638844315166557547372743531744154253555366125322251
242226151434514231642522163777343413375375427786665751532313584425311152314384883312415875143615383175544722257361643371324456124635121426143
355256351224414362134546117516475527772757412718633456138147647447166316435131753115166364762163147767575652646664125323524233344211152621644
423662265151444333172175576611421743625662125375255611436332835555433412245516663422413367584728254346217161613476513362411124354554141656661
343132241425514222366532375754443311661867761827448367742356551447788222565282822336472646562481274186323321263463733172737523415231263231452
414512633246125157451572561554537454722163673577424576376853177774626628186236767857316633668123264385753152773455553614673334436441316224135
212324565521155353412567475573615133714344617411175657288438127655616781713123465347422118615674666483872652757672245614227473525561435343566
445221414451625675624645665212427183844173224183625244868437762281745333878761243125126616283437123288348253513642236266513777143336423452244
363544111542646272625122735154448186467255668146344132826437421272718576129612166754885626667262876277185872166576146412755315427431235361345
264656533336664366256136422751241622361444458382586165836578937121934658199719386351541531343455316352721641517715741643374346623641245141642
112445611653647577632776715757651127562631764334214565265123726662877597342896255454454353581576436364858847152147334456111671241736213243235
555625554155515642753141133472357442522378575788761684343125889676496481416737941365773489236312262742358647378637816625524652376464221145552
166212536136161764262663264151715412324265162172461388359546247927137713732357391885873753572632213528125746133582543132557354616253656161125
262214154431312345513141264637587481623632438762129328373598884879612652692926671574635499263972534168721832253467846424556241116716116355662
135241432555162671524462538183836241418472746146531476679922477637662841812239647283188595978522895688251211412744783771567244452546153345245
532216637311743517223634115741886133752415248862823922293142226987777614157674447415432957111246289861372245785828235814464543732552357524115
146561263436471442615526287283328418146343943213682363991837281378678451857923183343659739289952517643483666668454477612872264623531527114156
553563547345231122325535834576322628262281752991871677465471578556275546387834293362893217319352873468631622524488454757543336657573343346231
266564156547622167463643435425825221285933354618914693416371827482999473949778132544823891982233412759525148822255432468651261727135416714414
241435326144677632666655834466775762193454726392523657676252731186895484227244331982511164875543224648614243615642216164551727621224255321645
165625766274415126221387567754684125769562911449418567328954999269442383397657742111976735747616543945193885678317732613823354147551434172254
663471266547665567383385744766857544125555773727948178721595766362768764763389283465275425521861727174339179777676482636283377221474131172664
552267351614751263715528842613544492131357823275224224529882976386327823433479377684379863655876688634865837667534467375571818473234352527123
417167733326125612732158464675728774915115736789599864674655267296528289764653496935556672211933382185491674889326327638863358225141641776661
553433447763465113852224382474727588458713673836733584749236658844822472658497492547688383864951836467139432662174767657312876885715517172566
667541167336254488524837342876671664656562954852183656576233333873254363945623456596769545333862526193411672878826354158866344875721272113745
742742423566122778386568143632291815363624774439785729782249926489483479225989595798258826325346485866553327934443377824316727757316672416437
422416173617118884742181153285466515613425316646999647735464985688784946488843572663439527248557925282489796183853745584334188218713316517611
763175754752411761475574463499814429498138728567958989277844494897966247687976299566598923968224276327562217938234278212488752542237314351724
556357515132757111313386163174758761223833727635896636363788757464722947589395479356794346762935869851131172237499953267126584137242266563332
553452514551382115465845459551888517462873873925388334689354634986788558835365333394575696667743754281865874432573149225448868716422314153151
727477115766217727216544583899411845473274393224259527268426677665382498542244536749359523368784334883684284657479479623145838735713142311641
623775723417856274672723115245954791372868276248326532785676923354468396436867556933672689642689493334426665994793891938554866266411441635464
357655727381528486471438934682246867878728953726863365263395378599979499989445494543554685888797994457246284425146494523847682845162841467676
713225442368616642825874251457728254726498336436857496884894665436838647759737379449974974472942976778385826682519218241645473616645531255227
143115132751882814645234335693993315693492273544964459798578395446856796646994466763377345499557552788438771441525234336612412423834346523211
563124357115326738651179813293721543858493473499475888785648678877598767685393985868373765343793387586922432532313835672612126152631344576713
161643744871583517778716716592732854695358997554424874653584484749995659355969399657538739855335364842584499341554829664297243422443742217627
314417571311644786676857812476382568772944752389723949877773676947654886977363564564656448787568736238564893432112877333626254348575386766736
776344328255614461719768964778491246343236536693785358783954458767465334474845788383458739454343787762929647765239152374349167566558438427423
352364825562284245598758827867146952949744839636858679487354649333897878699343577583358936494456794644762845245583132395957674685442674213657
165116474648463674164854916648534936489844557493948573494559834384533436539877799979968846353597267726398358327688234857762963775536887664434
636244476616574846647739459365589464485573472239755849649363338696465548697637638734975433686777966529489995479371427436795444712248542244242
637735864354122638598582193357329687493754334369459855467953667653894978798833698638878588356346875628939527283866627761726597671516685427174
234265787355773655768346666121735692698653744885738497856483393689674898649577997399958433373787955768454347876736595261379656126328146286411
112767655742256845212962577375777649885299555457767374476434484654767654957948859747787796354688878783666798563553685971677619173751653125632
571453132563374754428433649129699672752544276898858748974354969458677564456979779546475974859365475874946272453658976328163915151248617627547
142583162475317422481573625624997475387877377975334869858698855546579585985975987879498939886539444982256287887973954241619679433725388527327
533247585173848868728351547857844568874594368494696993398568756785849787865568456854549687887848656666299259336837539132384839771741428127655
615468573841357563119491171796494694742954878467956458799956898567956945658585548466878737443834395395589454855236733372996957432151473455417
712281822873644374327211127428577898932274866883739393844879649754568787996648688464479984398399388463589596822886624259697865457588148666664
136562416585765349961939548589267679836968874647535938986445975695988894954468499449998546743964657957566429465497651995126318134132576252611
664553248645533826876894472974728737829658753737385958889458749467497446995476987665554788833743998485535738446299878511223783418241123523523
216673485271213882299775989884276937282689933697933446545787966965866999969865545756445677989389673844562259846887466538876636858727352514172
561327416424626319323885947575483566432886775386986678477789875855676946594954878464446759874339786347647885563257274772479849452341218853328
543414611273635871798538959594987265275776698754487659699789747885978996899658685697449894894533384458736853354975392764758672388138231227341
432177431672385492997519159785924344863965869338385868446897566987758776679699779999948444794449339687467966733362773574493894412663521343826
347125512661263615493994284268932764773443456439595658497689867498656657588955796748798799774383987946863496648669435744485628519485388635745
234414266212352323439914355995663935835737889578994846678946665969895859876758767589746666587937363599875397364293757755772863517557747336667
165677453767745981471984424575369862567689838893465684578767899768788798796576788458996788867998737468547692998985973389685897556471872623552
116786112155152692399989767286933237247737645595776648974959499775699595868698769845975468987579485487885883286826659428468372838324282111512
377586871572362673428351636972532524637489943754658469776969888985756695665668759579764745956864346579749772568358833311888124717127726527183
318164852453224592729434559244754674699557743559876747474974585695598957859985857696997477665456486667857796243525567741256626585522827113358
256655568346617621446653354665386832434445968933784544487764789798668576865577679764775445666453683457777446985583583616592962898181266224478
722447327541895771712452547924633958699394955868486968595868665886977559577966765766677478787645777643444882329378355275571729256528663733353
681245847143816872485464897478336665868833439643778745577556798997858795969859958658867557947956848853484479399665572351893714995112671712542
311381662366127117979691628467662497783389559654568448976988776969785977759865769596989799759496863598934465593797484374132873555158552238226
457474782125292676291123633778348492667699397478487495797899579777688999595566576657978586657959548666375867799586695984632767442686385738552
446616157875894869538721247895884644444883958939694686857454797576766596769678977878866756444843564374954453689422974856237432393117533128483
328513874786178732292652989455568257546978333547685649556859556989785958697896996969558664777693669444863357795442386542131312425674116545188
747847212285726534863559799474986827436555837479976774676546886866957568785596798586957654994685373975436492788443972514832361138572512654161
655775232613722364914271538968599287798576387849966696886855689868858988569956769648644589884777963696793654854647956227921717275975785623654
133381381437798727198762329677547326989373878353369696599978596599769677757779877555897759958668785498543442888697699371483636586223726547367
166558274267818548162234882895355743538677453683879454994868498865956757789887798484954454444478588833833824986689655715894154174185774415242
744372761363824188479933164279993635485947644456865846757657575569785868879855879598958794566895394956885434499837577347367422731518858612887
542154878866234222341249936289547276863933653697495455886575579875575878577655884578868949868795478447448539675945826676344156515447648384546
727648137147279312991745915569869748967897863693484548957585769676995776768899556467797877594595457565597942644325989896333716781667423243534
736513883717638924144115229662225798979374855467873564897654895888778776656646759488994944578647478549466472243343448517571862675853473616864
472573641838727179484843174326596238323797674954847658846499779979687897698786957488978957887393589648535875663387463691985638774236788623553
124821288351532635578793553795832779774448696673767567977447858477887878676469566499588899639674834547757355447365486454925564374273415537754
473366376825217384388358298858346676865647498858449537467576484448696554994844568658866985448999588568865694253572422898257449323363556414355
756585744556785281389581638793733695364655945467738676966784699696586944796568967556964687873563733383939393423897564823324453861637182853267
565377885838215871729589251946467492483786596678474736965759584646969695859846694554478644897956448493988952388686515531438553966563718473673
441237555152315781715534724764569644764966484434597935577849549996797944445598866585975464985538857347348739935777224728123383154322783665212
251538277583635525788213179949236983839585564657438535396857976586555596886987597784677479797768335698476345286595542471641181174621263365826
462645455814621845373415692662396785686584794946537846843758755467475597488876849747653439958865548869549767695386323199852847441248375338541
463546443547812219518172999856822775645249657899384888764384466588464496998699844799448386644993497387873285579539449217398533624347675543541
627134585837711668423259691198344552573775794347737374846947567564477798747547569756586957548779437697554747233864289854679427672835612465345
453427178468376465724244651434249467592372777377954886698995943799758965795489579878489647936487995475548384882447855836557219515272555272172
646164887363484557947971139665942397924584239956839476743645386597748689975975793667755335566355545754464596682873886675359686766371416867421
242564673372458178195363168781494567985469634643657747396363336558884388469558778894739837494797653627595967524589231722865526482421344174765
527234341744655648884683415323364239475568742248669646473336993435343838488698565959659888897554832493926543963268996957491745744384373681642
551517286282283171869299626636836973839926825529596737846853348847465543768893358499548363898668447899594793834437575675969522241126258282432
615113281186772747348241311277589768978579523525454785944673364478779885777788637938457768565594782776753548337442956913497758522663855544746
642722552558282717243186261369979747472328286247489597466575759788373865579784983835765597583957266269348476872977744141394534221775432834361
123255132786848881171289778858576544965558689395978795886845857873584539756667349675894535384688837649796799842596341266977334763116825677354
135221265824413236323157332895552381288822335555367339575879847894968958335438953379578775739548683874737377552721612721268151575627367374516
531372144561436544581261647461429475295794262997752694655885563973854977878549545376756598298288663367593432222189358593241862862567851525633
626241253623585223276449612369373315149376774267977495966454874953877799753954666837937985625362576929726958529984811986441465531615443642317
122237265686782174111763222458711389313762597662727299449372464353975654883644949566273662646296682598256439817316833461554838162575673712517
723263336441628827211586677967134954541492446275676949475759793974657373976875788542576364482493264736749878125328845632357141826286877316536
746376624247554234116778248423662686389547589753843874724295634799738747329256738622227935656823782646258367494222758652264524554281143475725
247227652554571866348233254561957766785945979683577957537487658236743744853762365675828364963779438767411174735912626572384742318221667753414
461752271733674688288542747127735521232319836579345595948435736687542357563568686627638662657552627936242586561889286338386747748155235227226
141456214273548658577623736731491554843413163948364432765456955986253284949329344329743583497259864561513822597516642174356653353313422722126
577514122213115543664523815812933592181557923163353748687669465747247978699468957873884592954895372236525435898266267231166186788652617642555
733555724377412472456818878267576986747564915594433739398666323228924448924829375982299639364766271435835929364781825316741447833326252417676
125222215152346652574685537442585295255477117856958664574265466997244968429967625364878556825897669923262572691766582725557644262753327717362
467157357433453135876225656776561727957327836923637932444972557496674222793666868922685325945691218298588167748387555736343614515634266527674
661776217564727341161434734284475862238735522767927168825678229454593732375258543947793974965685418316392331831342662517514464432121762671112
322226175666414714887813726538477315884488153872775481665957678523393653399286989356544792237258381256625891911364264883241763171167313676775
535433463745172562637474314438863546768596275157472615456823332796577429439255648883176346627241779499894798781815684141341115432556456643611
114516531415276157226232376712646274882692898428926131576766198472672582965649659239179984932272293221585428551187274518216722651334142336632
442465354622731723346571118328123567571116964772317433275893126613648877241944321925876477183764936251413286113213668326238173555355732216511
464545125331445744558616761437753623789891666294688255519735998824794952561825912628843557695114221545433384531731727161876473665573223373362
212622623666153674544543171825717224778543394854587565145835173211764734896255693756825741544633558375382657436484353324273475751235436535462
426456174161671373114214337372228811531433159234863841562359873663253579618768533225871676475124418634651463174367571421653316524135337216611
113264262762756157661221337642236412865163476628461551865256687522447798169631776999765762811667378264167441455366366874635763265145354445246
426635433223761674317156651435514314141128668545421467652684475967588596316618624557527821975129731666663738726663526335152162713322637353345
462625221553613622135255778417362232144315611424115765534629998153728136584747684638152634448139174522524258188274866446444754542614324644434
636534326173461144145272421245357854354484176813154881324324289844919955923398583536826126465974374482435317112341641177362167413653631136334
416121433661766275322466215778242625365252727337453283172471359263773988811988214463424763681262168421538852447148623325417465263633614152511
124165661313426677723346621157741741434378575443131887844322537341118644829916279535424761288166365435817422811564415651251116735711112164331
662213565461615664773261415161352365348334351167211364117737811331482474651845215456825315271337675186362621741624741731455143163362536213464
353163654655614552631221351147137158834856172472651447352645383627716833776783781867423336224623844544643183687212315514251544774456463166616
362441211445555544364416561477266288188517416482572255534821166861673587523181878873186281844855832334752187362742345667727277112563315642334
431663234654426537411563411631545147111423513725427621386471155234676712466243246352318626253227328241736815415232666553761366744242426616315
226531133633364435742641727266657131716261514281311262288684766444656242277146665425754546527885447432126232726412333341234543363451443141151
132441514114413263365254644654352543741828713741248814178464374241323848417341456825584538518825768881832262324114555671261641363331666134362
214126421452663325372554676727131463574734212374262156347777366377688162741748146151838743887681761444327446474521671324576334665511114122421
351531625361155425124432552645227655625173237845122258431184132246265282346434414371684686452682717564246721521767254276776656342611514416424
524134632564656514234312513351122255327641524888853223216877477886352121843137683831631511821167821614336237522461471235761565432361122352514
345434525245243335351164562536536325371562644423648433177446878843262728235726362818655267541335336453673667665743636625434415221611313542325
352232633361461221226332237671657471766723622375425212675228865561486835238657116512354337544131231554276255267433543145221253624656265664213
533341362332521262331624612755675274227615131761716775227664373273765866252331525736334615365731142562664711644136322541112142123112632614445
335424225554551224465145365617415232333565263422662657463575357742412565884351458348627343152461236262431544374247365213446446134632223333414
AOC

input = <<-AOC
2413432311323
3215453535623
3255245654254
3446585845452
4546657867536
1438598798454
4457876987766
3637877979653
4654967986887
4564679986453
1224686865563
2546548887735
4322674655533
AOC

input = input.split("\n").map{_1.chars}
winner = 1_000_000_000
totals = {}
paths = [ [[0,0, :none]] ]
finish = [input.count - 1, input.first.count - 1]
while paths.present? && paths.any? { |e| e.first != :done }
  path = paths.shift
  while path.first != :done
    if path.last[0] == (input.count - 1) && path.last[1] == (input.first.count - 1)
      # puts "skipping"
      path.unshift(:done)
      next
    end

    next if path.first == :done
    history = path.last(3).map(&:last)

    loc = path.last
    row, col = loc
    possibilities = {}
    possibilities[:right] = {
      val: input.try(:[], row).try(:[], col + 1),
      coord: [row, col + 1]
    } unless input.try(:[], row).try(:[], col + 1).nil?
    possibilities[:down] = {
      val: input.try(:[], row + 1).try(:[], col),
      coord: [row + 1, col]
    } unless input.try(:[], row + 1).try(:[], col).nil?
    possibilities[:left] = {
      val: input.try(:[], row).try(:[], col - 1),
      coord: [row, col - 1]
    } if (col - 1) >= 0
    possibilities[:up] = {
      val: input.try(:[], row - 1).try(:[], col),
      coord: [row - 1, col]
    } if (row - 1) >= 0

    possibilities = possibilities.select do |dir, info|
      if (history.include?(dir) && history.count(dir) == 3) # 3 in a row
        false
      elsif path.map { |e| e.first(2) }.include?(info[:coord]) #already visited
        false
      else
        true
      end
    end

    possibilities = possibilities.sort_by do |(dir, info)|
      # puts "info #{info.to_s}"
      # puts "finish #{finish.to_s}"
      # puts "distance #{ ( [info[:coord][0], finish[0]].max - [info[:coord][0], finish[0]].min ) + [info[:coord][1], finish[1]].max - [info[:coord][1], finish[1]].min }"
      [([info[:coord][0], finish[0]].max - [info[:coord][0], finish[0]].min) + ([info[:coord][1], finish[1]].max - [info[:coord][1], finish[1]].min ), info[:val]]
    end

    case possibilities.count
    when 1
      dir = possibilities.first.first

      path.push([ possibilities.first.last[:coord][0], possibilities.first.last[:coord][1], dir ])
    when 2
      dir_one = possibilities.first.first
      path.push([ possibilities.first.last[:coord][0], possibilities.first.last[:coord][1], dir_one ])

      dir_two = possibilities.last.first
      n = path.dup
      n.push([ possibilities.last.last[:coord][0], possibilities.last.last[:coord][1], dir_two ])
      paths.push(n)
    when 3
      dir_one = possibilities.first.first
      path.push([ possibilities.first.last[:coord][0], possibilities.first.last[:coord][1], dir_one ])

      dir_two = possibilities[1].first
      n = path.dup
      n.push([ possibilities[1].last[:coord][0], possibilities[1].last[:coord][1], dir_two ])
      paths.push(n)
    when 4
      binding.pry
    else 
      puts "stuck #{path.to_s}"
      path.unshift(:done)
    end
  end

  path.shift
  if path.last[0] == (input.count - 1) && path.last[1] == (input.first.count - 1)
    tot = path.reduce(0) {|r, val|
      r += input[val[0]][val[1]].to_i
    }
    if winner > tot
      winner = tot
      puts "new winner #{winner}, #{path.to_s}"
    end
  end


  paths.sort_by! do |path|
    [
      path.count,
      path.reduce(0) {|r, val|
        r += input[val[0]][val[1]].to_i
      }
    ]
  end

  puts "total paths left #{paths.count}"
end







