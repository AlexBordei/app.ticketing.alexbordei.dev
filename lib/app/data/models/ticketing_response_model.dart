class TicketingResponse {
  int? id;
  String? date;
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;
  String? password;
  String? slug;
  String? status;
  String? type;
  String? link;
  Guid? title;
  Content? content;
  String? template;
  String? permalinkTemplate;
  String? generatedSlug;
  bool? emailSent;
  Acf? acf;
  Links? lLinks;

  TicketingResponse(
      {this.id,
      this.date,
      this.dateGmt,
      this.guid,
      this.modified,
      this.modifiedGmt,
      this.password,
      this.slug,
      this.status,
      this.type,
      this.link,
      this.title,
      this.content,
      this.template,
      this.permalinkTemplate,
      this.generatedSlug,
      this.emailSent,
      this.acf,
      this.lLinks});

  TicketingResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? Guid?.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    password = json['password'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? Guid?.fromJson(json['title']) : null;
    content =
        json['content'] != null ? Content?.fromJson(json['content']) : null;
    template = json['template'];
    permalinkTemplate = json['permalink_template'];
    generatedSlug = json['generated_slug'];
    emailSent = json['email_sent'];
    acf = json['acf'] != null ? Acf?.fromJson(json['acf']) : null;
    lLinks = json['_links'] != null ? Links?.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['date_gmt'] = dateGmt;
    if (guid != null) {
      data['guid'] = guid?.toJson();
    }
    data['modified'] = modified;
    data['modified_gmt'] = modifiedGmt;
    data['password'] = password;
    data['slug'] = slug;
    data['status'] = status;
    data['type'] = type;
    data['link'] = link;
    if (title != null) {
      data['title'] = title?.toJson();
    }
    if (content != null) {
      data['content'] = content?.toJson();
    }
    data['template'] = template;
    data['permalink_template'] = permalinkTemplate;
    data['generated_slug'] = generatedSlug;
    data['email_sent'] = emailSent;
    if (acf != null) {
      data['acf'] = acf?.toJson();
    }
    if (lLinks != null) {
      data['_links'] = lLinks?.toJson();
    }
    return data;
  }
}

class Guid {
  String? rendered;
  String? raw;

  Guid({this.rendered, this.raw});

  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    raw = json['raw'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['rendered'] = rendered;
    data['raw'] = raw;
    return data;
  }
}

class Content {
  String? raw;
  String? rendered;
  bool? protected;
  int? blockVersion;

  Content({this.raw, this.rendered, this.protected, this.blockVersion});

  Content.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    rendered = json['rendered'];
    protected = json['protected'];
    blockVersion = json['block_version'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['raw'] = raw;
    data['rendered'] = rendered;
    data['protected'] = protected;
    data['block_version'] = blockVersion;
    return data;
  }
}

class Acf {
  String? name;
  String? email;
  String? status;

  Acf({this.name, this.email, this.status});

  Acf.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['status'] = status;
    return data;
  }
}

class Links {
  List<Self>? self;
  List<Self>? collection;
  List<Self>? about;
  List<Self>? wpAttachment;
  List<Self>? wpActionPublish;
  List<Self>? wpActionUnfilteredHtml;
  List<Curies>? curies;

  Links(
      {this.self,
      this.collection,
      this.about,
      this.wpAttachment,
      this.wpActionPublish,
      this.wpActionUnfilteredHtml,
      this.curies});

  Links.fromJson(Map<String, dynamic> json) {
    if (json['self'] != null) {
      self = <Self>[];
      json['self'].forEach((v) {
        self?.add(Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = <Self>[];
      json['collection'].forEach((v) {
        collection?.add(Self.fromJson(v));
      });
    }
    if (json['about'] != null) {
      about = <Self>[];
      json['about'].forEach((v) {
        about?.add(Self.fromJson(v));
      });
    }
    if (json['wp:attachment'] != null) {
      wpAttachment = <Self>[];
      json['wp:attachment'].forEach((v) {
        wpAttachment?.add(Self.fromJson(v));
      });
    }
    if (json['wp:action-publish'] != null) {
      wpActionPublish = <Self>[];
      json['wp:action-publish'].forEach((v) {
        wpActionPublish?.add(Self.fromJson(v));
      });
    }
    if (json['wp:action-unfiltered-html'] != null) {
      wpActionUnfilteredHtml = <Self>[];
      json['wp:action-unfiltered-html'].forEach((v) {
        wpActionUnfilteredHtml?.add(Self.fromJson(v));
      });
    }
    if (json['curies'] != null) {
      curies = <Curies>[];
      json['curies'].forEach((v) {
        curies?.add(Curies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (self != null) {
      data['self'] = self?.map((v) => v.toJson()).toList();
    }
    if (collection != null) {
      data['collection'] = collection?.map((v) => v.toJson()).toList();
    }
    if (about != null) {
      data['about'] = about?.map((v) => v.toJson()).toList();
    }
    if (wpAttachment != null) {
      data['wp:attachment'] = wpAttachment?.map((v) => v.toJson()).toList();
    }
    if (wpActionPublish != null) {
      data['wp:action-publish'] =
          wpActionPublish?.map((v) => v.toJson()).toList();
    }
    if (wpActionUnfilteredHtml != null) {
      data['wp:action-unfiltered-html'] =
          wpActionUnfilteredHtml?.map((v) => v.toJson()).toList();
    }
    if (curies != null) {
      data['curies'] = curies?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Self {
  String? href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['href'] = href;
    return data;
  }
}

class Curies {
  String? name;
  String? href;
  bool? templated;

  Curies({this.name, this.href, this.templated});

  Curies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    href = json['href'];
    templated = json['templated'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['href'] = href;
    data['templated'] = templated;
    return data;
  }
}
