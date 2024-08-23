class TranslationsModel {
  String? kr;
  String? ptBR;
  String? pt;
  String? nl;
  String? hr;
  String? fa;
  String? de;
  String? es;
  String? fr;
  String? ja;
  String? it;
  String? cn;
  String? tr;

  TranslationsModel(
      {this.kr,
      this.ptBR,
      this.pt,
      this.nl,
      this.hr,
      this.fa,
      this.de,
      this.es,
      this.fr,
      this.ja,
      this.it,
      this.cn,
      this.tr});

  TranslationsModel.fromJson(Map<String, dynamic> json) {
    kr = json['kr'];
    ptBR = json['pt-BR'];
    pt = json['pt'];
    nl = json['nl'];
    hr = json['hr'];
    fa = json['fa'];
    de = json['de'];
    es = json['es'];
    fr = json['fr'];
    ja = json['ja'];
    it = json['it'];
    cn = json['cn'];
    tr = json['tr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kr'] = this.kr;
    data['pt-BR'] = this.ptBR;
    data['pt'] = this.pt;
    data['nl'] = this.nl;
    data['hr'] = this.hr;
    data['fa'] = this.fa;
    data['de'] = this.de;
    data['es'] = this.es;
    data['fr'] = this.fr;
    data['ja'] = this.ja;
    data['it'] = this.it;
    data['cn'] = this.cn;
    data['tr'] = this.tr;
    return data;
  }
}