# Online-Invoice-XSLT

[English version](#online-invoice-xslt-EN)

Kliens bináris és felhasználói kézikönyv letöltése: [OSA XSLT GUI](https://github.com/nav-gov-hu/Online-Invoice-XSLT/releases)

Üdvözöljük az Online Számla adatok képi megjelenítését biztosító XSLT projekt publikus tárhelyén!

## 1) A tárhely tartalma és célja

A tárhely a magyar Online Számla rendszer által használt XML séma definícióhoz tartozó stylesheet transzformációs szabályokat (a továbbiakban: XSLT) és a projekthez kapcsolódó egyéb állományokat tartalmazza. Fenti 3.0-ás számla-adatszolgáltatások standard képi megjelenítését tartalmazó fejlesztést a NAV az elektronikus számlázás további elterjedésének támogatása céljából mindenki számára ingyenesen közzéteszi.

Kérjük figyelembe venni, hogy bár a tárhely publikusan elérhető, a véleményezéshez és a fejlesztéshez hozzájáruláshoz GitHub userre van szükség. A felhasználó ingyenesen, pár perc alatt létrehozható.

### 1.1) XSLT szabvány

Az XSLT egy W3C szabvány olyan XML dokumentumok képi megjelenítésére, amelyeket séma vagy dokumentum típus leíró (XSD / DTD) határoz meg. Segítségével leírható egy olyan szabályrendszer, amely az XML tartalmát egy meghatározott formára alakítja. A szabályrendszer nagyon rugalmas és számos lehetőséget biztosít a transzformációra. A megjelenítés feltételekhez köthető, ennek során vizsgálható a bemeneti XML tag kitöltöttsége, a tag tartalma, vagy bármilyen támogatott függvény kimenete. Az XML tartalma rendezhető, csoportosítható, akár a megjelenített értéke is felüldefiniálható. A formázási lehetőségek a HTML és CSS szabványok segítségével írhatók le, melyek szintén feltételekhez is köthetők.

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
A programot le kell tölteni a [tárhelyről](https://github.com/nav-gov-hu/Online-Invoice-XSLT/releases), ami ezt követően egyszerű végrehajtható fájlként futtatható. Indítás után a grafikus felületen be kell tallózni azt az invoiceData XML fájlt, amelynek a tartalmát meg szeretnénk jeleníteni, valamint ki kell választani a kért nyelvet valamint formátumot. A program ezt követően a társított PDF vagy HTML olvasó alkalmazással megjeleníti az elkészült dokumentumot. Ezt a módozatot azoknak az üzleti felhasználóknak ajánljuk, akik nem akarják az általuk használt szoftverbe belefejlesztetni az XSLT integrációját, de a megjelenítési szolgáltatást szeretnék igénybe venni.

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
##### 2.) A FOP-al legeneráljuk a PDF-et a az 1-es pontban legenerált xsl:fo állomány segítségével.
```
fop-2.8\fop\fop.bat fop -c fop-2.8\fop\conf\fop_user.xml  -q -fo fo_file.fo -pdf 1_szamla.pdf 
```
##### 3.) Megnyitjuk a PDF-et.

#### 1.6.2) Config módosítások az FO processzorhoz

A konfigurációs módosításokat vagy az fop.xconf állományba hajtjuk végre vagy külön XML állományba kerülnek, az alábbiak szerint. (Ha külön állományban van akkor meg kell adni annak az elérési útvonalát a –c kapcsolóval a FOP-nak)

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

Fontos kihangsúlyozni, hogy a desktop verzió semmiféle üzleti validációt nem végez a bemeneti XML-en. Másként fogalmazva, ha az XML jól formázott, akkor a template olyan számla adatszolgáltatásokat is gond nélkül meg fog jeleníteni, amelyek egyébként az Online Számla rendszer validációin elbuknának. A megjelenített tartalomban sincs semmiféle üzleti logika, egymásnak ellentmondó vagy kizáró bemenetek is megjelennek. (pl: magánszemély vevőnél név-és címadat, ha az az XML-ben szerepel) Minden esetben a felhasználó felelőssége, hogy a bemeneti XML-eket mennyire szanitálja a képgenerálás előtt.

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

# Online-Invoice-XSLT-EN

Client binary and User manual download: [OSA XSLT GUI](https://github.com/nav-gov-hu/Online-Invoice-XSLT/releases)


## 1) Content and purpose of the repository

The repository contains the stylesheet transformation rules (hereinafter: XSLT) for the XML schema definition used by the Hungarian Online Invoice System and other files related to the project. NTCA publishes the development containing the standard image display of the above 3.0 invoice data reports free of charge for everyone in order to support the further spread of electronic invoicing.

Please note that while the repository is publicly available, a GitHub user is required for comments and contributing to development. GitHub accounts are free of charge, and can be created in a matter of minutes.

### 1.1) XSLT standard

XSLT is a W3C standard for the graphical representation of XML documents defined by a schema or document type descriptor (XSD / DTD). It can be used to describe a system of rules that transforms the content of XML into a specific form. The rule system is very flexible and provides many possibilities for transformation. The display can be linked to conditions, during which the completion of the input XML tag, the content of the tag, or the output of any supported function can be checked. The content of the XML can be sorted, grouped, and even the displayed value can be overridden. Formatting options can be described using the HTML and CSS standards, which can also be linked to conditions.

More about the standard: https://www.w3.org/TR/2021/REC-xslt20-20210330/

### 1.1) Supported outputs

XSLT templates support two output formats: PDF and HTML.

Out of these, PDF is intended as the main output format, XSLT was mainly prepared for its flawless display. HTML is more intended as an intermediate output, and we support it with the goal that in other software an HTML file can be easily converted into image content that is needed according to local needs.

### 1.3) Localizations

The XSLT templates also support image display in Hungarian, English and German. The language of the output is controlled by the xsl parameter named $lang, which must be passed to the template during generation. All content in the display is localized, so the names of the fields, the displayed texts, and the date and number formats also change according to the language of the display.

 The localization of date and number formats is as follows.

- date: 
	- HU: YYYY. month(HU) DD.
	- EN: DD. month(EN) YYYY.
	- DE: YYYY. month(DE) DD.
- number:
 	- HU: thousand separator - space, decimal separator: comma
  	- EN: thousand separator - comma, decimal separator: period
  	- DE: thousand separator - period, decimal separator: comma

### 1.4) Styling defaults

Templates contain default formatting. Out of these, the font size and font color settings can be overridden by the template, the others never change in the currently existing templates.

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

![Page properties](https://github.com/nav-gov-hu/Online-Invoice-XSLT/blob/master/img/Page%20properties.png)

### 1.5) Integrations

Adapting to different developer needs and scopes of use, we provide several integration options.

#### 1) Thick client by NTCA
The program must be downloaded from the repository [tárhelyről](https://github.com/nav-gov-hu/Online-Invoice-XSLT/releases), which is a simple executable file that can be run. After starting, the invoiceData XML file must be browsed on the graphical interface, and the requested language and format must be selected. The program then displays the completed document with the associated PDF or HTML reader application. This mode is recommended for business users who do not want to develop XSLT integration in the software they use, but want to use the display service.

#### 2) OS-native or Java-based CLI integration
We recommend this method to those who want to somehow integrate the display of invoice data into the software they use, but do not want to develop it separately and are satisfied with a script-level solution. The integration requires an XSLT engine (in the case of HTML output) and, in addition, an FO processor if we also want to generate a PDF. Instead of the XSLT and FO processors selected for the project, other processors of the same value and knowledge (XSLT 2.0 compliant) can also be used, with a suitable configuration.

The necessary installation files are available here.

- [Saxon XSLT and XQuery Processor v11 HE (HOME EDITION)]
	- Download: (https://www.saxonica.com/download/download_page.xml)
	- CLI reference: https://www.saxonica.com/documentation9.5/using-xsl/commandline.html

- [Apache™ FOP]
	- Download: (https://xmlgraphics.apache.org/fop/download.html)
	- CLI reference: https://xmlgraphics.apache.org/fop/0.95/running.html

#### 3) XSLT embedding
Of course, it is possible to include the XSLT templates provided by NTCA natively in any software, the open source license specifically allows this and it is published for this purpose. In most languages, there are several free libraries that can used as an XSLT runtime. What should be noted is that the integration is done with an XSLT 2.0 compatible parser. As an alternative solution, it is also possible to package the jars mentioned in method 2) in the project, because the generation can be called from a method in both Saxonica and FOP. You can read more about this in the official documentation, but we also publish some examples.

### 1.6) Projekt configuration for CLI integration

Please note that a different XSLT file must be used for PDF and HTML output!

- PDF  -> InvoiceDataTemplate_XSLT_FO.xslt
- HTML -> InvoiceDataTemplate_XSLT_HTML.xslt 

In the XSLT file, the language is controlled by the $lang parameter. The accepted values of the $lang parameter are: 'HU', 'EN', 'DE', with which the language of the output can be set. In the command line, the filepaths can be entered in absolute or relative form, the main thing is that the referenced XML and XSLT and jar files can be found on the path and can be run by the user.

OS-native example for HTML output (Windows)
```
java -jar "%USERPROFILE%\saxon-he-11.3.jar" -s:"%USERPROFILE%\input_XML.xml" -xsl:"%USERPROFILE%\InvoiceDataTemplate_XSLT_HTML.xslt" -o:"%USERPROFILE%\output_file.html" ?lang='HU' && "%USERPROFILE%\output_file.html"
```
Java example for HTML output (Windows)
```
java -jar SaxonHE11-4J\saxon-he-11.4.jar -s:1_szamla.xml -xsl:template\3.0\InvoiceDataTemplate_XSLT_HTML.xslt -o:1_szamla.html ?lang='HU' && 1_szamla.html
```
OS-native example for PDF output (Windows)
```
java -jar "%USERPROFILE%\saxon-he-11.3.jar" -s:"%USERPROFILE%\input_XML.xml" -xsl:"%USERPROFILE%\InvoiceDataTemplate_XSLT_FO.xslt" -o:"%USERPROFILE%\fo_file.fo" ?lang='HU' && "%USERPROFILE%\fop.bat" fop -q -fo "%USERPROFILE%\fo_file.fo" -pdf "%USERPROFILE%\output_file.pdf" && "%USERPROFILE%\output_file.pdf"
```
Java example for PDF output (Windows)
```
java -jar SaxonHE11-4J\saxon-he-11.4.jar -s:1_szamla.xml -xsl:template\3.0\InvoiceDataTemplate_XSLT_FO.xslt -o:fo_file.fo ?lang='HU' && fop-2.8\fop\fop.bat fop -c fop-2.8\fop\conf\fop_user.xml  -q -fo fo_file.fo -pdf 1_szamla.pdf && 1_szamla.pdf
```
In the case of a Unix-type operating system, the filepath expressions must be rewritten correctly. (eg: \%USERPROFILE%\ => /$HOME/)

#### 1.6.1) Explaining PDF generation
The above commands must be interpreted as follows in the Windows command line. (Commands are connected with the && sign in such a way that they are executed only if the previous command has been executed successfully.)

##### 1.) With Saxonica, we generate the xsl:fo file using the XML invoice and the XSLT template. In the case of ?lang='HU', a space must be left before the question mark, as it is a parameter of the xslt template!
```
java -jar SaxonHE11-4J\saxon-he-11.4.jar -s:1_szamla.xml -xsl:template\3.0\InvoiceDataTemplate_XSLT_FO.xslt -o:fo_file.fo ?lang='HU'
```
##### 2.) With FOP, we generate the PDF using the xsl:fo file generated in point 1.
```
fop-2.8\fop\fop.bat fop -c fop-2.8\fop\conf\fop_user.xml  -q -fo fo_file.fo -pdf 1_szamla.pdf 
```
##### 3.) Open the PDF.

#### 1.6.2) Config modifications for the FO processor

The configuration changes are implemented either in the fop.xconf file or in a separate XML file, as shown below. (If it is in a separate file, its access path must be given to the FOP with the -c switch)

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

### 1.7) Handled errors

It is important to emphasize that the desktop version does not perform any kind of business validation on the input XML. In other words, if the XML schema is well-formed, the template will also display invoice reports that would otherwise fail on the validations of the Online Invoice system. There is no business logic in the displayed content, contradictory or exclusionary inputs are also displayed. (e.g. name and address data for a private customer, if it is included in the XML) In all cases, it is the user's responsibility to determine how well the input XML is sanitized before image generation.

In addition, XSLT templates handle 2 separate error branches only:
- the $lang parameter controlling the localization is not initialized or does not contain the values 'HU', 'EN', 'DE'
- the value of the input XML namespace is not 'http://schemas.nav.gov.hu/OSA/3.0/data'

## 2) How can I request information about the project?

Feature requests and general questions can be submitted to the project. Request for DEV support for the XSLT integration is also possible.

## 3) How can I contribute to the project?

A wiki and a pull request submission function will be available for the project. Please see the [CONTRIBUTING.md](https://github.com/nav-gov-hu/Online-Invoice-XSLT/blob/master/CONTRIBUTING.md) file for details.

## 4) Use of language

The official language of the project is Hungarian, but all content published by NAV is also available in English, in accordance with international development standards. We will respond to comments in the language used by the original poster (Hungarian or English). Contribution to the project (PR or wiki) is supported in English and Hungarian. Contributions in other languages will be rejected.

## 5) Moderation

NAV reserves the right to summarily remove any contributions or comments from the repository that fail to comply with the rules of good manners or good taste.
