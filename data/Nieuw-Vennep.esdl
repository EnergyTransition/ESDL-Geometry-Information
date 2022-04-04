<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="49453b77-8a87-458f-898a-74b4f378ef5c" version="3" name="Nieuw-Vennep bedrijventerrein" esdlVersion="v2111" description="">
  <instance xsi:type="esdl:Instance" id="a5d0dee2-485b-407b-bfb9-d4516f09a1ac" name="Untitled instance">
    <area xsi:type="esdl:Area" name="Nieuw Vennep en omgeving" id="2c71b25a-2ed1-4bd9-9d9b-d7c33ced58af">
      <asset xsi:type="esdl:WindTurbine" id="3d40454c-17fd-4faf-9773-5f5822f1b047" name="WindTurbine_3d40">
        <port xsi:type="esdl:OutPort" name="Out" id="2a674d38-bbb2-4cc8-a87a-3247a05db72a" connectedTo="b9ae0738-6a29-4835-8b42-d44cd975d68a"/>
        <geometry xsi:type="esdl:Point" lat="52.25258082124078" lon="4.641766548156739" CRS="WGS84"/>
      </asset>
      <area xsi:type="esdl:Area" id="2b2e7e92-96a8-4d00-942b-edc4c12c31cd" name="NIEUW VENNEP - Nieuw-Vennep Zuid (bedrijventerrein)">
        <asset xsi:type="esdl:Building" id="0da66e2a-54e9-46e0-a206-f20ab9815eb5" name="Building_0da6">
          <asset xsi:type="esdl:ElectricityDemand" id="3de09b3b-3155-426b-8825-fe3eba56c1c2" name="Gebouwgebonden elektriciteitsgebruik">
            <port xsi:type="esdl:InPort" id="0f37d736-b63e-40a2-872a-982494dfede8" name="In" connectedTo="aa3eba6b-16a8-4e6f-8b48-6db7803f9218"/>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="400.0" CRS="Simple"/>
          </asset>
          <geometry xsi:type="esdl:Polygon" CRS="WGS84">
            <exterior xsi:type="esdl:SubPolygon">
              <point xsi:type="esdl:Point" lat="52.255771110912455" lon="4.629828035831452"/>
              <point xsi:type="esdl:Point" lat="52.255869623668026" lon="4.630064070224763"/>
              <point xsi:type="esdl:Point" lat="52.25552646995652" lon="4.630452990531922"/>
              <point xsi:type="esdl:Point" lat="52.255449301052884" lon="4.630182087421418"/>
            </exterior>
          </geometry>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" id="7c2217d9-2be6-4d58-bfbf-8acaaabf7844" name="ElectricityNetwork_7c22">
          <port xsi:type="esdl:InPort" name="In" connectedTo="7ceb0217-8a9f-4041-80a2-83ff67b2d9fe" id="990723f7-cf3c-4ba6-bb32-4408418256d7"/>
          <port xsi:type="esdl:OutPort" name="Out" id="aa3eba6b-16a8-4e6f-8b48-6db7803f9218" connectedTo="0f37d736-b63e-40a2-872a-982494dfede8"/>
          <geometry xsi:type="esdl:Point" lat="52.25461685349278" lon="4.629492759704591" CRS="WGS84"/>
        </asset>
        <asset xsi:type="esdl:ElectricityCable" id="4fc08efb-5cde-49e5-a469-ad154002c0ba" length="947.4" name="ElectricityCable_4fc0">
          <port xsi:type="esdl:InPort" name="In" connectedTo="2a674d38-bbb2-4cc8-a87a-3247a05db72a" id="b9ae0738-6a29-4835-8b42-d44cd975d68a"/>
          <port xsi:type="esdl:OutPort" name="Out" id="7ceb0217-8a9f-4041-80a2-83ff67b2d9fe" connectedTo="990723f7-cf3c-4ba6-bb32-4408418256d7"/>
          <geometry xsi:type="esdl:Line" CRS="WGS84">
            <point xsi:type="esdl:Point" lat="52.25258082124078" lon="4.641766548156739"/>
            <point xsi:type="esdl:Point" lat="52.25187147192467" lon="4.63524341583252"/>
            <point xsi:type="esdl:Point" lat="52.25461685349278" lon="4.629492759704591"/>
          </geometry>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="52.2511244222738" lon="4.63352610437902"/>
            <point xsi:type="esdl:Point" lat="52.2512572157726" lon="4.63327594637374"/>
            <point xsi:type="esdl:Point" lat="52.2515297601435" lon="4.6327571038574"/>
            <point xsi:type="esdl:Point" lat="52.2516271671507" lon="4.63219635546203"/>
            <point xsi:type="esdl:Point" lat="52.2520632769602" lon="4.62968556007369"/>
            <point xsi:type="esdl:Point" lat="52.2521135677256" lon="4.62959114188125"/>
            <point xsi:type="esdl:Point" lat="52.2525071718987" lon="4.62885822266397"/>
            <point xsi:type="esdl:Point" lat="52.2524285991751" lon="4.62897048607548"/>
            <point xsi:type="esdl:Point" lat="52.252357746324" lon="4.62908696570556"/>
            <point xsi:type="esdl:Point" lat="52.2522307939204" lon="4.62930865958826"/>
            <point xsi:type="esdl:Point" lat="52.252221194982" lon="4.62931572376361"/>
            <point xsi:type="esdl:Point" lat="52.2520858658758" lon="4.62955209694628"/>
            <point xsi:type="esdl:Point" lat="52.252125860416" lon="4.62921002003789"/>
            <point xsi:type="esdl:Point" lat="52.252164186117" lon="4.62880217544385"/>
            <point xsi:type="esdl:Point" lat="52.2521981822381" lon="4.62838153246293"/>
            <point xsi:type="esdl:Point" lat="52.2522164848921" lon="4.62793129391675"/>
            <point xsi:type="esdl:Point" lat="52.2522171523036" lon="4.62774857154992"/>
            <point xsi:type="esdl:Point" lat="52.2522199078428" lon="4.62756732050567"/>
            <point xsi:type="esdl:Point" lat="52.2522217800913" lon="4.62708247317595"/>
            <point xsi:type="esdl:Point" lat="52.2522158964955" lon="4.62663773184562"/>
            <point xsi:type="esdl:Point" lat="52.2521996438514" lon="4.62628712432601"/>
            <point xsi:type="esdl:Point" lat="52.2521670523022" lon="4.62597597477018"/>
            <point xsi:type="esdl:Point" lat="52.2521582794717" lon="4.62589220175322"/>
            <point xsi:type="esdl:Point" lat="52.2521316585797" lon="4.62568494600424"/>
            <point xsi:type="esdl:Point" lat="52.2521046002284" lon="4.62547430181864"/>
            <point xsi:type="esdl:Point" lat="52.2520625197124" lon="4.62519467226299"/>
            <point xsi:type="esdl:Point" lat="52.2521617950938" lon="4.62494701157903"/>
            <point xsi:type="esdl:Point" lat="52.2522215444362" lon="4.6248751079463"/>
            <point xsi:type="esdl:Point" lat="52.2525430669765" lon="4.62471929521345"/>
            <point xsi:type="esdl:Point" lat="52.2528497210333" lon="4.62456262781105"/>
            <point xsi:type="esdl:Point" lat="52.2529498276448" lon="4.62451049034844"/>
            <point xsi:type="esdl:Point" lat="52.2530489555328" lon="4.62432512523934"/>
            <point xsi:type="esdl:Point" lat="52.2534149554533" lon="4.62364258145297"/>
            <point xsi:type="esdl:Point" lat="52.2534848183382" lon="4.62356428058835"/>
            <point xsi:type="esdl:Point" lat="52.2536352650942" lon="4.62339532081382"/>
            <point xsi:type="esdl:Point" lat="52.2537787781133" lon="4.62321022531836"/>
            <point xsi:type="esdl:Point" lat="52.2539762135764" lon="4.62290580053839"/>
            <point xsi:type="esdl:Point" lat="52.2539768587113" lon="4.62290479502437"/>
            <point xsi:type="esdl:Point" lat="52.253980134543" lon="4.62289974023029"/>
            <point xsi:type="esdl:Point" lat="52.253983463833" lon="4.62289461275403"/>
            <point xsi:type="esdl:Point" lat="52.2539849647461" lon="4.62289195663112"/>
            <point xsi:type="esdl:Point" lat="52.2540790989448" lon="4.62272547577797"/>
            <point xsi:type="esdl:Point" lat="52.2541551482963" lon="4.62259100103081"/>
            <point xsi:type="esdl:Point" lat="52.2544111887393" lon="4.62209977380599"/>
            <point xsi:type="esdl:Point" lat="52.2547445886049" lon="4.62146647386051"/>
            <point xsi:type="esdl:Point" lat="52.2548387343664" lon="4.62126478264126"/>
            <point xsi:type="esdl:Point" lat="52.254974317687" lon="4.6209469249372"/>
            <point xsi:type="esdl:Point" lat="52.2549877846254" lon="4.6209804753458"/>
            <point xsi:type="esdl:Point" lat="52.2549996001214" lon="4.62101175918983"/>
            <point xsi:type="esdl:Point" lat="52.2550193074307" lon="4.62105444964613"/>
            <point xsi:type="esdl:Point" lat="52.2550417141675" lon="4.62108886997801"/>
            <point xsi:type="esdl:Point" lat="52.2552245622762" lon="4.62135539321394"/>
            <point xsi:type="esdl:Point" lat="52.2552271319901" lon="4.62135913937702"/>
            <point xsi:type="esdl:Point" lat="52.25526284982" lon="4.62140046064544"/>
            <point xsi:type="esdl:Point" lat="52.2553090284775" lon="4.62142867833266"/>
            <point xsi:type="esdl:Point" lat="52.2553589016276" lon="4.62146153242389"/>
            <point xsi:type="esdl:Point" lat="52.2554029535575" lon="4.62149777624926"/>
            <point xsi:type="esdl:Point" lat="52.2554422161064" lon="4.62154795333177"/>
            <point xsi:type="esdl:Point" lat="52.2557421720594" lon="4.62197741480702"/>
            <point xsi:type="esdl:Point" lat="52.2560584484138" lon="4.6224341717093"/>
            <point xsi:type="esdl:Point" lat="52.2561667325827" lon="4.62259054515566"/>
            <point xsi:type="esdl:Point" lat="52.256272211716" lon="4.62274433559645"/>
            <point xsi:type="esdl:Point" lat="52.2562703238588" lon="4.62274789339944"/>
            <point xsi:type="esdl:Point" lat="52.2564605482965" lon="4.62302609735774"/>
            <point xsi:type="esdl:Point" lat="52.2564721277956" lon="4.62306975864214"/>
            <point xsi:type="esdl:Point" lat="52.2563909393362" lon="4.62321617966303"/>
            <point xsi:type="esdl:Point" lat="52.2568022175067" lon="4.62379739622874"/>
            <point xsi:type="esdl:Point" lat="52.2567773283064" lon="4.62384425114129"/>
            <point xsi:type="esdl:Point" lat="52.256915071203" lon="4.62394723221712"/>
            <point xsi:type="esdl:Point" lat="52.2571323566387" lon="4.62424753712086"/>
            <point xsi:type="esdl:Point" lat="52.2571672980143" lon="4.62418268036602"/>
            <point xsi:type="esdl:Point" lat="52.2572135215015" lon="4.62424746232149"/>
            <point xsi:type="esdl:Point" lat="52.257349469877" lon="4.62425811876355"/>
            <point xsi:type="esdl:Point" lat="52.25763912219" lon="4.62467206703105"/>
            <point xsi:type="esdl:Point" lat="52.2576317248366" lon="4.6246859749451"/>
            <point xsi:type="esdl:Point" lat="52.2578313908772" lon="4.62494839984764"/>
            <point xsi:type="esdl:Point" lat="52.258115046265" lon="4.6253228514539"/>
            <point xsi:type="esdl:Point" lat="52.2583088440508" lon="4.62557923951827"/>
            <point xsi:type="esdl:Point" lat="52.2584956736921" lon="4.62582642177453"/>
            <point xsi:type="esdl:Point" lat="52.2585790325737" lon="4.62593601464042"/>
            <point xsi:type="esdl:Point" lat="52.2581204987811" lon="4.62677990041075"/>
            <point xsi:type="esdl:Point" lat="52.2582242144081" lon="4.62692812339064"/>
            <point xsi:type="esdl:Point" lat="52.2585395128594" lon="4.62737058855923"/>
            <point xsi:type="esdl:Point" lat="52.2585667697916" lon="4.62740882954076"/>
            <point xsi:type="esdl:Point" lat="52.258607384912" lon="4.62746581635493"/>
            <point xsi:type="esdl:Point" lat="52.2588084750302" lon="4.6277480175498"/>
            <point xsi:type="esdl:Point" lat="52.2590147977697" lon="4.62803756255415"/>
            <point xsi:type="esdl:Point" lat="52.2590181881184" lon="4.62804232511914"/>
            <point xsi:type="esdl:Point" lat="52.2589588484267" lon="4.62815241088193"/>
            <point xsi:type="esdl:Point" lat="52.2578623645922" lon="4.63020314346784"/>
            <point xsi:type="esdl:Point" lat="52.2575434722427" lon="4.63080605281244"/>
            <point xsi:type="esdl:Point" lat="52.2575513364598" lon="4.63081736850534"/>
            <point xsi:type="esdl:Point" lat="52.2577625410449" lon="4.63112135448327"/>
            <point xsi:type="esdl:Point" lat="52.2575437104853" lon="4.63153478146288"/>
            <point xsi:type="esdl:Point" lat="52.2570760619145" lon="4.63240980352215"/>
            <point xsi:type="esdl:Point" lat="52.2565080848429" lon="4.63347595795225"/>
            <point xsi:type="esdl:Point" lat="52.2561338543124" lon="4.6341757915062"/>
            <point xsi:type="esdl:Point" lat="52.2558124922349" lon="4.63477822612261"/>
            <point xsi:type="esdl:Point" lat="52.2557578397886" lon="4.6348806714043"/>
            <point xsi:type="esdl:Point" lat="52.2557986851917" lon="4.63493952344105"/>
            <point xsi:type="esdl:Point" lat="52.2559851029597" lon="4.63520811400675"/>
            <point xsi:type="esdl:Point" lat="52.2552815911317" lon="4.63653066113978"/>
            <point xsi:type="esdl:Point" lat="52.2551194660032" lon="4.63683797125552"/>
            <point xsi:type="esdl:Point" lat="52.2551164392844" lon="4.63684370784056"/>
            <point xsi:type="esdl:Point" lat="52.2549794862891" lon="4.63710329251718"/>
            <point xsi:type="esdl:Point" lat="52.2547565537713" lon="4.63752328992894"/>
            <point xsi:type="esdl:Point" lat="52.2545171007663" lon="4.63797436854879"/>
            <point xsi:type="esdl:Point" lat="52.2543915897939" lon="4.63821352355331"/>
            <point xsi:type="esdl:Point" lat="52.2543735709126" lon="4.6381877896864"/>
            <point xsi:type="esdl:Point" lat="52.2543573234318" lon="4.63816458462826"/>
            <point xsi:type="esdl:Point" lat="52.253886559994" lon="4.63748800036211"/>
            <point xsi:type="esdl:Point" lat="52.2534470225282" lon="4.63685909597828"/>
            <point xsi:type="esdl:Point" lat="52.2531488348683" lon="4.63643202994904"/>
            <point xsi:type="esdl:Point" lat="52.2530936109002" lon="4.63635293387165"/>
            <point xsi:type="esdl:Point" lat="52.2526164585287" lon="4.63566711401242"/>
            <point xsi:type="esdl:Point" lat="52.2521927894937" lon="4.63505896493595"/>
            <point xsi:type="esdl:Point" lat="52.2521393834838" lon="4.63498278808618"/>
            <point xsi:type="esdl:Point" lat="52.2517381509807" lon="4.63441054040517"/>
            <point xsi:type="esdl:Point" lat="52.251640393872" lon="4.63426923568225"/>
            <point xsi:type="esdl:Point" lat="52.2513757827155" lon="4.63388675621322"/>
            <point xsi:type="esdl:Point" lat="52.2511244222738" lon="4.63352610437902"/>
          </exterior>
        </geometry>
      </area>
    </area>
  </instance>
</esdl:EnergySystem>
