// To parse this JSON data, do
//
//     final bible = bibleFromJson(jsonString);

import 'dart:convert';

Bible bibleFromJson(String str) => Bible.fromJson(json.decode(str));

String bibleToJson(Bible data) => json.encode(data.toJson());

class Bible {
    Bible({
        this.info,
        this.schemes,
        this.host,
        this.swagger,
        this.paths,
        this.definitions,
        this.responses,
        this.parameters,
        this.securityDefinitions,
        this.security,
        this.tags,
    });

    Info info;
    List<String> schemes;
    String host;
    String swagger;
    Paths paths;
    Definitions definitions;
    Responses responses;
    Parameters parameters;
    SecurityDefinitions securityDefinitions;
    List<Security> security;
    List<Tag> tags;

    factory Bible.fromJson(Map<String, dynamic> json) => Bible(
        info: Info.fromJson(json["info"]),
        schemes: List<String>.from(json["schemes"].map((x) => x)),
        host: json["host"],
        swagger: json["swagger"],
        paths: Paths.fromJson(json["paths"]),
        definitions: Definitions.fromJson(json["definitions"]),
        responses: Responses.fromJson(json["responses"]),
        parameters: Parameters.fromJson(json["parameters"]),
        securityDefinitions: SecurityDefinitions.fromJson(json["securityDefinitions"]),
        security: List<Security>.from(json["security"].map((x) => Security.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "info": info.toJson(),
        "schemes": List<dynamic>.from(schemes.map((x) => x)),
        "host": host,
        "swagger": swagger,
        "paths": paths.toJson(),
        "definitions": definitions.toJson(),
        "responses": responses.toJson(),
        "parameters": parameters.toJson(),
        "securityDefinitions": securityDefinitions.toJson(),
        "security": List<dynamic>.from(security.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
    };
}

class Definitions {
    Definitions({
        this.meta,
        this.bibleSummary,
        this.audioBibleSummary,
        this.bible,
        this.book,
        this.chapterSummary,
        this.chapter,
        this.language,
        this.passage,
        this.verse,
        this.sectionSummary,
        this.section,
        this.verseSummary,
        this.searchVerse,
        this.searchResponse,
        this.audioBible,
        this.audioChapter,
    });

    Meta meta;
    AudioBible bibleSummary;
    AudioBibleSummary audioBibleSummary;
    BibleClass bible;
    Book book;
    ChapterSummary chapterSummary;
    Chapter chapter;
    Language language;
    Passage passage;
    Verse verse;
    SectionSummary sectionSummary;
    Section section;
    SearchVerse verseSummary;
    SearchVerse searchVerse;
    SearchResponse searchResponse;
    AudioBible audioBible;
    AudioChapter audioChapter;

    factory Definitions.fromJson(Map<String, dynamic> json) => Definitions(
        meta: Meta.fromJson(json["Meta"]),
        bibleSummary: AudioBible.fromJson(json["BibleSummary"]),
        audioBibleSummary: AudioBibleSummary.fromJson(json["AudioBibleSummary"]),
        bible: BibleClass.fromJson(json["Bible"]),
        book: Book.fromJson(json["Book"]),
        chapterSummary: ChapterSummary.fromJson(json["ChapterSummary"]),
        chapter: Chapter.fromJson(json["Chapter"]),
        language: Language.fromJson(json["Language"]),
        passage: Passage.fromJson(json["Passage"]),
        verse: Verse.fromJson(json["Verse"]),
        sectionSummary: SectionSummary.fromJson(json["SectionSummary"]),
        section: Section.fromJson(json["Section"]),
        verseSummary: SearchVerse.fromJson(json["VerseSummary"]),
        searchVerse: SearchVerse.fromJson(json["SearchVerse"]),
        searchResponse: SearchResponse.fromJson(json["SearchResponse"]),
        audioBible: AudioBible.fromJson(json["AudioBible"]),
        audioChapter: AudioChapter.fromJson(json["AudioChapter"]),
    );

    Map<String, dynamic> toJson() => {
        "Meta": meta.toJson(),
        "BibleSummary": bibleSummary.toJson(),
        "AudioBibleSummary": audioBibleSummary.toJson(),
        "Bible": bible.toJson(),
        "Book": book.toJson(),
        "ChapterSummary": chapterSummary.toJson(),
        "Chapter": chapter.toJson(),
        "Language": language.toJson(),
        "Passage": passage.toJson(),
        "Verse": verse.toJson(),
        "SectionSummary": sectionSummary.toJson(),
        "Section": section.toJson(),
        "VerseSummary": verseSummary.toJson(),
        "SearchVerse": searchVerse.toJson(),
        "SearchResponse": searchResponse.toJson(),
        "AudioBible": audioBible.toJson(),
        "AudioChapter": audioChapter.toJson(),
    };
}

class AudioBible {
    AudioBible({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    AudioBibleProperties properties;

    factory AudioBible.fromJson(Map<String, dynamic> json) => AudioBible(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: AudioBibleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class AudioBibleProperties {
    AudioBibleProperties({
        this.id,
        this.dblId,
        this.abbreviation,
        this.abbreviationLocal,
        this.copyright,
        this.language,
        this.countries,
        this.name,
        this.nameLocal,
        this.description,
        this.descriptionLocal,
        this.info,
        this.type,
        this.updatedAt,
        this.relatedDbl,
        this.audioBibles,
    });

    Abbreviation id;
    Abbreviation dblId;
    Abbreviation abbreviation;
    Abbreviation abbreviationLocal;
    Abbreviation copyright;
    ItemsClass language;
    Countries countries;
    Abbreviation name;
    Abbreviation nameLocal;
    Abbreviation description;
    Abbreviation descriptionLocal;
    Abbreviation info;
    Abbreviation type;
    UpdatedAt updatedAt;
    Abbreviation relatedDbl;
    AudioBibles audioBibles;

    factory AudioBibleProperties.fromJson(Map<String, dynamic> json) => AudioBibleProperties(
        id: Abbreviation.fromJson(json["id"]),
        dblId: Abbreviation.fromJson(json["dblId"]),
        abbreviation: Abbreviation.fromJson(json["abbreviation"]),
        abbreviationLocal: Abbreviation.fromJson(json["abbreviationLocal"]),
        copyright: json["copyright"] == null ? null : Abbreviation.fromJson(json["copyright"]),
        language: ItemsClass.fromJson(json["language"]),
        countries: Countries.fromJson(json["countries"]),
        name: Abbreviation.fromJson(json["name"]),
        nameLocal: Abbreviation.fromJson(json["nameLocal"]),
        description: Abbreviation.fromJson(json["description"]),
        descriptionLocal: Abbreviation.fromJson(json["descriptionLocal"]),
        info: json["info"] == null ? null : Abbreviation.fromJson(json["info"]),
        type: Abbreviation.fromJson(json["type"]),
        updatedAt: UpdatedAt.fromJson(json["updatedAt"]),
        relatedDbl: Abbreviation.fromJson(json["relatedDbl"]),
        audioBibles: json["audioBibles"] == null ? null : AudioBibles.fromJson(json["audioBibles"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "dblId": dblId.toJson(),
        "abbreviation": abbreviation.toJson(),
        "abbreviationLocal": abbreviationLocal.toJson(),
        "copyright": copyright == null ? null : copyright.toJson(),
        "language": language.toJson(),
        "countries": countries.toJson(),
        "name": name.toJson(),
        "nameLocal": nameLocal.toJson(),
        "description": description.toJson(),
        "descriptionLocal": descriptionLocal.toJson(),
        "info": info == null ? null : info.toJson(),
        "type": type.toJson(),
        "updatedAt": updatedAt.toJson(),
        "relatedDbl": relatedDbl.toJson(),
        "audioBibles": audioBibles == null ? null : audioBibles.toJson(),
    };
}

class Abbreviation {
    Abbreviation({
        this.type,
    });

    AbbreviationType type;

    factory Abbreviation.fromJson(Map<String, dynamic> json) => Abbreviation(
        type: abbreviationTypeValues.map[json["type"]],
    );

    Map<String, dynamic> toJson() => {
        "type": abbreviationTypeValues.reverse[type],
    };
}

enum AbbreviationType { STRING, INTEGER }

final abbreviationTypeValues = EnumValues({
    "integer": AbbreviationType.INTEGER,
    "string": AbbreviationType.STRING
});

class AudioBibles {
    AudioBibles({
        this.type,
        this.items,
    });

    AudioBiblesType type;
    ItemsClass items;

    factory AudioBibles.fromJson(Map<String, dynamic> json) => AudioBibles(
        type: audioBiblesTypeValues.map[json["type"]],
        items: ItemsClass.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": audioBiblesTypeValues.reverse[type],
        "items": items.toJson(),
    };
}

class ItemsClass {
    ItemsClass({
        this.ref,
    });

    String ref;

    factory ItemsClass.fromJson(Map<String, dynamic> json) => ItemsClass(
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
    };
}

enum AudioBiblesType { ARRAY }

final audioBiblesTypeValues = EnumValues({
    "array": AudioBiblesType.ARRAY
});

class Countries {
    Countries({
        this.type,
        this.items,
    });

    AudioBiblesType type;
    CountriesItems items;

    factory Countries.fromJson(Map<String, dynamic> json) => Countries(
        type: audioBiblesTypeValues.map[json["type"]],
        items: CountriesItems.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": audioBiblesTypeValues.reverse[type],
        "items": items.toJson(),
    };
}

class CountriesItems {
    CountriesItems({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    PurpleProperties properties;

    factory CountriesItems.fromJson(Map<String, dynamic> json) => CountriesItems(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: PurpleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class PurpleProperties {
    PurpleProperties({
        this.id,
        this.name,
        this.nameLocal,
    });

    Abbreviation id;
    Abbreviation name;
    Abbreviation nameLocal;

    factory PurpleProperties.fromJson(Map<String, dynamic> json) => PurpleProperties(
        id: Abbreviation.fromJson(json["id"]),
        name: Abbreviation.fromJson(json["name"]),
        nameLocal: Abbreviation.fromJson(json["nameLocal"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "nameLocal": nameLocal.toJson(),
    };
}

class UpdatedAt {
    UpdatedAt({
        this.type,
        this.format,
    });

    AbbreviationType type;
    String format;

    factory UpdatedAt.fromJson(Map<String, dynamic> json) => UpdatedAt(
        type: abbreviationTypeValues.map[json["type"]],
        format: json["format"],
    );

    Map<String, dynamic> toJson() => {
        "type": abbreviationTypeValues.reverse[type],
        "format": format,
    };
}

class AudioBibleSummary {
    AudioBibleSummary({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    AudioBibleSummaryProperties properties;

    factory AudioBibleSummary.fromJson(Map<String, dynamic> json) => AudioBibleSummary(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: AudioBibleSummaryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class AudioBibleSummaryProperties {
    AudioBibleSummaryProperties({
        this.id,
        this.name,
        this.nameLocal,
        this.description,
        this.descriptionLocal,
    });

    Abbreviation id;
    Abbreviation name;
    Abbreviation nameLocal;
    Abbreviation description;
    Abbreviation descriptionLocal;

    factory AudioBibleSummaryProperties.fromJson(Map<String, dynamic> json) => AudioBibleSummaryProperties(
        id: Abbreviation.fromJson(json["id"]),
        name: Abbreviation.fromJson(json["name"]),
        nameLocal: Abbreviation.fromJson(json["nameLocal"]),
        description: Abbreviation.fromJson(json["description"]),
        descriptionLocal: Abbreviation.fromJson(json["descriptionLocal"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "nameLocal": nameLocal.toJson(),
        "description": description.toJson(),
        "descriptionLocal": descriptionLocal.toJson(),
    };
}

class AudioChapter {
    AudioChapter({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    AudioChapterProperties properties;

    factory AudioChapter.fromJson(Map<String, dynamic> json) => AudioChapter(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: AudioChapterProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class AudioChapterProperties {
    AudioChapterProperties({
        this.id,
        this.bibleId,
        this.number,
        this.bookId,
        this.resourceUrl,
        this.timecodes,
        this.expiresAt,
        this.reference,
        this.next,
        this.previous,
        this.copyright,
    });

    Abbreviation id;
    Abbreviation bibleId;
    Abbreviation number;
    Abbreviation bookId;
    Abbreviation resourceUrl;
    Timecodes timecodes;
    Abbreviation expiresAt;
    Abbreviation reference;
    PurpleNext next;
    PurpleNext previous;
    Abbreviation copyright;

    factory AudioChapterProperties.fromJson(Map<String, dynamic> json) => AudioChapterProperties(
        id: Abbreviation.fromJson(json["id"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        number: Abbreviation.fromJson(json["number"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        resourceUrl: Abbreviation.fromJson(json["resourceUrl"]),
        timecodes: Timecodes.fromJson(json["timecodes"]),
        expiresAt: Abbreviation.fromJson(json["expiresAt"]),
        reference: Abbreviation.fromJson(json["reference"]),
        next: PurpleNext.fromJson(json["next"]),
        previous: PurpleNext.fromJson(json["previous"]),
        copyright: Abbreviation.fromJson(json["copyright"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bibleId": bibleId.toJson(),
        "number": number.toJson(),
        "bookId": bookId.toJson(),
        "resourceUrl": resourceUrl.toJson(),
        "timecodes": timecodes.toJson(),
        "expiresAt": expiresAt.toJson(),
        "reference": reference.toJson(),
        "next": next.toJson(),
        "previous": previous.toJson(),
        "copyright": copyright.toJson(),
    };
}

class PurpleNext {
    PurpleNext({
        this.type,
        this.properties,
    });

    String type;
    FluffyProperties properties;

    factory PurpleNext.fromJson(Map<String, dynamic> json) => PurpleNext(
        type: json["type"],
        properties: FluffyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "properties": properties.toJson(),
    };
}

class FluffyProperties {
    FluffyProperties({
        this.id,
        this.bookId,
        this.number,
    });

    Abbreviation id;
    Abbreviation bookId;
    Abbreviation number;

    factory FluffyProperties.fromJson(Map<String, dynamic> json) => FluffyProperties(
        id: Abbreviation.fromJson(json["id"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        number: Abbreviation.fromJson(json["number"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bookId": bookId.toJson(),
        "number": number.toJson(),
    };
}

class Timecodes {
    Timecodes({
        this.type,
        this.items,
    });

    AudioBiblesType type;
    TimecodesItems items;

    factory Timecodes.fromJson(Map<String, dynamic> json) => Timecodes(
        type: audioBiblesTypeValues.map[json["type"]],
        items: TimecodesItems.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": audioBiblesTypeValues.reverse[type],
        "items": items.toJson(),
    };
}

class TimecodesItems {
    TimecodesItems({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    TentacledProperties properties;

    factory TimecodesItems.fromJson(Map<String, dynamic> json) => TimecodesItems(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: TentacledProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class TentacledProperties {
    TentacledProperties({
        this.end,
        this.start,
        this.verseId,
    });

    Abbreviation end;
    Abbreviation start;
    Abbreviation verseId;

    factory TentacledProperties.fromJson(Map<String, dynamic> json) => TentacledProperties(
        end: Abbreviation.fromJson(json["end"]),
        start: Abbreviation.fromJson(json["start"]),
        verseId: Abbreviation.fromJson(json["verseId"]),
    );

    Map<String, dynamic> toJson() => {
        "end": end.toJson(),
        "start": start.toJson(),
        "verseId": verseId.toJson(),
    };
}

class BibleClass {
    BibleClass({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    BibleProperties properties;

    factory BibleClass.fromJson(Map<String, dynamic> json) => BibleClass(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: BibleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class BibleProperties {
    BibleProperties({
        this.id,
        this.dblId,
        this.abbreviation,
        this.abbreviationLocal,
        this.copyright,
        this.language,
        this.countries,
        this.name,
        this.nameLocal,
        this.description,
        this.descriptionLocal,
        this.info,
        this.type,
        this.updatedAt,
        this.relatedDbl,
        this.audioBibles,
    });

    Abbreviation id;
    Abbreviation dblId;
    Abbreviation abbreviation;
    Abbreviation abbreviationLocal;
    Abbreviation copyright;
    PurpleLanguage language;
    Countries countries;
    Abbreviation name;
    Abbreviation nameLocal;
    Abbreviation description;
    Abbreviation descriptionLocal;
    Abbreviation info;
    Abbreviation type;
    UpdatedAt updatedAt;
    Abbreviation relatedDbl;
    AudioBibles audioBibles;

    factory BibleProperties.fromJson(Map<String, dynamic> json) => BibleProperties(
        id: Abbreviation.fromJson(json["id"]),
        dblId: Abbreviation.fromJson(json["dblId"]),
        abbreviation: Abbreviation.fromJson(json["abbreviation"]),
        abbreviationLocal: Abbreviation.fromJson(json["abbreviationLocal"]),
        copyright: Abbreviation.fromJson(json["copyright"]),
        language: PurpleLanguage.fromJson(json["language"]),
        countries: Countries.fromJson(json["countries"]),
        name: Abbreviation.fromJson(json["name"]),
        nameLocal: Abbreviation.fromJson(json["nameLocal"]),
        description: Abbreviation.fromJson(json["description"]),
        descriptionLocal: Abbreviation.fromJson(json["descriptionLocal"]),
        info: Abbreviation.fromJson(json["info"]),
        type: Abbreviation.fromJson(json["type"]),
        updatedAt: UpdatedAt.fromJson(json["updatedAt"]),
        relatedDbl: Abbreviation.fromJson(json["relatedDbl"]),
        audioBibles: AudioBibles.fromJson(json["audioBibles"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "dblId": dblId.toJson(),
        "abbreviation": abbreviation.toJson(),
        "abbreviationLocal": abbreviationLocal.toJson(),
        "copyright": copyright.toJson(),
        "language": language.toJson(),
        "countries": countries.toJson(),
        "name": name.toJson(),
        "nameLocal": nameLocal.toJson(),
        "description": description.toJson(),
        "descriptionLocal": descriptionLocal.toJson(),
        "info": info.toJson(),
        "type": type.toJson(),
        "updatedAt": updatedAt.toJson(),
        "relatedDbl": relatedDbl.toJson(),
        "audioBibles": audioBibles.toJson(),
    };
}

class PurpleLanguage {
    PurpleLanguage({
        this.ref,
        this.properties,
    });

    String ref;
    LanguageProperties properties;

    factory PurpleLanguage.fromJson(Map<String, dynamic> json) => PurpleLanguage(
        ref: json["\u0024ref"],
        properties: LanguageProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
        "properties": properties.toJson(),
    };
}

class LanguageProperties {
    LanguageProperties({
        this.id,
        this.name,
        this.nameLocal,
        this.script,
        this.scriptDirection,
    });

    Abbreviation id;
    Abbreviation name;
    Abbreviation nameLocal;
    Abbreviation script;
    Abbreviation scriptDirection;

    factory LanguageProperties.fromJson(Map<String, dynamic> json) => LanguageProperties(
        id: Abbreviation.fromJson(json["id"]),
        name: Abbreviation.fromJson(json["name"]),
        nameLocal: Abbreviation.fromJson(json["nameLocal"]),
        script: Abbreviation.fromJson(json["script"]),
        scriptDirection: Abbreviation.fromJson(json["scriptDirection"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "name": name.toJson(),
        "nameLocal": nameLocal.toJson(),
        "script": script.toJson(),
        "scriptDirection": scriptDirection.toJson(),
    };
}

class Book {
    Book({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    BookProperties properties;

    factory Book.fromJson(Map<String, dynamic> json) => Book(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: BookProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class BookProperties {
    BookProperties({
        this.id,
        this.bibleId,
        this.abbreviation,
        this.name,
        this.nameLong,
        this.chapters,
    });

    Abbreviation id;
    Abbreviation bibleId;
    Abbreviation abbreviation;
    Abbreviation name;
    Abbreviation nameLong;
    AudioBibles chapters;

    factory BookProperties.fromJson(Map<String, dynamic> json) => BookProperties(
        id: Abbreviation.fromJson(json["id"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        abbreviation: Abbreviation.fromJson(json["abbreviation"]),
        name: Abbreviation.fromJson(json["name"]),
        nameLong: Abbreviation.fromJson(json["nameLong"]),
        chapters: AudioBibles.fromJson(json["chapters"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bibleId": bibleId.toJson(),
        "abbreviation": abbreviation.toJson(),
        "name": name.toJson(),
        "nameLong": nameLong.toJson(),
        "chapters": chapters.toJson(),
    };
}

class Chapter {
    Chapter({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    ChapterProperties properties;

    factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: ChapterProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class ChapterProperties {
    ChapterProperties({
        this.id,
        this.bibleId,
        this.number,
        this.bookId,
        this.content,
        this.reference,
        this.verseCount,
        this.next,
        this.previous,
        this.copyright,
    });

    Abbreviation id;
    Abbreviation bibleId;
    Abbreviation number;
    Abbreviation bookId;
    Abbreviation content;
    Abbreviation reference;
    Abbreviation verseCount;
    PurpleNext next;
    PurpleNext previous;
    Abbreviation copyright;

    factory ChapterProperties.fromJson(Map<String, dynamic> json) => ChapterProperties(
        id: Abbreviation.fromJson(json["id"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        number: Abbreviation.fromJson(json["number"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        content: Abbreviation.fromJson(json["content"]),
        reference: Abbreviation.fromJson(json["reference"]),
        verseCount: Abbreviation.fromJson(json["verseCount"]),
        next: PurpleNext.fromJson(json["next"]),
        previous: PurpleNext.fromJson(json["previous"]),
        copyright: Abbreviation.fromJson(json["copyright"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bibleId": bibleId.toJson(),
        "number": number.toJson(),
        "bookId": bookId.toJson(),
        "content": content.toJson(),
        "reference": reference.toJson(),
        "verseCount": verseCount.toJson(),
        "next": next.toJson(),
        "previous": previous.toJson(),
        "copyright": copyright.toJson(),
    };
}

class ChapterSummary {
    ChapterSummary({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    ChapterSummaryProperties properties;

    factory ChapterSummary.fromJson(Map<String, dynamic> json) => ChapterSummary(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: ChapterSummaryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class ChapterSummaryProperties {
    ChapterSummaryProperties({
        this.id,
        this.bibleId,
        this.number,
        this.bookId,
        this.reference,
    });

    Abbreviation id;
    Abbreviation bibleId;
    Abbreviation number;
    Abbreviation bookId;
    Abbreviation reference;

    factory ChapterSummaryProperties.fromJson(Map<String, dynamic> json) => ChapterSummaryProperties(
        id: Abbreviation.fromJson(json["id"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        number: Abbreviation.fromJson(json["number"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        reference: Abbreviation.fromJson(json["reference"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bibleId": bibleId.toJson(),
        "number": number.toJson(),
        "bookId": bookId.toJson(),
        "reference": reference.toJson(),
    };
}

class Language {
    Language({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    LanguageProperties properties;

    factory Language.fromJson(Map<String, dynamic> json) => Language(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: LanguageProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class Meta {
    Meta({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    MetaProperties properties;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: MetaProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class MetaProperties {
    MetaProperties({
        this.fums,
        this.fumsId,
        this.fumsJsInclude,
        this.fumsJs,
        this.fumsNoScript,
    });

    Abbreviation fums;
    Abbreviation fumsId;
    Abbreviation fumsJsInclude;
    Abbreviation fumsJs;
    Abbreviation fumsNoScript;

    factory MetaProperties.fromJson(Map<String, dynamic> json) => MetaProperties(
        fums: Abbreviation.fromJson(json["fums"]),
        fumsId: Abbreviation.fromJson(json["fumsId"]),
        fumsJsInclude: Abbreviation.fromJson(json["fumsJsInclude"]),
        fumsJs: Abbreviation.fromJson(json["fumsJs"]),
        fumsNoScript: Abbreviation.fromJson(json["fumsNoScript"]),
    );

    Map<String, dynamic> toJson() => {
        "fums": fums.toJson(),
        "fumsId": fumsId.toJson(),
        "fumsJsInclude": fumsJsInclude.toJson(),
        "fumsJs": fumsJs.toJson(),
        "fumsNoScript": fumsNoScript.toJson(),
    };
}

class Passage {
    Passage({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    PassageProperties properties;

    factory Passage.fromJson(Map<String, dynamic> json) => Passage(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: PassageProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class PassageProperties {
    PassageProperties({
        this.id,
        this.bibleId,
        this.orgId,
        this.content,
        this.reference,
        this.verseCount,
        this.copyright,
    });

    Abbreviation id;
    Abbreviation bibleId;
    Abbreviation orgId;
    Abbreviation content;
    Abbreviation reference;
    Abbreviation verseCount;
    Abbreviation copyright;

    factory PassageProperties.fromJson(Map<String, dynamic> json) => PassageProperties(
        id: Abbreviation.fromJson(json["id"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        orgId: Abbreviation.fromJson(json["orgId"]),
        content: Abbreviation.fromJson(json["content"]),
        reference: Abbreviation.fromJson(json["reference"]),
        verseCount: Abbreviation.fromJson(json["verseCount"]),
        copyright: Abbreviation.fromJson(json["copyright"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bibleId": bibleId.toJson(),
        "orgId": orgId.toJson(),
        "content": content.toJson(),
        "reference": reference.toJson(),
        "verseCount": verseCount.toJson(),
        "copyright": copyright.toJson(),
    };
}

class SearchResponse {
    SearchResponse({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    SearchResponseProperties properties;

    factory SearchResponse.fromJson(Map<String, dynamic> json) => SearchResponse(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: SearchResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class SearchResponseProperties {
    SearchResponseProperties({
        this.query,
        this.limit,
        this.offset,
        this.total,
        this.verseCount,
        this.verses,
        this.passages,
    });

    Abbreviation query;
    Abbreviation limit;
    Abbreviation offset;
    Abbreviation total;
    Abbreviation verseCount;
    AudioBibles verses;
    AudioBibles passages;

    factory SearchResponseProperties.fromJson(Map<String, dynamic> json) => SearchResponseProperties(
        query: Abbreviation.fromJson(json["query"]),
        limit: Abbreviation.fromJson(json["limit"]),
        offset: Abbreviation.fromJson(json["offset"]),
        total: Abbreviation.fromJson(json["total"]),
        verseCount: Abbreviation.fromJson(json["verseCount"]),
        verses: AudioBibles.fromJson(json["verses"]),
        passages: AudioBibles.fromJson(json["passages"]),
    );

    Map<String, dynamic> toJson() => {
        "query": query.toJson(),
        "limit": limit.toJson(),
        "offset": offset.toJson(),
        "total": total.toJson(),
        "verseCount": verseCount.toJson(),
        "verses": verses.toJson(),
        "passages": passages.toJson(),
    };
}

class SearchVerse {
    SearchVerse({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    SearchVerseProperties properties;

    factory SearchVerse.fromJson(Map<String, dynamic> json) => SearchVerse(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: SearchVerseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class SearchVerseProperties {
    SearchVerseProperties({
        this.id,
        this.orgId,
        this.bibleId,
        this.bookId,
        this.chapterId,
        this.text,
        this.reference,
    });

    Abbreviation id;
    Abbreviation orgId;
    Abbreviation bibleId;
    Abbreviation bookId;
    Abbreviation chapterId;
    Abbreviation text;
    Abbreviation reference;

    factory SearchVerseProperties.fromJson(Map<String, dynamic> json) => SearchVerseProperties(
        id: Abbreviation.fromJson(json["id"]),
        orgId: Abbreviation.fromJson(json["orgId"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        chapterId: Abbreviation.fromJson(json["chapterId"]),
        text: json["text"] == null ? null : Abbreviation.fromJson(json["text"]),
        reference: Abbreviation.fromJson(json["reference"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "orgId": orgId.toJson(),
        "bibleId": bibleId.toJson(),
        "bookId": bookId.toJson(),
        "chapterId": chapterId.toJson(),
        "text": text == null ? null : text.toJson(),
        "reference": reference.toJson(),
    };
}

class Section {
    Section({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    SectionProperties properties;

    factory Section.fromJson(Map<String, dynamic> json) => Section(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: SectionProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class SectionProperties {
    SectionProperties({
        this.id,
        this.bibleId,
        this.bookId,
        this.chapterId,
        this.title,
        this.content,
        this.verseCount,
        this.firstVerseId,
        this.lastVerseId,
        this.firstVerseOrgId,
        this.lastVerseOrgId,
        this.copyright,
        this.next,
        this.previous,
    });

    Abbreviation id;
    Abbreviation bibleId;
    Abbreviation bookId;
    Abbreviation chapterId;
    Abbreviation title;
    Abbreviation content;
    Abbreviation verseCount;
    Abbreviation firstVerseId;
    Abbreviation lastVerseId;
    Abbreviation firstVerseOrgId;
    Abbreviation lastVerseOrgId;
    Abbreviation copyright;
    FluffyNext next;
    FluffyNext previous;

    factory SectionProperties.fromJson(Map<String, dynamic> json) => SectionProperties(
        id: Abbreviation.fromJson(json["id"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        chapterId: Abbreviation.fromJson(json["chapterId"]),
        title: Abbreviation.fromJson(json["title"]),
        content: Abbreviation.fromJson(json["content"]),
        verseCount: Abbreviation.fromJson(json["verseCount"]),
        firstVerseId: Abbreviation.fromJson(json["firstVerseId"]),
        lastVerseId: Abbreviation.fromJson(json["lastVerseId"]),
        firstVerseOrgId: Abbreviation.fromJson(json["firstVerseOrgId"]),
        lastVerseOrgId: Abbreviation.fromJson(json["lastVerseOrgId"]),
        copyright: Abbreviation.fromJson(json["copyright"]),
        next: FluffyNext.fromJson(json["next"]),
        previous: FluffyNext.fromJson(json["previous"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bibleId": bibleId.toJson(),
        "bookId": bookId.toJson(),
        "chapterId": chapterId.toJson(),
        "title": title.toJson(),
        "content": content.toJson(),
        "verseCount": verseCount.toJson(),
        "firstVerseId": firstVerseId.toJson(),
        "lastVerseId": lastVerseId.toJson(),
        "firstVerseOrgId": firstVerseOrgId.toJson(),
        "lastVerseOrgId": lastVerseOrgId.toJson(),
        "copyright": copyright.toJson(),
        "next": next.toJson(),
        "previous": previous.toJson(),
    };
}

class FluffyNext {
    FluffyNext({
        this.type,
        this.properties,
    });

    String type;
    StickyProperties properties;

    factory FluffyNext.fromJson(Map<String, dynamic> json) => FluffyNext(
        type: json["type"],
        properties: StickyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "properties": properties.toJson(),
    };
}

class StickyProperties {
    StickyProperties({
        this.id,
        this.title,
    });

    Abbreviation id;
    Abbreviation title;

    factory StickyProperties.fromJson(Map<String, dynamic> json) => StickyProperties(
        id: Abbreviation.fromJson(json["id"]),
        title: Abbreviation.fromJson(json["title"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "title": title.toJson(),
    };
}

class SectionSummary {
    SectionSummary({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    SectionSummaryProperties properties;

    factory SectionSummary.fromJson(Map<String, dynamic> json) => SectionSummary(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: SectionSummaryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class SectionSummaryProperties {
    SectionSummaryProperties({
        this.id,
        this.bibleId,
        this.bookId,
        this.title,
        this.firstVerseId,
        this.lastVerseId,
        this.firstVerseOrgId,
        this.lastVerseOrgId,
    });

    Abbreviation id;
    Abbreviation bibleId;
    Abbreviation bookId;
    Abbreviation title;
    Abbreviation firstVerseId;
    Abbreviation lastVerseId;
    Abbreviation firstVerseOrgId;
    Abbreviation lastVerseOrgId;

    factory SectionSummaryProperties.fromJson(Map<String, dynamic> json) => SectionSummaryProperties(
        id: Abbreviation.fromJson(json["id"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        title: Abbreviation.fromJson(json["title"]),
        firstVerseId: Abbreviation.fromJson(json["firstVerseId"]),
        lastVerseId: Abbreviation.fromJson(json["lastVerseId"]),
        firstVerseOrgId: Abbreviation.fromJson(json["firstVerseOrgId"]),
        lastVerseOrgId: Abbreviation.fromJson(json["lastVerseOrgId"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bibleId": bibleId.toJson(),
        "bookId": bookId.toJson(),
        "title": title.toJson(),
        "firstVerseId": firstVerseId.toJson(),
        "lastVerseId": lastVerseId.toJson(),
        "firstVerseOrgId": firstVerseOrgId.toJson(),
        "lastVerseOrgId": lastVerseOrgId.toJson(),
    };
}

class Verse {
    Verse({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<String> required;
    VerseProperties properties;

    factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        type: json["type"],
        required: List<String>.from(json["required"].map((x) => x)),
        properties: VerseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => x)),
        "properties": properties.toJson(),
    };
}

class VerseProperties {
    VerseProperties({
        this.id,
        this.orgId,
        this.bibleId,
        this.bookId,
        this.chapterId,
        this.content,
        this.reference,
        this.verseCount,
        this.copyright,
        this.next,
        this.previous,
    });

    Abbreviation id;
    Abbreviation orgId;
    Abbreviation bibleId;
    Abbreviation bookId;
    Abbreviation chapterId;
    Abbreviation content;
    Abbreviation reference;
    Abbreviation verseCount;
    Abbreviation copyright;
    TentacledNext next;
    TentacledNext previous;

    factory VerseProperties.fromJson(Map<String, dynamic> json) => VerseProperties(
        id: Abbreviation.fromJson(json["id"]),
        orgId: Abbreviation.fromJson(json["orgId"]),
        bibleId: Abbreviation.fromJson(json["bibleId"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
        chapterId: Abbreviation.fromJson(json["chapterId"]),
        content: Abbreviation.fromJson(json["content"]),
        reference: Abbreviation.fromJson(json["reference"]),
        verseCount: Abbreviation.fromJson(json["verseCount"]),
        copyright: Abbreviation.fromJson(json["copyright"]),
        next: TentacledNext.fromJson(json["next"]),
        previous: TentacledNext.fromJson(json["previous"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "orgId": orgId.toJson(),
        "bibleId": bibleId.toJson(),
        "bookId": bookId.toJson(),
        "chapterId": chapterId.toJson(),
        "content": content.toJson(),
        "reference": reference.toJson(),
        "verseCount": verseCount.toJson(),
        "copyright": copyright.toJson(),
        "next": next.toJson(),
        "previous": previous.toJson(),
    };
}

class TentacledNext {
    TentacledNext({
        this.type,
        this.properties,
    });

    String type;
    IndigoProperties properties;

    factory TentacledNext.fromJson(Map<String, dynamic> json) => TentacledNext(
        type: json["type"],
        properties: IndigoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "properties": properties.toJson(),
    };
}

class IndigoProperties {
    IndigoProperties({
        this.id,
        this.bookId,
    });

    Abbreviation id;
    Abbreviation bookId;

    factory IndigoProperties.fromJson(Map<String, dynamic> json) => IndigoProperties(
        id: Abbreviation.fromJson(json["id"]),
        bookId: Abbreviation.fromJson(json["bookId"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id.toJson(),
        "bookId": bookId.toJson(),
    };
}

class Info {
    Info({
        this.title,
        this.version,
        this.contact,
        this.description,
        this.termsOfService,
    });

    String title;
    String version;
    Contact contact;
    String description;
    String termsOfService;

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        title: json["title"],
        version: json["version"],
        contact: Contact.fromJson(json["contact"]),
        description: json["description"],
        termsOfService: json["termsOfService"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "version": version,
        "contact": contact.toJson(),
        "description": description,
        "termsOfService": termsOfService,
    };
}

class Contact {
    Contact({
        this.name,
    });

    String name;

    factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}

class Parameters {
    Parameters({
        this.includeChapters,
        this.includeChaptersAndSections,
        this.parallels,
        this.contentType,
        this.footnotes,
        this.sectionTitles,
        this.chapterNumbers,
        this.verseSpans,
        this.verseNumbers,
        this.useOrgId,
    });

    ChapterNumbers includeChapters;
    ChapterNumbers includeChaptersAndSections;
    ChapterNumbers parallels;
    ContentType contentType;
    ChapterNumbers footnotes;
    ChapterNumbers sectionTitles;
    ChapterNumbers chapterNumbers;
    ChapterNumbers verseSpans;
    ChapterNumbers verseNumbers;
    ChapterNumbers useOrgId;

    factory Parameters.fromJson(Map<String, dynamic> json) => Parameters(
        includeChapters: ChapterNumbers.fromJson(json["includeChapters"]),
        includeChaptersAndSections: ChapterNumbers.fromJson(json["includeChaptersAndSections"]),
        parallels: ChapterNumbers.fromJson(json["parallels"]),
        contentType: ContentType.fromJson(json["contentType"]),
        footnotes: ChapterNumbers.fromJson(json["footnotes"]),
        sectionTitles: ChapterNumbers.fromJson(json["sectionTitles"]),
        chapterNumbers: ChapterNumbers.fromJson(json["chapterNumbers"]),
        verseSpans: ChapterNumbers.fromJson(json["verseSpans"]),
        verseNumbers: ChapterNumbers.fromJson(json["verseNumbers"]),
        useOrgId: ChapterNumbers.fromJson(json["useOrgId"]),
    );

    Map<String, dynamic> toJson() => {
        "includeChapters": includeChapters.toJson(),
        "includeChaptersAndSections": includeChaptersAndSections.toJson(),
        "parallels": parallels.toJson(),
        "contentType": contentType.toJson(),
        "footnotes": footnotes.toJson(),
        "sectionTitles": sectionTitles.toJson(),
        "chapterNumbers": chapterNumbers.toJson(),
        "verseSpans": verseSpans.toJson(),
        "verseNumbers": verseNumbers.toJson(),
        "useOrgId": useOrgId.toJson(),
    };
}

class ChapterNumbers {
    ChapterNumbers({
        this.chapterNumbersIn,
        this.name,
        this.required,
        this.type,
        this.description,
        this.chapterNumbersDefault,
        this.ref,
    });

    In chapterNumbersIn;
    String name;
    bool required;
    ChapterNumbersType type;
    String description;
    bool chapterNumbersDefault;
    String ref;

    factory ChapterNumbers.fromJson(Map<String, dynamic> json) => ChapterNumbers(
        chapterNumbersIn: json["in"] == null ? null : inValues.map[json["in"]],
        name: json["name"] == null ? null : json["name"],
        required: json["required"] == null ? null : json["required"],
        type: json["type"] == null ? null : chapterNumbersTypeValues.map[json["type"]],
        description: json["description"] == null ? null : json["description"],
        chapterNumbersDefault: json["default"] == null ? null : json["default"],
        ref: json["\u0024ref"] == null ? null : json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "in": chapterNumbersIn == null ? null : inValues.reverse[chapterNumbersIn],
        "name": name == null ? null : name,
        "required": required == null ? null : required,
        "type": type == null ? null : chapterNumbersTypeValues.reverse[type],
        "description": description == null ? null : description,
        "default": chapterNumbersDefault == null ? null : chapterNumbersDefault,
        "\u0024ref": ref == null ? null : ref,
    };
}

enum In { QUERY, PATH }

final inValues = EnumValues({
    "path": In.PATH,
    "query": In.QUERY
});

enum ChapterNumbersType { BOOLEAN, STRING }

final chapterNumbersTypeValues = EnumValues({
    "boolean": ChapterNumbersType.BOOLEAN,
    "string": ChapterNumbersType.STRING
});

class ContentType {
    ContentType({
        this.contentTypeIn,
        this.name,
        this.required,
        this.type,
        this.contentTypeEnum,
        this.description,
        this.contentTypeDefault,
    });

    In contentTypeIn;
    String name;
    bool required;
    AbbreviationType type;
    List<String> contentTypeEnum;
    String description;
    String contentTypeDefault;

    factory ContentType.fromJson(Map<String, dynamic> json) => ContentType(
        contentTypeIn: inValues.map[json["in"]],
        name: json["name"],
        required: json["required"],
        type: abbreviationTypeValues.map[json["type"]],
        contentTypeEnum: json["enum"] == null ? null : List<String>.from(json["enum"].map((x) => x)),
        description: json["description"],
        contentTypeDefault: json["default"] == null ? null : json["default"],
    );

    Map<String, dynamic> toJson() => {
        "in": inValues.reverse[contentTypeIn],
        "name": name,
        "required": required,
        "type": abbreviationTypeValues.reverse[type],
        "enum": contentTypeEnum == null ? null : List<dynamic>.from(contentTypeEnum.map((x) => x)),
        "description": description,
        "default": contentTypeDefault == null ? null : contentTypeDefault,
    };
}

class Paths {
    Paths({
        this.v1Bibles,
        this.v1BiblesBibleId,
        this.v1BiblesBibleIdBooks,
        this.v1BiblesBibleIdBooksBookId,
        this.v1BiblesBibleIdBooksBookIdChapters,
        this.v1BiblesBibleIdChaptersChapterId,
        this.v1BiblesBibleIdPassagesPassageId,
        this.v1BiblesBibleIdBooksBookIdSections,
        this.v1BiblesBibleIdChaptersChapterIdSections,
        this.v1BiblesBibleIdSectionsSectionId,
        this.v1BiblesBibleIdChaptersChapterIdVerses,
        this.v1BiblesBibleIdVersesVerseId,
        this.v1BiblesBibleIdSearch,
        this.v1AudioBibles,
        this.v1AudioBiblesAudioBibleId,
        this.v1AudioBiblesAudioBibleIdBooks,
        this.v1AudioBiblesAudioBibleIdBooksBookId,
        this.v1AudioBiblesAudioBibleIdBooksBookIdChapters,
        this.v1AudioBiblesAudioBibleIdChaptersChapterId,
    });

    V1 v1Bibles;
    V1AudioBiblesAudioBibleIdClass v1BiblesBibleId;
    V1 v1BiblesBibleIdBooks;
    V1AudioBiblesAudioBibleIdClass v1BiblesBibleIdBooksBookId;
    V1 v1BiblesBibleIdBooksBookIdChapters;
    V1AudioBiblesAudioBibleIdChaptersChapterIdClass v1BiblesBibleIdChaptersChapterId;
    V1AudioBiblesAudioBibleIdChaptersChapterIdClass v1BiblesBibleIdPassagesPassageId;
    V1 v1BiblesBibleIdBooksBookIdSections;
    V1 v1BiblesBibleIdChaptersChapterIdSections;
    V1AudioBiblesAudioBibleIdChaptersChapterIdClass v1BiblesBibleIdSectionsSectionId;
    V1 v1BiblesBibleIdChaptersChapterIdVerses;
    V1AudioBiblesAudioBibleIdChaptersChapterIdClass v1BiblesBibleIdVersesVerseId;
    V1BiblesBibleIdSearch v1BiblesBibleIdSearch;
    V1 v1AudioBibles;
    V1AudioBiblesAudioBibleIdClass v1AudioBiblesAudioBibleId;
    V1 v1AudioBiblesAudioBibleIdBooks;
    V1AudioBiblesAudioBibleIdClass v1AudioBiblesAudioBibleIdBooksBookId;
    V1 v1AudioBiblesAudioBibleIdBooksBookIdChapters;
    V1AudioBiblesAudioBibleIdChaptersChapterIdClass v1AudioBiblesAudioBibleIdChaptersChapterId;

    factory Paths.fromJson(Map<String, dynamic> json) => Paths(
        v1Bibles: V1.fromJson(json["/v1/bibles"]),
        v1BiblesBibleId: V1AudioBiblesAudioBibleIdClass.fromJson(json["/v1/bibles/{bibleId}"]),
        v1BiblesBibleIdBooks: V1.fromJson(json["/v1/bibles/{bibleId}/books"]),
        v1BiblesBibleIdBooksBookId: V1AudioBiblesAudioBibleIdClass.fromJson(json["/v1/bibles/{bibleId}/books/{bookId}"]),
        v1BiblesBibleIdBooksBookIdChapters: V1.fromJson(json["/v1/bibles/{bibleId}/books/{bookId}/chapters"]),
        v1BiblesBibleIdChaptersChapterId: V1AudioBiblesAudioBibleIdChaptersChapterIdClass.fromJson(json["/v1/bibles/{bibleId}/chapters/{chapterId}"]),
        v1BiblesBibleIdPassagesPassageId: V1AudioBiblesAudioBibleIdChaptersChapterIdClass.fromJson(json["/v1/bibles/{bibleId}/passages/{passageId}"]),
        v1BiblesBibleIdBooksBookIdSections: V1.fromJson(json["/v1/bibles/{bibleId}/books/{bookId}/sections"]),
        v1BiblesBibleIdChaptersChapterIdSections: V1.fromJson(json["/v1/bibles/{bibleId}/chapters/{chapterId}/sections"]),
        v1BiblesBibleIdSectionsSectionId: V1AudioBiblesAudioBibleIdChaptersChapterIdClass.fromJson(json["/v1/bibles/{bibleId}/sections/{sectionId}"]),
        v1BiblesBibleIdChaptersChapterIdVerses: V1.fromJson(json["/v1/bibles/{bibleId}/chapters/{chapterId}/verses"]),
        v1BiblesBibleIdVersesVerseId: V1AudioBiblesAudioBibleIdChaptersChapterIdClass.fromJson(json["/v1/bibles/{bibleId}/verses/{verseId}"]),
        v1BiblesBibleIdSearch: V1BiblesBibleIdSearch.fromJson(json["/v1/bibles/{bibleId}/search"]),
        v1AudioBibles: V1.fromJson(json["/v1/audio-bibles"]),
        v1AudioBiblesAudioBibleId: V1AudioBiblesAudioBibleIdClass.fromJson(json["/v1/audio-bibles/{audioBibleId}"]),
        v1AudioBiblesAudioBibleIdBooks: V1.fromJson(json["/v1/audio-bibles/{audioBibleId}/books"]),
        v1AudioBiblesAudioBibleIdBooksBookId: V1AudioBiblesAudioBibleIdClass.fromJson(json["/v1/audio-bibles/{audioBibleId}/books/{bookId}"]),
        v1AudioBiblesAudioBibleIdBooksBookIdChapters: V1.fromJson(json["/v1/audio-bibles/{audioBibleId}/books/{bookId}/chapters"]),
        v1AudioBiblesAudioBibleIdChaptersChapterId: V1AudioBiblesAudioBibleIdChaptersChapterIdClass.fromJson(json["/v1/audio-bibles/{audioBibleId}/chapters/{chapterId}"]),
    );

    Map<String, dynamic> toJson() => {
        "/v1/bibles": v1Bibles.toJson(),
        "/v1/bibles/{bibleId}": v1BiblesBibleId.toJson(),
        "/v1/bibles/{bibleId}/books": v1BiblesBibleIdBooks.toJson(),
        "/v1/bibles/{bibleId}/books/{bookId}": v1BiblesBibleIdBooksBookId.toJson(),
        "/v1/bibles/{bibleId}/books/{bookId}/chapters": v1BiblesBibleIdBooksBookIdChapters.toJson(),
        "/v1/bibles/{bibleId}/chapters/{chapterId}": v1BiblesBibleIdChaptersChapterId.toJson(),
        "/v1/bibles/{bibleId}/passages/{passageId}": v1BiblesBibleIdPassagesPassageId.toJson(),
        "/v1/bibles/{bibleId}/books/{bookId}/sections": v1BiblesBibleIdBooksBookIdSections.toJson(),
        "/v1/bibles/{bibleId}/chapters/{chapterId}/sections": v1BiblesBibleIdChaptersChapterIdSections.toJson(),
        "/v1/bibles/{bibleId}/sections/{sectionId}": v1BiblesBibleIdSectionsSectionId.toJson(),
        "/v1/bibles/{bibleId}/chapters/{chapterId}/verses": v1BiblesBibleIdChaptersChapterIdVerses.toJson(),
        "/v1/bibles/{bibleId}/verses/{verseId}": v1BiblesBibleIdVersesVerseId.toJson(),
        "/v1/bibles/{bibleId}/search": v1BiblesBibleIdSearch.toJson(),
        "/v1/audio-bibles": v1AudioBibles.toJson(),
        "/v1/audio-bibles/{audioBibleId}": v1AudioBiblesAudioBibleId.toJson(),
        "/v1/audio-bibles/{audioBibleId}/books": v1AudioBiblesAudioBibleIdBooks.toJson(),
        "/v1/audio-bibles/{audioBibleId}/books/{bookId}": v1AudioBiblesAudioBibleIdBooksBookId.toJson(),
        "/v1/audio-bibles/{audioBibleId}/books/{bookId}/chapters": v1AudioBiblesAudioBibleIdBooksBookIdChapters.toJson(),
        "/v1/audio-bibles/{audioBibleId}/chapters/{chapterId}": v1AudioBiblesAudioBibleIdChaptersChapterId.toJson(),
    };
}

class V1 {
    V1({
        this.v1Get,
    });

    V1AudioBiblesGet v1Get;

    factory V1.fromJson(Map<String, dynamic> json) => V1(
        v1Get: V1AudioBiblesGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1Get.toJson(),
    };
}

class V1AudioBiblesGet {
    V1AudioBiblesGet({
        this.operationId,
        this.tags,
        this.description,
        this.parameters,
        this.responses,
    });

    String operationId;
    List<String> tags;
    String description;
    List<ChapterNumbers> parameters;
    Map<String, PurpleResponse> responses;

    factory V1AudioBiblesGet.fromJson(Map<String, dynamic> json) => V1AudioBiblesGet(
        operationId: json["operationId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        description: json["description"],
        parameters: List<ChapterNumbers>.from(json["parameters"].map((x) => ChapterNumbers.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "operationId": operationId,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "description": description,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class PurpleResponse {
    PurpleResponse({
        this.description,
        this.schema,
    });

    String description;
    PurpleSchema schema;

    factory PurpleResponse.fromJson(Map<String, dynamic> json) => PurpleResponse(
        description: json["description"],
        schema: json["schema"] == null ? null : PurpleSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "schema": schema == null ? null : schema.toJson(),
    };
}

class PurpleSchema {
    PurpleSchema({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<Required> required;
    IndecentProperties properties;

    factory PurpleSchema.fromJson(Map<String, dynamic> json) => PurpleSchema(
        type: json["type"],
        required: List<Required>.from(json["required"].map((x) => requiredValues.map[x])),
        properties: IndecentProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => requiredValues.reverse[x])),
        "properties": properties.toJson(),
    };
}

class IndecentProperties {
    IndecentProperties({
        this.data,
    });

    AudioBibles data;

    factory IndecentProperties.fromJson(Map<String, dynamic> json) => IndecentProperties(
        data: AudioBibles.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

enum Required { DATA, META }

final requiredValues = EnumValues({
    "data": Required.DATA,
    "meta": Required.META
});

class V1AudioBiblesAudioBibleIdClass {
    V1AudioBiblesAudioBibleIdClass({
        this.v1IdGet,
    });

    V1AudioBiblesAudioBibleIdGet v1IdGet;

    factory V1AudioBiblesAudioBibleIdClass.fromJson(Map<String, dynamic> json) => V1AudioBiblesAudioBibleIdClass(
        v1IdGet: V1AudioBiblesAudioBibleIdGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1IdGet.toJson(),
    };
}

class V1AudioBiblesAudioBibleIdGet {
    V1AudioBiblesAudioBibleIdGet({
        this.operationId,
        this.tags,
        this.description,
        this.parameters,
        this.responses,
    });

    String operationId;
    List<String> tags;
    String description;
    List<ChapterNumbers> parameters;
    Map<String, FluffyResponse> responses;

    factory V1AudioBiblesAudioBibleIdGet.fromJson(Map<String, dynamic> json) => V1AudioBiblesAudioBibleIdGet(
        operationId: json["operationId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        description: json["description"],
        parameters: List<ChapterNumbers>.from(json["parameters"].map((x) => ChapterNumbers.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "operationId": operationId,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "description": description,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class FluffyResponse {
    FluffyResponse({
        this.description,
        this.schema,
    });

    String description;
    FluffySchema schema;

    factory FluffyResponse.fromJson(Map<String, dynamic> json) => FluffyResponse(
        description: json["description"],
        schema: json["schema"] == null ? null : FluffySchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "schema": schema == null ? null : schema.toJson(),
    };
}

class FluffySchema {
    FluffySchema({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<Required> required;
    HilariousProperties properties;

    factory FluffySchema.fromJson(Map<String, dynamic> json) => FluffySchema(
        type: json["type"],
        required: List<Required>.from(json["required"].map((x) => requiredValues.map[x])),
        properties: HilariousProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => requiredValues.reverse[x])),
        "properties": properties.toJson(),
    };
}

class HilariousProperties {
    HilariousProperties({
        this.data,
    });

    ItemsClass data;

    factory HilariousProperties.fromJson(Map<String, dynamic> json) => HilariousProperties(
        data: ItemsClass.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class V1AudioBiblesAudioBibleIdChaptersChapterIdClass {
    V1AudioBiblesAudioBibleIdChaptersChapterIdClass({
        this.v1IdGet,
    });

    V1AudioBiblesAudioBibleIdChaptersChapterIdGet v1IdGet;

    factory V1AudioBiblesAudioBibleIdChaptersChapterIdClass.fromJson(Map<String, dynamic> json) => V1AudioBiblesAudioBibleIdChaptersChapterIdClass(
        v1IdGet: V1AudioBiblesAudioBibleIdChaptersChapterIdGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1IdGet.toJson(),
    };
}

class V1AudioBiblesAudioBibleIdChaptersChapterIdGet {
    V1AudioBiblesAudioBibleIdChaptersChapterIdGet({
        this.operationId,
        this.tags,
        this.description,
        this.parameters,
        this.responses,
    });

    String operationId;
    List<String> tags;
    String description;
    List<ChapterNumbers> parameters;
    Map<String, TentacledResponse> responses;

    factory V1AudioBiblesAudioBibleIdChaptersChapterIdGet.fromJson(Map<String, dynamic> json) => V1AudioBiblesAudioBibleIdChaptersChapterIdGet(
        operationId: json["operationId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        description: json["description"],
        parameters: List<ChapterNumbers>.from(json["parameters"].map((x) => ChapterNumbers.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, TentacledResponse>(k, TentacledResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "operationId": operationId,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "description": description,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class TentacledResponse {
    TentacledResponse({
        this.description,
        this.schema,
    });

    String description;
    TentacledSchema schema;

    factory TentacledResponse.fromJson(Map<String, dynamic> json) => TentacledResponse(
        description: json["description"],
        schema: json["schema"] == null ? null : TentacledSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "schema": schema == null ? null : schema.toJson(),
    };
}

class TentacledSchema {
    TentacledSchema({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<Required> required;
    AmbitiousProperties properties;

    factory TentacledSchema.fromJson(Map<String, dynamic> json) => TentacledSchema(
        type: json["type"],
        required: List<Required>.from(json["required"].map((x) => requiredValues.map[x])),
        properties: AmbitiousProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => requiredValues.reverse[x])),
        "properties": properties.toJson(),
    };
}

class AmbitiousProperties {
    AmbitiousProperties({
        this.data,
        this.meta,
    });

    ItemsClass data;
    ItemsClass meta;

    factory AmbitiousProperties.fromJson(Map<String, dynamic> json) => AmbitiousProperties(
        data: ItemsClass.fromJson(json["data"]),
        meta: ItemsClass.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "meta": meta.toJson(),
    };
}

class V1BiblesBibleIdSearch {
    V1BiblesBibleIdSearch({
        this.v1BiblesBibleIdSearchGet,
    });

    V1BiblesBibleIdSearchGet v1BiblesBibleIdSearchGet;

    factory V1BiblesBibleIdSearch.fromJson(Map<String, dynamic> json) => V1BiblesBibleIdSearch(
        v1BiblesBibleIdSearchGet: V1BiblesBibleIdSearchGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": v1BiblesBibleIdSearchGet.toJson(),
    };
}

class V1BiblesBibleIdSearchGet {
    V1BiblesBibleIdSearchGet({
        this.operationId,
        this.tags,
        this.description,
        this.parameters,
        this.responses,
    });

    String operationId;
    List<String> tags;
    String description;
    List<ContentType> parameters;
    Map<String, StickyResponse> responses;

    factory V1BiblesBibleIdSearchGet.fromJson(Map<String, dynamic> json) => V1BiblesBibleIdSearchGet(
        operationId: json["operationId"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        description: json["description"],
        parameters: List<ContentType>.from(json["parameters"].map((x) => ContentType.fromJson(x))),
        responses: Map.from(json["responses"]).map((k, v) => MapEntry<String, StickyResponse>(k, StickyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "operationId": operationId,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "description": description,
        "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
        "responses": Map.from(responses).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class StickyResponse {
    StickyResponse({
        this.description,
        this.schema,
    });

    String description;
    StickySchema schema;

    factory StickyResponse.fromJson(Map<String, dynamic> json) => StickyResponse(
        description: json["description"],
        schema: json["schema"] == null ? null : StickySchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "schema": schema == null ? null : schema.toJson(),
    };
}

class StickySchema {
    StickySchema({
        this.type,
        this.required,
        this.properties,
    });

    String type;
    List<Required> required;
    CunningProperties properties;

    factory StickySchema.fromJson(Map<String, dynamic> json) => StickySchema(
        type: json["type"],
        required: List<Required>.from(json["required"].map((x) => requiredValues.map[x])),
        properties: CunningProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "required": List<dynamic>.from(required.map((x) => requiredValues.reverse[x])),
        "properties": properties.toJson(),
    };
}

class CunningProperties {
    CunningProperties({
        this.query,
        this.data,
        this.meta,
    });

    Abbreviation query;
    ItemsClass data;
    ItemsClass meta;

    factory CunningProperties.fromJson(Map<String, dynamic> json) => CunningProperties(
        query: Abbreviation.fromJson(json["query"]),
        data: ItemsClass.fromJson(json["data"]),
        meta: ItemsClass.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "query": query.toJson(),
        "data": data.toJson(),
        "meta": meta.toJson(),
    };
}

class Responses {
    Responses();

    factory Responses.fromJson(Map<String, dynamic> json) => Responses(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Security {
    Security({
        this.apiKeyAuth,
    });

    List<dynamic> apiKeyAuth;

    factory Security.fromJson(Map<String, dynamic> json) => Security(
        apiKeyAuth: List<dynamic>.from(json["ApiKeyAuth"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "ApiKeyAuth": List<dynamic>.from(apiKeyAuth.map((x) => x)),
    };
}

class SecurityDefinitions {
    SecurityDefinitions({
        this.apiKeyAuth,
    });

    ApiKeyAuth apiKeyAuth;

    factory SecurityDefinitions.fromJson(Map<String, dynamic> json) => SecurityDefinitions(
        apiKeyAuth: ApiKeyAuth.fromJson(json["ApiKeyAuth"]),
    );

    Map<String, dynamic> toJson() => {
        "ApiKeyAuth": apiKeyAuth.toJson(),
    };
}

class ApiKeyAuth {
    ApiKeyAuth({
        this.type,
        this.apiKeyAuthIn,
        this.name,
        this.xDataThreescaleName,
    });

    String type;
    String apiKeyAuthIn;
    String name;
    String xDataThreescaleName;

    factory ApiKeyAuth.fromJson(Map<String, dynamic> json) => ApiKeyAuth(
        type: json["type"],
        apiKeyAuthIn: json["in"],
        name: json["name"],
        xDataThreescaleName: json["x-data-threescale-name"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "in": apiKeyAuthIn,
        "name": name,
        "x-data-threescale-name": xDataThreescaleName,
    };
}

class Tag {
    Tag({
        this.name,
        this.description,
    });

    String name;
    String description;

    factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
