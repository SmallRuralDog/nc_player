class Profile {
  Profile({
      this.userId, 
      this.userType, 
      this.nickname, 
      this.avatarImgId, 
      this.avatarUrl, 
      this.backgroundImgId, 
      this.backgroundUrl, 
      this.signature, 
      this.createTime, 
      this.userName, 
      this.accountType, 
      this.shortUserName, 
      this.birthday, 
      this.authority, 
      this.gender, 
      this.accountStatus, 
      this.province, 
      this.city, 
      this.authStatus, 
      this.description, 
      this.detailDescription, 
      this.defaultAvatar, 
      this.expertTags, 
      this.experts, 
      this.djStatus, 
      this.locationStatus, 
      this.vipType, 
      this.followed, 
      this.mutual, 
      this.authenticated, 
      this.lastLoginTime, 
      this.lastLoginIP, 
      this.remarkName, 
      this.viptypeVersion, 
      this.authenticationTypes, 
      this.avatarDetail, 
      this.anchor,});

  Profile.fromJson(dynamic json) {
    userId = json['userId'];
    userType = json['userType'];
    nickname = json['nickname'];
    avatarImgId = json['avatarImgId'];
    avatarUrl = json['avatarUrl'];
    backgroundImgId = json['backgroundImgId'];
    backgroundUrl = json['backgroundUrl'];
    signature = json['signature'];
    createTime = json['createTime'];
    userName = json['userName'];
    accountType = json['accountType'];
    shortUserName = json['shortUserName'];
    birthday = json['birthday'];
    authority = json['authority'];
    gender = json['gender'];
    accountStatus = json['accountStatus'];
    province = json['province'];
    city = json['city'];
    authStatus = json['authStatus'];
    description = json['description'];
    detailDescription = json['detailDescription'];
    defaultAvatar = json['defaultAvatar'];
    expertTags = json['expertTags'];
    experts = json['experts'];
    djStatus = json['djStatus'];
    locationStatus = json['locationStatus'];
    vipType = json['vipType'];
    followed = json['followed'];
    mutual = json['mutual'];
    authenticated = json['authenticated'];
    lastLoginTime = json['lastLoginTime'];
    lastLoginIP = json['lastLoginIP'];
    remarkName = json['remarkName'];
    viptypeVersion = json['viptypeVersion'];
    authenticationTypes = json['authenticationTypes'];
    avatarDetail = json['avatarDetail'];
    anchor = json['anchor'];
  }
  int? userId;
  int? userType;
  String? nickname;
  int? avatarImgId;
  String? avatarUrl;
  int? backgroundImgId;
  String? backgroundUrl;
  dynamic signature;
  int? createTime;
  String? userName;
  int? accountType;
  String? shortUserName;
  int? birthday;
  int? authority;
  int? gender;
  int? accountStatus;
  int? province;
  int? city;
  int? authStatus;
  dynamic description;
  dynamic detailDescription;
  bool? defaultAvatar;
  dynamic expertTags;
  dynamic experts;
  int? djStatus;
  int? locationStatus;
  int? vipType;
  bool? followed;
  bool? mutual;
  bool? authenticated;
  int? lastLoginTime;
  String? lastLoginIP;
  dynamic remarkName;
  int? viptypeVersion;
  int? authenticationTypes;
  dynamic avatarDetail;
  bool? anchor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['userType'] = userType;
    map['nickname'] = nickname;
    map['avatarImgId'] = avatarImgId;
    map['avatarUrl'] = avatarUrl;
    map['backgroundImgId'] = backgroundImgId;
    map['backgroundUrl'] = backgroundUrl;
    map['signature'] = signature;
    map['createTime'] = createTime;
    map['userName'] = userName;
    map['accountType'] = accountType;
    map['shortUserName'] = shortUserName;
    map['birthday'] = birthday;
    map['authority'] = authority;
    map['gender'] = gender;
    map['accountStatus'] = accountStatus;
    map['province'] = province;
    map['city'] = city;
    map['authStatus'] = authStatus;
    map['description'] = description;
    map['detailDescription'] = detailDescription;
    map['defaultAvatar'] = defaultAvatar;
    map['expertTags'] = expertTags;
    map['experts'] = experts;
    map['djStatus'] = djStatus;
    map['locationStatus'] = locationStatus;
    map['vipType'] = vipType;
    map['followed'] = followed;
    map['mutual'] = mutual;
    map['authenticated'] = authenticated;
    map['lastLoginTime'] = lastLoginTime;
    map['lastLoginIP'] = lastLoginIP;
    map['remarkName'] = remarkName;
    map['viptypeVersion'] = viptypeVersion;
    map['authenticationTypes'] = authenticationTypes;
    map['avatarDetail'] = avatarDetail;
    map['anchor'] = anchor;
    return map;
  }

}