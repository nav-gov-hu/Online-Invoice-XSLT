# Hozzájárulás a projekthez

[English version](#contributing-to-the-project)

A projekthez bárki szabadon hozzájárulhat tudástár (wiki) vagy fejlesztési ötlet, javaslat hozzáadásával akár szöveges megjegyzés (issue) akár kód (pull request) formájában. A hozzájáruláskor a hozzájáruló automatikusan elfogadja a projekt licensz (MIT) által meghatározott feltételeket.

## 1) Fejlesztési ötletem vagy kérdésem van (feature request / Q&A issue)

Az XSLT generálás működésére vonatozó kérdés vagy ötlet esetén issue-t lehet feladni a fejlesztőknek: https://github.com/nav-gov-hu/Online-Invoice-XSLT/issues

Minden feladott issue-t megválaszolunk, de kérjük, hogy lehetőség szerint kerüljük a duplikációkat. Minden issue nyilvános, a kérdést és a választ is mindenki láthatja. Amennyiben az issue javaslat és annak tartalmával egyetértünk, úgy a javaslatot befogadjuk és a projekt kanban táblájára is felkerül mint feladat. A módosítást a későbbiekben új commit alatt hozzá fogjuk adni a projekthez.

A projekt alatt lehetőség van dokumentációs hibák jelzésére is.

Kérjük a tárgynak megfelelő sablon használatát az issue-k alatt kiválasztani, a következők alapján:

- kérdés esetén: Kérdés-válasz / Q&A issue
- javaslat esetén: Fejlesztési kérés / Feature request
- dokumentációs hiba jelzése esetén: Dokumentációs hiba / Documentation error

Kérjük a sablon tárgy mezőjében a [] címke utáni részt annak megfelelően kitölteni, amire az issue vonatkozik!

## 3) Tudástárat szeretnék írni (wiki)

A NAV támogatja a közösségi tudásmegosztást, hiszen a számlázóprogramok fejlesztőinek elkötelezett és magas színvolalú munkája elengedhetetlenül szükséges eleme az Online Számla Rendszer sikerességének. Ennek fényében a GitHubon keretet és lehetőséget kínálunk egy olyan tudásbázis kialakítására, amely nyitva áll minden hozzájárulni kívánó fejlesztő előtt. A hozzájárulás vonatkozhat (a teljesség igénye nélkül) üzleti logikára, design patternre, vagy adott programnyelv konkrét rész vagy funkció implementációjára is, lényegében bármire, ami a projekthez csatlakozóknak hasznos lehet.

A wiki csak GitHub userrel, bejelentkezést követően érhető el: https://github.com/nav-gov-hu/Online-Invoice-XSLT/wiki

A wiki tartalmát és struktúráját a közösség önszerveződő módon, szabadon meghatározhatja. A közösség ennek során felelősséggel tartozik a README.md-ben megfogalmazott a moderációs elvek betartásáért és betartatásáért. A wiki tartalmának szakmai helyességéért a NAV nem vállal felelősséget, annak biztosítása a hozzájáruló és a közösség feladata.

A projekt alatt található wiki szerkesztéséhez jelenleg nincs szükség csoport tagságra, ez azonban az idő előre haladásával még változhat.

## 4) Saját kódot szeretnék adni (pull request)

A projekt az Altova Stylevision 2022 fejlesztőeszközével készült, így pull requestet csak is ebben a formátumban (.sps) feladott, XSLT 2.0 kompatibilis verziójára támogatunk. Ezen megkötések mellett bármire irányulhat a módosítás, funkcionális (pl: tartalomra, formázásra, elrendezésre) és nem-funkcionális (pl: generálás performancia, FO warning javítás) tartalomra egyaránt.

Ha a pull request tartalmával egyetértünk, úgy a változtatást mergeljük. Ha a pull request hibás vagy hiányos, úgy kérni fogjuk annak javítását vagy kiegészítését.

Pull request csak GitHub userrel, bejelentkezést követően érhető el: https://github.com/nav-gov-hu/Online-Invoice-XSLT/pulls

### 4.1) Pull request feladás folyamat
1. Saját fejlesztő környezet felállítása (IDE, GIT, stb) kliens oldalon.
2. Online-Invoice-XSLT repository forkolása.
3. A forkolt repository klózonása saját gépre.
4. Új branch létrehozása a névkonvenciónak megfelelően.
5. A kódok módosítása, ellenőrzés, tesztelés. Statikus kódelemzést (tehát az sps legyen jól formázott és valid), és fejlesztői tesztet (pl előtte-utána generálási eredmények adott inputokra) minden esetben kérni fogunk.
6. Commit(ok) a saját lokális branchre. 
7. A commitált változtatások pusholása a saját repository fork alá.
8. Pull request feladása a GitHub felületén. A pull requestet az XSD azon főverziója szerinti branchre kell feladni, amelyre a módosítási igény vonatkozik. (ez mindig a 'master' branch) A projektben támogatott a merge commit és a squash is, de több commit esetén preferáljuk a squasholást. (https://github.blog/2016-04-01-squash-your-commits/)

### 4.2) Pull requestek kezelése
- Minden pull request kötelező eleme a leírás, a leírás nélküli PR-eket elutasítjuk.
- A pull request leírása legyen annyira tömör és egyértelmű amennyire lehetséges, és derüljön ki belőle, hogy mi volt az igény, amit az adott PR tartalmaz.
- Pull request csak akkor mergelhető, ha a reviewerek megfelelőnek találták.
- Ha a pull request hiányos vagy hibás, akkor a review során kérni fogjuk a javítását vagy a kiegészítését.

### 4.3) Pull request névkonvenciók
A pull requesteket kérjük minden esetben az alábbi névkonvenció szerint elnevezni: `[típus]/[változtatások tömören]`. 

A `[típus]/` prefix az alábbi értékeket veheti fel:

- `feature/` = új funkcionalitás hozzáadása
- `try/` = javaslat kísérleti jelleggel
- `fix/` = javítás, pontosítás

A `[változtatások tömören]` postfix tartalmazza azon üzleti igényt, amire a módosítás irányul. Például:

- `[feature]/[új melléklap bevezetése a conventionalInfo típusú adatok számára]`
- `[fix]/[EN lokalizáció javítása a ProductStreamTemplate_C5X templateben]`

Nem helyesek a többértelmű, túl általános megfogalmazások (pl: számlafej adatok módosítása), ezeket lehetőség szerint kerüljük.

--------------------------------------------------------------------------------------------------------------------------------------------

# Contributing to the project

Anyone is free to contribute to the project by posting a knowledge base (wiki) entry, or a development idea or suggestion, either in the form of a text comment (issue) or as code (pull request). All contributors will be considered to have automatically accepted the terms of the project license (MIT).

## 1) I have a development idea or question (issue)

If you have a question or functional idea regarding the XSLT generation, you can submit an issue to the developers: https://github.com/nav-gov-hu/Online-Invoice-XSLT/issues

We will respond to all submitted issues, but please avoid duplications wherever possible. All issues are public: both the question and the response are visible to everyone. If the issue is a proposal and we agree with the content thereof, we will accept the proposal and list it on the project Kanban board as a task. The change will then be added to the project as a new commit.

In the project it is possible to indicate documentation errors too.

Please select the use of the template suitable for the subject from the issues, based on the following:

  - for questions: Kérdés-válasz / Q&A issue
  - for proposals: Fejlesztési kérés / Feature request
  - for documentation errors: Dokumentációs hiba / Documentation error

Please fill out the part after the [] label in the subject field of the template according to what the issue is referencing.

## 3) I would like to contribute to the knowledge base (wiki)

NAV supports community knowledge sharing, as the dedicated and high standard work provided by invoicing software developers is essential to the success of the Online Invoicing System. Accordingly, we use GitHub to provide a framework and an opportunity for creating a knowledge base open to any developer interested in contributing. Contributions may include business logic, design patterns, or implementations for a specific part or function in a given program language (among others), essentially anything that may prove useful to those joining the project.

Accessing the wiki requires being logged into your GitHub account: https://github.com/nav-gov-en/Online-Invoice-XSLT/wiki

The content and structure of the wiki is completely up to the community itself, in a self-organising fashion. As part of this, the community shall be responsible for adhering to and enforcing the moderation principles set out in README.md. NAV cannot be held responsible for the technical accuracy of the wiki’s content. It will remain the responsibility of the contributor and the community.

Currently, the project wiki is freely editable without requiring group membership; however, this may change over time.

## 4) I would like to submit my own code (pull request)

The project was created with Altova Stylevision 2022 development tool, so we only support pull requests submitted in this format (.sps), compatible with XSLT 2.0. In addition to these restrictions, the modification can be aimed at anything, both functional (e.g. content, formatting, layout) and non-functional (e.g. generation performance, FO warning fix) content.

If we agree with the content of the pull request, we will merge the change, and if the change requires server-side changes as well, we will also post the task on the project Kanban board. If the pull request is incorrect or incomplete, we will ask you to correct or supplement it.

Making a pull request requires being logged into your GitHub account: https://github.com/nav-gov-hu/Online-Invoice-XSLT/pulls

### 4.1) Pull request submission workflow

1.  Set up your own client-side development environment (IDE, GIT, etc.).
2.  Fork the Online-Invoice-XSLT repository.
3.  Clone the forked repository to your own device.
4.  Create a new branch, adhering to the naming convention.
5.  Modify, verify and test the codes. We will always request a static code analysis (so the sps must be well formatted and valid) and a developer test (e.g. before and after generation results for given inputs).
6.  Commit your change(s) to your own local branch.
7.  Push your committed changes to your own repository fork.
8.  Send a pull request on the GitHub screen. The pull request should be sent to the appropriate branch for the main version of the XSD to which the change request applies (this is always the ‘master’ branch). The project supports both merge commit and squash, but squash is preferred for multiple commits. (https://github.blog/2016-04-01-squash-your-commits/)

### 4.2) Management of pull requests

  - All pull requests must have a description. PRs without a description will be rejected.
  - Pull request descriptions should be as clear and concise as possible, and they should show what issue was addressed by the PR in question.
  - A pull request can only be merged if reviewers find it appropriate.
  - If the pull request is incomplete or incorrect, we will ask you to correct or complete it during the review.

### 4.3) Pull request naming conventions

Always name the pull requests according to the following naming convention: `[type]/[short description of changes]`.

The `[type]/` prefix should be given one of the following values:

  - `feature/` = when adding new functionality
  - `try/` = for proposals, implemented on an experimental basis
  - `fix/` = correction, clarification

The `[short description of changes]` postfix should contain the business need to be met by the change. Example:

  - `[feature]/[introducing a new sheet for conventionalInfo data]`
  - `[fix]/[EN localization fix in the ProductStreamTemplate_C5X template]`

Formulations that are ambiguous or too general (e.g. “modifying invoiceHead data”), are incorrect and should be avoided if possible.
