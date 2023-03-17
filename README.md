# Online-Invoice-XSLT

Üdvözöljük az Online Számla adatok képi megjelenítését biztosító XSLT projekt publikus tárhelyén!

## 1) A tárhely tartalma és célja

A tárhely a magyar Online Számla rendszer által használt XML séma definícióhoz tartozó stylesheet transzformációs szabályokat (a továbbiakban: XSLT) és a projekthez kapcsolódó egyéb állományokat tartalmazza. Fenti 3.0-ás számla-adatszolgáltatások standard képi megjelenítését tartalmazó fejlesztést a NAV az elektronikus számlázás további elterjedésének támogatása céljából mindenki számára ingyenesen közzéteszi.

Kérjük figyelembe venni, hogy bár a tárhely publikusan elérhető, a véleményezéshez és a fejlesztéshez hozzájáruláshoz GitHub userre van szükség. A felhasználó ingyenesen, pár perc alatt létrehozható.

### 1.1) XSLT szabvány

Az XSLT egy W3C szabvány olyan XML dokumentumok képi megjelenítésére, amelyeket séma vagy dokumentum típus leíró (XSD / DTD) határoz meg. Segítségével leírható egy olyan szabályrendszer, amely az XML tartalmát egy meghatározott formára alakítja. A szabályrendszer nagyon rugalmas és számos lehetőséget biztosít a transzformációra. A megjelenítés feltételekhez köthető, ez során vizsgálható a bemeneti XML tag kitöltöttsége, a tag tartalma, vagy bármilyen támogatott függvény kimenete. Az XML tartalma rendezhető, csoportosítható, akár a megjelenített értéke is felüldefiniálható. A formázási lehetőségek a HTML és CSS szabványok segítségével írhatók le, melyek szintén feltételekhez is köthetők.

A szabványról bővebben: https://www.w3.org/TR/2021/REC-xslt20-20210330/

### 1.2) Támogatott kimenetek

Az XSLT templatek kétféle kimeneti formátumot támogatnak: PDF és HTML.

Ezek közül a PDF-et szánjuk a fő kimeneti formátumnak, az XSLT-t főként ennek a hibátlan megjelenítésére készítettük fel. A HTML-t inkább köztes kimenetnek szánjuk, és azzal a céllal támogatjuk hogy más szoftverekben egy HTML fájl könnyen átalakítható olyan képi tartalommá, amelyre a helyi igények szerint szükség van.

### 1.3) Lokalizációk

Az XSLT templatek magyar, angol és német nyelvű képi megjelenítést is támogatnak. A kimenet nyelvesítését a $lang nevű xsl paraméter vezérli, ezt minden esetben át kell adni a template-nek a generáláskor. A megjelenítésben minden tartalom lokalizált, tehát a mezők neve, a megjelenített szövegek, valamint a dátum-és számformátumok is a megjelenítés nyelve szerint változnak.

 A dátum-és számformátumok lokalizációja a következő.

- dátum: 
	- HU: YYYY. month(HU) DD.
	- EN: DD. month(EN) YYYY.
	- DE: YYYY. month(DE) DD.
- szám:
 	- HU: ezres elválasztó - space, tizedes elválasztó: vessző
  	- EN: ezres elválasztó - vessző, tizedes elválasztó: pont
  	- DE: ezres elválasztó - pont, tizedes elválasztó: vessző

### 1.4) Styling defaults

A templatek tartalmaznak alapértelmezett formázásokat. Ezek közül a font size és a font color beállítást a template helyenként felüldefiniálhatja, a többi a jelenleg létező templatekben sosem változik.

- font family: Tahoma
- font size: 8pt
- font color: #000000
- output orientation: portrait
- output size: A4 (210 x 297 mm)
- margins
	- coloumn gap: 12mm
	- margin body from page bottom: 20mm
	- margin body from page left: 10mm
	- margin body from page right: 10mm
	- margin body from page top: 35mm
	- margin footer from page bottom: 8mm
	- margin header from page top: 8mm
- page height: 297 mm
- page width: 210 mm

