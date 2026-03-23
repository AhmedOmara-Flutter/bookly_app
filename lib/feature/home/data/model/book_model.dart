// / author_key : ["OL124962A","OL5453611A","OL941299A","OL2850039A"]
// / author_name : ["Saint Ignatius of Loyola","Aloysio R.P Bellecio","Ignatius.","William, S.J. Reiser"]
// / cover_edition_key : "OL20062013M"
// / cover_i : 8027976
// / ebook_access : "public"
// / edition_count : 145
// / first_publish_year : 1548
// / has_fulltext : true
// / ia : ["TheSpiritualExercisesIgnatius","ExercitiaSPIgnatiiDeLoyola","TheSpiritualExercisesOfStIgnatius","a588350800loyouoft","meditationsignat00ignauoft","exercitiaspiritu00igna_0","spiritualexercis0000igna_v4z4","textofspirituale00ignauoft","manresaspiritual00ignauoft","spiritualexercis00ignauoft","spiritualexercis00igna_3","spiritualexercis0000igna_e2n0","spiritualexercis0000igna","spiritualexercis00ignarich","spiritualexercis0000igna_y1h3","spiritualexercis0000igna_a0p8","spiritualexercis0000igna_y6f9","spiritualexercis00igna_0"]
// / ia_collection : ["Boston_College_Library","Princeton","PrincetonRR","americana","belmont-ol","blc","catholictexts","claremont_school_of_theology","cua-ol","denverpubliclibrary-ol","folkscanomy","folkscanomy_miscellaneous","folkscanomy_religion","inlibrary","internetarchivebooks","jesuitica","kellylibrary","marygrovecollege","openlibrary-d-ol","printdisabled","riceuniversity-ol","rochester-ol","saint_marys_college","toronto","trent_university","university_of_toronto"]
// / key : "/works/OL1238284W"
// / language : ["mul","lat","ger","ita","spa","cat","eng","fre","cze"]
// / lending_edition_s : "OL26217030M"
// / lending_identifier_s : "TheSpiritualExercisesIgnatius"
// / public_scan_b : true
// / title : "Exercitia spiritualia"

class BookModel {
  BookModel({
      this.authorKey, 
      this.authorName, 
      this.coverEditionKey, 
      this.coverI, 
      this.ebookAccess, 
      this.editionCount, 
      this.firstPublishYear, 
      this.hasFulltext, 
      this.ia, 
      this.iaCollection, 
      this.key, 
      this.language, 
      this.lendingEditionS, 
      this.lendingIdentifierS, 
      this.publicScanB, 
      this.title,});

  BookModel.fromJson(dynamic json) {
    authorKey = json['author_key'] != null ? json['author_key'].cast<String>() : [];
    authorName = json['author_name'] != null ? json['author_name'].cast<String>() : [];
    coverEditionKey = json['cover_edition_key'];
    coverI = json['cover_i'];
    ebookAccess = json['ebook_access'];
    editionCount = json['edition_count'];
    firstPublishYear = json['first_publish_year'];
    hasFulltext = json['has_fulltext'];
    ia = json['ia'] != null ? json['ia'].cast<String>() : [];
    iaCollection = json['ia_collection'] != null ? json['ia_collection'].cast<String>() : [];
    key = json['key'];
    language = json['language'] != null ? json['language'].cast<String>() : [];
    lendingEditionS = json['lending_edition_s'];
    lendingIdentifierS = json['lending_identifier_s'];
    publicScanB = json['public_scan_b'];
    title = json['title'];
  }
  List<String>? authorKey;
  List<String>? authorName;
  String? coverEditionKey;
  num? coverI;
  String? ebookAccess;
  num? editionCount;
  num? firstPublishYear;
  bool? hasFulltext;
  List<String>? ia;
  List<String>? iaCollection;
  String? key;
  List<String>? language;
  String? lendingEditionS;
  String? lendingIdentifierS;
  bool? publicScanB;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['author_key'] = authorKey;
    map['author_name'] = authorName;
    map['cover_edition_key'] = coverEditionKey;
    map['cover_i'] = coverI;
    map['ebook_access'] = ebookAccess;
    map['edition_count'] = editionCount;
    map['first_publish_year'] = firstPublishYear;
    map['has_fulltext'] = hasFulltext;
    map['ia'] = ia;
    map['ia_collection'] = iaCollection;
    map['key'] = key;
    map['language'] = language;
    map['lending_edition_s'] = lendingEditionS;
    map['lending_identifier_s'] = lendingIdentifierS;
    map['public_scan_b'] = publicScanB;
    map['title'] = title;
    return map;
  }

}