![Oldal tulajdonságok](https://github.com/nav-gov-hu/Online-Invoice-XSLT/blob/master/img/Page%20properties.png)

### 1.5) Integrációk

Az eltérő fejlesztői igényekhez és felhasználási körökhöz igazodva többféle integrációs lehetőséget is biztosítunk.

#### 1) NAV által biztosított vastagkliens
A programot le kell tölteni a tárhelyről [nav_xslt_setup.zip](https://github.com/nav-gov-hu/Online-Invoice-XSLT/blob/master/client/nav_xslt_setup.zip), ami ezt követően egyszerű végrehajtható fájlként futtatható. Indítás után a grafikus felületen be kell tallózni azt az invoiceData XML fájlt, amelynek a tartalmát meg szeretnénk jeleníteni, valamint ki kell választani a kért nyelvet valamint formátumot. A program ezt követően a társított PDF vagy HTML olvasó alkalmazással megjeleníti az elkészült dokumentumot. Ezt a módozatot azoknak az üzleti felhasználóknak ajánljuk, akik nem akarják az általuk használt szoftverbe belefejlesztetni az XSLT integrációját, de a megjelenítési szolgáltatást szeretnék igénybe venni.

#### 2) OS-natív vagy Java alapú CLI integráció
Ezt a módozatot azoknak ajánljuk, akik a számlaadat megjelenítést integrálni szeretnék valamilyen módon az általuk használt szoftverbe, de erre nem akarnak külön fejleszteni, és megelégszenek egy script szintű megoldással. Az integrációhoz szükség van egy XSLT engine-re (HTML kimenet esetén), és ezen kívül egy FO processzorra, ha PDF-et is akarunk generálni. A példa projekthez kiválasztott XSLT és FO processzorok helyett alkalmazható más ugyanolyan értékű és tudású (XSLT 2.0 compliant) processzor is, megfelelő konfiguráció mellett. 

A szükséges telepítő állományok itt érhetők el.

- [Saxon XSLT and XQuery Processor v11 HE (HOME EDITION)]
	- Letöltés: (https://www.saxonica.com/download/download_page.xml)
	- CLI referencia: https://www.saxonica.com/documentation9.5/using-xsl/commandline.html

- [Apache™ FOP]
	- Letöltés: (https://xmlgraphics.apache.org/fop/download.html)
	- CLI referencia: https://xmlgraphics.apache.org/fop/0.95/running.html

#### 3) XSLT beágyazás 

Természetesen lehetőség van a NAV által biztosított XSLT templateket natív módon beemelni bármilyen szoftverbe, az opensource licensz ezt kifejezetten megengedi és ezzel a céllal is történik a közzététel. A legtöbb nyelven létezik több ingyenes library is ami képes XSLT runtime futtatására. Amire figyelni kell, hogy az integráció XSLT 2.0 kompatibilis parserrel történjen. Alternatív megoldásként lehetőség van a 2) módszerben említett jar-ok becsomagolására is a projektbe, mert a generálás mind a Saxonica, mind az FOP esetén metódusból is hívható. Erről a hivatalos dokumentációkban lehet bővebben olvasni, de néhány példát mi is közzéteszünk.

### 1.6) Projekt konfigurációja CLI integrációhoz

Figyelni kell rá, hogy PDF és HTML kimenethez eltérő XSLT fájlt kell használni!

- PDF  -> InvoiceDataTemplate_XSLT_FO.xslt
- HTML -> InvoiceDataTemplate_XSLT_HTML.xslt 

Az XSLT állomány-ban a nyelvet a $lang paraméter által vezéreljük. A $lang paraméter elfogadott értékei: 'HU', 'EN', 'DE', ezzel lehet a kimenet nyelvét beállítani. A parancssorban a filepath-ok megadhatók abszolút vagy relatív formában is, a lényeg hogy a hivatkozott XML és XSLT, valamint jar fájlok az útvonalon megtalálhatók és a felhasználó által futtathatók legyenek.

HTML kimenethez OS-natív példa (Windows)
```
java -jar "%USERPROFILE%\saxon-he-11.3.jar" -s:"%USERPROFILE%\input_XML.xml" -xsl:"%USERPROFILE%\InvoiceDataTemplate_XSLT_HTML.xslt" -o:"%USERPROFILE%\output_file.html" ?lang='HU' && "%USERPROFILE%\output_file.html"
```
HTML kimenethez java példa (Windows)
```
java -jar SaxonHE11-4J\saxon-he-11.4.jar -s:1_szamla.xml -xsl:template\3.0\InvoiceDataTemplate_XSLT_HTML.xslt -o:1_szamla.html ?lang='HU' && 1_szamla.html
```
PDF kimenethez OS-natív példa (Windows)
```
java -jar "%USERPROFILE%\saxon-he-11.3.jar" -s:"%USERPROFILE%\input_XML.xml" -xsl:"%USERPROFILE%\InvoiceDataTemplate_XSLT_FO.xslt" -o:"%USERPROFILE%\fo_file.fo" ?lang='HU' && "%USERPROFILE%\fop.bat" fop -q -fo "%USERPROFILE%\fo_file.fo" -pdf "%USERPROFILE%\output_file.pdf" && "%USERPROFILE%\output_file.pdf"
```
PDF kimenethez java példa (Windows)
```
java -jar SaxonHE11-4J\saxon-he-11.4.jar -s:1_szamla.xml -xsl:template\3.0\InvoiceDataTemplate_XSLT_FO.xslt -o:fo_file.fo ?lang='HU' && fop-2.8\fop\fop.bat fop -c fop-2.8\fop\conf\fop_user.xml  -q -fo fo_file.fo -pdf 1_szamla.pdf && 1_szamla.pdf
```
Unix típusú operációs rendszer esetén a filepath kifejezések megfelelően átírandók. (pl: \%USERPROFILE%\ => /$HOME/)

#### 1.6.1) PDF Generálás magyarázata
A fenti parancsokat az alábbiak szerint szükséges értelmezni Windows parancssorban. (Az && jellel a parancsokat fűzzük össze oly módon, hogy csak akkor hajtódik végre ha az előző parancs sikeresen lefutott.)

##### 1.) A Saxonicával az XML számla és az XSLT template segítségével legeneráljuk az xsl:fo állományt. A ?lang='HU' esetében a kérdőjel előtt szóközt kell hagyni mivel az az xslt template paramétere!
```
java -jar SaxonHE11-4J\saxon-he-11.4.jar -s:1_szamla.xml -xsl:template\3.0\InvoiceDataTemplate_XSLT_FO.xslt -o:fo_file.fo ?lang='HU'
```
##### 2.) A FOP-al legeneráljuk a PDF-et a az 1-es pontban legenerált xsl:fo állomány segítségével
```
fop-2.8\fop\fop.bat fop -c fop-2.8\fop\conf\fop_user.xml  -q -fo fo_file.fo -pdf 1_szamla.pdf 
```
##### 3.) 1_szamla.pdf megnyitjuk a pdf-et.

#### 1.6.2) Config módosítások az FO processzorhoz. 
A konfigurációs módosításokat vagy az fop.xconf állományba hajtjuk végre vagy külön XML állományba kerülnek, az alábbiak szerint.
(Ha külön állományban van akkor meg kell adni annak az elérési útvonalát a –c kapcsolóval a FOP-nak)

```xml
<fop version="1.0">

<!—A relatív URL-ek értelmezéséhez. Amennyiben az XSLT állományban relatív elérési utak szerepelnek akkor ehhez képest fog majd viselkedni az FO processor. Ez a projekt root-ja jelenleg-->
<base>..</base>

<!—Fontok relatív elérési útvonalának rootja. Ez alapértelmezett módon az FO processzor conf mappája, ezért vissza kell a projekt root-ba navigálni-->
<font-base>../../../</font-base>
    <renderers>
        <renderer mime="application/pdf">
            <fonts>
               <font embed-url="font/tahoma.ttf" kerning="yes" sub-font="Tahoma">
                <font-triplet name="Tahoma" style="normal" weight="normal"/>
                <font-triplet name="Tahoma" style="normal" weight="bold"/>
                </font>
            </fonts>
        </renderer>
    </renderers>
</fop>

```

### 1.7) Kezelt hibák

Fontos kihangsúlyozni, hogy a desktop verzió semmiféle üzleti validációt nem végez a bemeneti XML-en. Másként fogalmazva, ha az XML séma valid, akkor a template olyan számla adatszolgáltatásokat is gond meg fog jeleníteni, amelyek egyébként az Online Számla rendszer validációin elbuknának. A megjelenített tartalomban sincs semmiféle üzleti logika, egymásnak ellentmondó vagy kizáró bemenetek is megjelennek. (pl: magánszemély vevőnél név-és címadat, ha az az XML-ben szerepel) Minden esetben a felhasználó felelőssége, hogy a bemeneti XML-eket mennyire szanitálja a képgenerálás előtt.

Ezen túlmenően, az XSLT templatek 2 külön hibaágat kezelnek csak:
- a lokalizációt vezérlő $lang paraméter inicializálatlan, vagy nem a 'HU', 'EN', 'DE' értékeket tartalmazza
- a bemeneti XML namespace értéke nem 'http://schemas.nav.gov.hu/OSA/3.0/data'

## 2) Hogyan tudok a projekttel kapcsolatban kérdezni?

A projektben feature request és általános kérdés feladásra, valamint az XSLT integrációhoz DEV support kérésére is van lehetőség. 

## 3) Hogyan tudok a projekthez hozzájárulni?

A projekt alatt wiki és pull request feladási lehetőség van. A részletekről tájékoztatás a [CONTRIBUTING.md](https://github.com/nav-gov-hu/Online-Invoice-XSLT/blob/master/CONTRIBUTING.md) fájlban található.

## 4) Nyelvhasználat

A projekt hivatalos nyelve a magyar, de ezzel párhuzamosan - a nemzetközi fejlesztési normáknak megfelelően - minden NAV által közölt tartalom angolul is elérhető. A véleményezéseknél a kezdeményező által használt nyelven (magyarul vagy angolul) fogunk válaszolni. A projekthez történő hozzájárulás (PR vagy wiki) angol és magyar nyelven támogatott, az ettől eltérő nyelvű hozzájárulásokat el fogjuk utasítani.

## 5) Moderálás
A NAV fenntartja a jogot, hogy az általános etikettet vagy jó ízlést sértő hozzászólásokat, kommenteket a tárhelyről kérdés nélkül eltávolítsa.

---------------------------------------------------------------------------------------------------------------------------------------------

