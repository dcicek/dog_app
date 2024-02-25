// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class DogModel {
  final Message? message;
  final String? status;
  DogModel({
    this.message,
    this.status,
  });

  DogModel copyWith({
    Message? message,
    String? status,
  }) {
    return DogModel(
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message?.toMap(),
      'status': status,
    };
  }

  factory DogModel.fromMap(Map<String, dynamic> map) {
    return DogModel(
      message: map['message'] != null
          ? Message.fromMap(map['message'] as Map<String, dynamic>)
          : null,
      status: map['status'] != null ? map['status'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DogModel.fromJson(String source) =>
      DogModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DogModel(message: $message, status: $status)';

  @override
  bool operator ==(covariant DogModel other) {
    if (identical(this, other)) return true;

    return other.message == message && other.status == status;
  }

  @override
  int get hashCode => message.hashCode ^ status.hashCode;
}

class Message {
  final List<String>? affenpinscher;
  final List<String> african;
  final List<String> airedale;
  final List<String> akita;
  final List<String> appenzeller;
  final List<String> australian;
  final List<String> basenji;
  final List<String> beagle;
  final List<String> bluetick;
  final List<String> borzoi;
  final List<String> bouvier;
  final List<String> boxer;
  final List<String> brabancon;
  final List<String> briard;
  final List<String> buhund;
  final List<String> bulldog;
  final List<String> bullterrier;
  final List<String> cattledog;
  final List<String> chihuahua;
  final List<String> chow;
  final List<String> clumber;
  final List<String> cockapoo;
  final List<String> collie;
  final List<String> coonhound;
  final List<String> corgi;
  final List<String> cotondetulear;
  final List<String> dachshund;
  final List<String> dalmatian;
  final List<String> dane;
  final List<String> deerhound;
  final List<String> dhole;
  final List<String> dingo;
  final List<String> doberman;
  final List<String> elkhound;
  final List<String> entlebucher;
  final List<String> eskimo;
  final List<String> finnish;
  final List<String> frise;
  final List<String> germanshepherd;
  final List<String> greyhound;
  final List<String> groenendael;
  final List<String> havanese;
  final List<String> hound;
  final List<String> husky;
  final List<String> keeshond;
  final List<String> kelpie;
  final List<String> komondor;
  final List<String> kuvasz;
  final List<String> labradoodle;
  final List<String> labrador;
  final List<String> leonberg;
  final List<String> lhasa;
  final List<String> malamute;
  final List<String> malinois;
  final List<String> maltese;
  final List<String> mastiff;
  final List<String> mexicanhairless;
  final List<String> mix;
  final List<String> mountain;
  final List<String> newfoundland;
  final List<String> otterhound;
  final List<String> ovcharka;
  final List<String> papillon;
  final List<String> pekinese;
  final List<String> pembroke;
  final List<String> pinscher;
  final List<String> pitbull;
  final List<String> pointer;
  final List<String> pomeranian;
  final List<String> poodle;
  final List<String> pug;
  final List<String> puggle;
  final List<String> pyrenees;
  final List<String> redbone;
  final List<String> retriever;
  final List<String> ridgeback;
  final List<String> rottweiler;
  final List<String> saluki;
  final List<String> samoyed;
  final List<String> schipperke;
  final List<String> schnauzer;
  final List<String> segugio;
  final List<String> setter;
  final List<String> sharpei;
  final List<String> sheepdog;
  final List<String> shiba;
  final List<String> shihtzu;
  final List<String> spaniel;
  final List<String> spitz;
  final List<String> springer;
  final List<String> stbernard;
  final List<String> terrier;
  final List<String> tervuren;
  final List<String> vizsla;
  final List<String> waterdog;
  final List<String> weimaraner;
  final List<String> whippet;
  final List<String> wolfhound;
  Message({
    this.affenpinscher,
    required this.african,
    required this.airedale,
    required this.akita,
    required this.appenzeller,
    required this.australian,
    required this.basenji,
    required this.beagle,
    required this.bluetick,
    required this.borzoi,
    required this.bouvier,
    required this.boxer,
    required this.brabancon,
    required this.briard,
    required this.buhund,
    required this.bulldog,
    required this.bullterrier,
    required this.cattledog,
    required this.chihuahua,
    required this.chow,
    required this.clumber,
    required this.cockapoo,
    required this.collie,
    required this.coonhound,
    required this.corgi,
    required this.cotondetulear,
    required this.dachshund,
    required this.dalmatian,
    required this.dane,
    required this.deerhound,
    required this.dhole,
    required this.dingo,
    required this.doberman,
    required this.elkhound,
    required this.entlebucher,
    required this.eskimo,
    required this.finnish,
    required this.frise,
    required this.germanshepherd,
    required this.greyhound,
    required this.groenendael,
    required this.havanese,
    required this.hound,
    required this.husky,
    required this.keeshond,
    required this.kelpie,
    required this.komondor,
    required this.kuvasz,
    required this.labradoodle,
    required this.labrador,
    required this.leonberg,
    required this.lhasa,
    required this.malamute,
    required this.malinois,
    required this.maltese,
    required this.mastiff,
    required this.mexicanhairless,
    required this.mix,
    required this.mountain,
    required this.newfoundland,
    required this.otterhound,
    required this.ovcharka,
    required this.papillon,
    required this.pekinese,
    required this.pembroke,
    required this.pinscher,
    required this.pitbull,
    required this.pointer,
    required this.pomeranian,
    required this.poodle,
    required this.pug,
    required this.puggle,
    required this.pyrenees,
    required this.redbone,
    required this.retriever,
    required this.ridgeback,
    required this.rottweiler,
    required this.saluki,
    required this.samoyed,
    required this.schipperke,
    required this.schnauzer,
    required this.segugio,
    required this.setter,
    required this.sharpei,
    required this.sheepdog,
    required this.shiba,
    required this.shihtzu,
    required this.spaniel,
    required this.spitz,
    required this.springer,
    required this.stbernard,
    required this.terrier,
    required this.tervuren,
    required this.vizsla,
    required this.waterdog,
    required this.weimaraner,
    required this.whippet,
    required this.wolfhound,
  });

  Message copyWith({
    List<String>? affenpinscher,
    List<String>? african,
    List<String>? airedale,
    List<String>? akita,
    List<String>? appenzeller,
    List<String>? australian,
    List<String>? basenji,
    List<String>? beagle,
    List<String>? bluetick,
    List<String>? borzoi,
    List<String>? bouvier,
    List<String>? boxer,
    List<String>? brabancon,
    List<String>? briard,
    List<String>? buhund,
    List<String>? bulldog,
    List<String>? bullterrier,
    List<String>? cattledog,
    List<String>? chihuahua,
    List<String>? chow,
    List<String>? clumber,
    List<String>? cockapoo,
    List<String>? collie,
    List<String>? coonhound,
    List<String>? corgi,
    List<String>? cotondetulear,
    List<String>? dachshund,
    List<String>? dalmatian,
    List<String>? dane,
    List<String>? deerhound,
    List<String>? dhole,
    List<String>? dingo,
    List<String>? doberman,
    List<String>? elkhound,
    List<String>? entlebucher,
    List<String>? eskimo,
    List<String>? finnish,
    List<String>? frise,
    List<String>? germanshepherd,
    List<String>? greyhound,
    List<String>? groenendael,
    List<String>? havanese,
    List<String>? hound,
    List<String>? husky,
    List<String>? keeshond,
    List<String>? kelpie,
    List<String>? komondor,
    List<String>? kuvasz,
    List<String>? labradoodle,
    List<String>? labrador,
    List<String>? leonberg,
    List<String>? lhasa,
    List<String>? malamute,
    List<String>? malinois,
    List<String>? maltese,
    List<String>? mastiff,
    List<String>? mexicanhairless,
    List<String>? mix,
    List<String>? mountain,
    List<String>? newfoundland,
    List<String>? otterhound,
    List<String>? ovcharka,
    List<String>? papillon,
    List<String>? pekinese,
    List<String>? pembroke,
    List<String>? pinscher,
    List<String>? pitbull,
    List<String>? pointer,
    List<String>? pomeranian,
    List<String>? poodle,
    List<String>? pug,
    List<String>? puggle,
    List<String>? pyrenees,
    List<String>? redbone,
    List<String>? retriever,
    List<String>? ridgeback,
    List<String>? rottweiler,
    List<String>? saluki,
    List<String>? samoyed,
    List<String>? schipperke,
    List<String>? schnauzer,
    List<String>? segugio,
    List<String>? setter,
    List<String>? sharpei,
    List<String>? sheepdog,
    List<String>? shiba,
    List<String>? shihtzu,
    List<String>? spaniel,
    List<String>? spitz,
    List<String>? springer,
    List<String>? stbernard,
    List<String>? terrier,
    List<String>? tervuren,
    List<String>? vizsla,
    List<String>? waterdog,
    List<String>? weimaraner,
    List<String>? whippet,
    List<String>? wolfhound,
  }) {
    return Message(
      affenpinscher: affenpinscher ?? this.affenpinscher,
      african: african ?? this.african,
      airedale: airedale ?? this.airedale,
      akita: akita ?? this.akita,
      appenzeller: appenzeller ?? this.appenzeller,
      australian: australian ?? this.australian,
      basenji: basenji ?? this.basenji,
      beagle: beagle ?? this.beagle,
      bluetick: bluetick ?? this.bluetick,
      borzoi: borzoi ?? this.borzoi,
      bouvier: bouvier ?? this.bouvier,
      boxer: boxer ?? this.boxer,
      brabancon: brabancon ?? this.brabancon,
      briard: briard ?? this.briard,
      buhund: buhund ?? this.buhund,
      bulldog: bulldog ?? this.bulldog,
      bullterrier: bullterrier ?? this.bullterrier,
      cattledog: cattledog ?? this.cattledog,
      chihuahua: chihuahua ?? this.chihuahua,
      chow: chow ?? this.chow,
      clumber: clumber ?? this.clumber,
      cockapoo: cockapoo ?? this.cockapoo,
      collie: collie ?? this.collie,
      coonhound: coonhound ?? this.coonhound,
      corgi: corgi ?? this.corgi,
      cotondetulear: cotondetulear ?? this.cotondetulear,
      dachshund: dachshund ?? this.dachshund,
      dalmatian: dalmatian ?? this.dalmatian,
      dane: dane ?? this.dane,
      deerhound: deerhound ?? this.deerhound,
      dhole: dhole ?? this.dhole,
      dingo: dingo ?? this.dingo,
      doberman: doberman ?? this.doberman,
      elkhound: elkhound ?? this.elkhound,
      entlebucher: entlebucher ?? this.entlebucher,
      eskimo: eskimo ?? this.eskimo,
      finnish: finnish ?? this.finnish,
      frise: frise ?? this.frise,
      germanshepherd: germanshepherd ?? this.germanshepherd,
      greyhound: greyhound ?? this.greyhound,
      groenendael: groenendael ?? this.groenendael,
      havanese: havanese ?? this.havanese,
      hound: hound ?? this.hound,
      husky: husky ?? this.husky,
      keeshond: keeshond ?? this.keeshond,
      kelpie: kelpie ?? this.kelpie,
      komondor: komondor ?? this.komondor,
      kuvasz: kuvasz ?? this.kuvasz,
      labradoodle: labradoodle ?? this.labradoodle,
      labrador: labrador ?? this.labrador,
      leonberg: leonberg ?? this.leonberg,
      lhasa: lhasa ?? this.lhasa,
      malamute: malamute ?? this.malamute,
      malinois: malinois ?? this.malinois,
      maltese: maltese ?? this.maltese,
      mastiff: mastiff ?? this.mastiff,
      mexicanhairless: mexicanhairless ?? this.mexicanhairless,
      mix: mix ?? this.mix,
      mountain: mountain ?? this.mountain,
      newfoundland: newfoundland ?? this.newfoundland,
      otterhound: otterhound ?? this.otterhound,
      ovcharka: ovcharka ?? this.ovcharka,
      papillon: papillon ?? this.papillon,
      pekinese: pekinese ?? this.pekinese,
      pembroke: pembroke ?? this.pembroke,
      pinscher: pinscher ?? this.pinscher,
      pitbull: pitbull ?? this.pitbull,
      pointer: pointer ?? this.pointer,
      pomeranian: pomeranian ?? this.pomeranian,
      poodle: poodle ?? this.poodle,
      pug: pug ?? this.pug,
      puggle: puggle ?? this.puggle,
      pyrenees: pyrenees ?? this.pyrenees,
      redbone: redbone ?? this.redbone,
      retriever: retriever ?? this.retriever,
      ridgeback: ridgeback ?? this.ridgeback,
      rottweiler: rottweiler ?? this.rottweiler,
      saluki: saluki ?? this.saluki,
      samoyed: samoyed ?? this.samoyed,
      schipperke: schipperke ?? this.schipperke,
      schnauzer: schnauzer ?? this.schnauzer,
      segugio: segugio ?? this.segugio,
      setter: setter ?? this.setter,
      sharpei: sharpei ?? this.sharpei,
      sheepdog: sheepdog ?? this.sheepdog,
      shiba: shiba ?? this.shiba,
      shihtzu: shihtzu ?? this.shihtzu,
      spaniel: spaniel ?? this.spaniel,
      spitz: spitz ?? this.spitz,
      springer: springer ?? this.springer,
      stbernard: stbernard ?? this.stbernard,
      terrier: terrier ?? this.terrier,
      tervuren: tervuren ?? this.tervuren,
      vizsla: vizsla ?? this.vizsla,
      waterdog: waterdog ?? this.waterdog,
      weimaraner: weimaraner ?? this.weimaraner,
      whippet: whippet ?? this.whippet,
      wolfhound: wolfhound ?? this.wolfhound,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affenpinscher': affenpinscher,
      'african': african,
      'airedale': airedale,
      'akita': akita,
      'appenzeller': appenzeller,
      'australian': australian,
      'basenji': basenji,
      'beagle': beagle,
      'bluetick': bluetick,
      'borzoi': borzoi,
      'bouvier': bouvier,
      'boxer': boxer,
      'brabancon': brabancon,
      'briard': briard,
      'buhund': buhund,
      'bulldog': bulldog,
      'bullterrier': bullterrier,
      'cattledog': cattledog,
      'chihuahua': chihuahua,
      'chow': chow,
      'clumber': clumber,
      'cockapoo': cockapoo,
      'collie': collie,
      'coonhound': coonhound,
      'corgi': corgi,
      'cotondetulear': cotondetulear,
      'dachshund': dachshund,
      'dalmatian': dalmatian,
      'dane': dane,
      'deerhound': deerhound,
      'dhole': dhole,
      'dingo': dingo,
      'doberman': doberman,
      'elkhound': elkhound,
      'entlebucher': entlebucher,
      'eskimo': eskimo,
      'finnish': finnish,
      'frise': frise,
      'germanshepherd': germanshepherd,
      'greyhound': greyhound,
      'groenendael': groenendael,
      'havanese': havanese,
      'hound': hound,
      'husky': husky,
      'keeshond': keeshond,
      'kelpie': kelpie,
      'komondor': komondor,
      'kuvasz': kuvasz,
      'labradoodle': labradoodle,
      'labrador': labrador,
      'leonberg': leonberg,
      'lhasa': lhasa,
      'malamute': malamute,
      'malinois': malinois,
      'maltese': maltese,
      'mastiff': mastiff,
      'mexicanhairless': mexicanhairless,
      'mix': mix,
      'mountain': mountain,
      'newfoundland': newfoundland,
      'otterhound': otterhound,
      'ovcharka': ovcharka,
      'papillon': papillon,
      'pekinese': pekinese,
      'pembroke': pembroke,
      'pinscher': pinscher,
      'pitbull': pitbull,
      'pointer': pointer,
      'pomeranian': pomeranian,
      'poodle': poodle,
      'pug': pug,
      'puggle': puggle,
      'pyrenees': pyrenees,
      'redbone': redbone,
      'retriever': retriever,
      'ridgeback': ridgeback,
      'rottweiler': rottweiler,
      'saluki': saluki,
      'samoyed': samoyed,
      'schipperke': schipperke,
      'schnauzer': schnauzer,
      'segugio': segugio,
      'setter': setter,
      'sharpei': sharpei,
      'sheepdog': sheepdog,
      'shiba': shiba,
      'shihtzu': shihtzu,
      'spaniel': spaniel,
      'spitz': spitz,
      'springer': springer,
      'stbernard': stbernard,
      'terrier': terrier,
      'tervuren': tervuren,
      'vizsla': vizsla,
      'waterdog': waterdog,
      'weimaraner': weimaraner,
      'whippet': whippet,
      'wolfhound': wolfhound,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
        affenpinscher: map['affenpinscher'] != null
            ? List<String>.from(map['affenpinscher'] as List<String>)
            : null,
        african: List<String>.from(map['african'] as List<String>),
        airedale: List<String>.from(map['airedale'] as List<String>),
        akita: List<String>.from(map['akita'] as List<String>),
        appenzeller: List<String>.from(map['appenzeller'] as List<String>),
        australian: List<String>.from(map['australian'] as List<String>),
        basenji: List<String>.from(map['basenji'] as List<String>),
        beagle: List<String>.from(map['beagle'] as List<String>),
        bluetick: List<String>.from(map['bluetick'] as List<String>),
        borzoi: List<String>.from(map['borzoi'] as List<String>),
        bouvier: List<String>.from(map['bouvier'] as List<String>),
        boxer: List<String>.from(map['boxer'] as List<String>),
        brabancon: List<String>.from(map['brabancon'] as List<String>),
        briard: List<String>.from(map['briard'] as List<String>),
        buhund: List<String>.from(map['buhund'] as List<String>),
        bulldog: List<String>.from(map['bulldog'] as List<String>),
        bullterrier: List<String>.from(map['bullterrier'] as List<String>),
        cattledog: List<String>.from(map['cattledog'] as List<String>),
        chihuahua: List<String>.from(map['chihuahua'] as List<String>),
        chow: List<String>.from(map['chow'] as List<String>),
        clumber: List<String>.from(map['clumber'] as List<String>),
        cockapoo: List<String>.from(map['cockapoo'] as List<String>),
        collie: List<String>.from(map['collie'] as List<String>),
        coonhound: List<String>.from(map['coonhound'] as List<String>),
        corgi: List<String>.from(map['corgi'] as List<String>),
        cotondetulear: List<String>.from(map['cotondetulear'] as List<String>),
        dachshund: List<String>.from(map['dachshund'] as List<String>),
        dalmatian: List<String>.from(map['dalmatian'] as List<String>),
        dane: List<String>.from(map['dane'] as List<String>),
        deerhound: List<String>.from(map['deerhound'] as List<String>),
        dhole: List<String>.from(map['dhole'] as List<String>),
        dingo: List<String>.from(map['dingo'] as List<String>),
        doberman: List<String>.from(map['doberman'] as List<String>),
        elkhound: List<String>.from(map['elkhound'] as List<String>),
        entlebucher: List<String>.from(map['entlebucher'] as List<String>),
        eskimo: List<String>.from(map['eskimo'] as List<String>),
        finnish: List<String>.from(map['finnish'] as List<String>),
        frise: List<String>.from(map['frise'] as List<String>),
        germanshepherd:
            List<String>.from(map['germanshepherd'] as List<String>),
        greyhound: List<String>.from(map['greyhound'] as List<String>),
        groenendael: List<String>.from(map['groenendael'] as List<String>),
        havanese: List<String>.from(map['havanese'] as List<String>),
        hound: List<String>.from(map['hound'] as List<String>),
        husky: List<String>.from(map['husky'] as List<String>),
        keeshond: List<String>.from(map['keeshond'] as List<String>),
        kelpie: List<String>.from(map['kelpie'] as List<String>),
        komondor: List<String>.from(map['komondor'] as List<String>),
        kuvasz: List<String>.from(map['kuvasz'] as List<String>),
        labradoodle: List<String>.from(map['labradoodle'] as List<String>),
        labrador: List<String>.from(map['labrador'] as List<String>),
        leonberg: List<String>.from(map['leonberg'] as List<String>),
        lhasa: List<String>.from(map['lhasa'] as List<String>),
        malamute: List<String>.from(map['malamute'] as List<String>),
        malinois: List<String>.from(map['malinois'] as List<String>),
        maltese: List<String>.from(map['maltese'] as List<String>),
        mastiff: List<String>.from(map['mastiff'] as List<String>),
        mexicanhairless:
            List<String>.from(map['mexicanhairless'] as List<String>),
        mix: List<String>.from(map['mix'] as List<String>),
        mountain: List<String>.from(map['mountain'] as List<String>),
        newfoundland: List<String>.from(map['newfoundland'] as List<String>),
        otterhound: List<String>.from(map['otterhound'] as List<String>),
        ovcharka: List<String>.from(map['ovcharka'] as List<String>),
        papillon: List<String>.from(map['papillon'] as List<String>),
        pekinese: List<String>.from(map['pekinese'] as List<String>),
        pembroke: List<String>.from(map['pembroke'] as List<String>),
        pinscher: List<String>.from(map['pinscher'] as List<String>),
        pitbull: List<String>.from(map['pitbull'] as List<String>),
        pointer: List<String>.from(map['pointer'] as List<String>),
        pomeranian: List<String>.from(map['pomeranian'] as List<String>),
        poodle: List<String>.from(map['poodle'] as List<String>),
        pug: List<String>.from(map['pug'] as List<String>),
        puggle: List<String>.from(map['puggle'] as List<String>),
        pyrenees: List<String>.from(map['pyrenees'] as List<String>),
        redbone: List<String>.from(map['redbone'] as List<String>),
        retriever: List<String>.from(map['retriever'] as List<String>),
        ridgeback: List<String>.from(map['ridgeback'] as List<String>),
        rottweiler: List<String>.from(map['rottweiler'] as List<String>),
        saluki: List<String>.from(map['saluki'] as List<String>),
        samoyed: List<String>.from(map['samoyed'] as List<String>),
        schipperke: List<String>.from(map['schipperke'] as List<String>),
        schnauzer: List<String>.from(map['schnauzer'] as List<String>),
        segugio: List<String>.from(map['segugio'] as List<String>),
        setter: List<String>.from(map['setter'] as List<String>),
        sharpei: List<String>.from(map['sharpei'] as List<String>),
        sheepdog: List<String>.from(map['sheepdog'] as List<String>),
        shiba: List<String>.from(map['shiba'] as List<String>),
        shihtzu: List<String>.from(map['shihtzu'] as List<String>),
        spaniel: List<String>.from(map['spaniel'] as List<String>),
        spitz: List<String>.from(map['spitz'] as List<String>),
        springer: List<String>.from(map['springer'] as List<String>),
        stbernard: List<String>.from(map['stbernard'] as List<String>),
        terrier: List<String>.from(map['terrier'] as List<String>),
        tervuren: List<String>.from(map['tervuren'] as List<String>),
        vizsla: List<String>.from(map['vizsla'] as List<String>),
        waterdog: List<String>.from(map['waterdog'] as List<String>),
        weimaraner: List<String>.from(map['weimaraner'] as List<String>),
        whippet: List<String>.from(map['whippet'] as List<String>),
        wolfhound: List<String>.from(
          (map['wolfhound'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) =>
      Message.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Message(affenpinscher: $affenpinscher, african: $african, airedale: $airedale, akita: $akita, appenzeller: $appenzeller, australian: $australian, basenji: $basenji, beagle: $beagle, bluetick: $bluetick, borzoi: $borzoi, bouvier: $bouvier, boxer: $boxer, brabancon: $brabancon, briard: $briard, buhund: $buhund, bulldog: $bulldog, bullterrier: $bullterrier, cattledog: $cattledog, chihuahua: $chihuahua, chow: $chow, clumber: $clumber, cockapoo: $cockapoo, collie: $collie, coonhound: $coonhound, corgi: $corgi, cotondetulear: $cotondetulear, dachshund: $dachshund, dalmatian: $dalmatian, dane: $dane, deerhound: $deerhound, dhole: $dhole, dingo: $dingo, doberman: $doberman, elkhound: $elkhound, entlebucher: $entlebucher, eskimo: $eskimo, finnish: $finnish, frise: $frise, germanshepherd: $germanshepherd, greyhound: $greyhound, groenendael: $groenendael, havanese: $havanese, hound: $hound, husky: $husky, keeshond: $keeshond, kelpie: $kelpie, komondor: $komondor, kuvasz: $kuvasz, labradoodle: $labradoodle, labrador: $labrador, leonberg: $leonberg, lhasa: $lhasa, malamute: $malamute, malinois: $malinois, maltese: $maltese, mastiff: $mastiff, mexicanhairless: $mexicanhairless, mix: $mix, mountain: $mountain, newfoundland: $newfoundland, otterhound: $otterhound, ovcharka: $ovcharka, papillon: $papillon, pekinese: $pekinese, pembroke: $pembroke, pinscher: $pinscher, pitbull: $pitbull, pointer: $pointer, pomeranian: $pomeranian, poodle: $poodle, pug: $pug, puggle: $puggle, pyrenees: $pyrenees, redbone: $redbone, retriever: $retriever, ridgeback: $ridgeback, rottweiler: $rottweiler, saluki: $saluki, samoyed: $samoyed, schipperke: $schipperke, schnauzer: $schnauzer, segugio: $segugio, setter: $setter, sharpei: $sharpei, sheepdog: $sheepdog, shiba: $shiba, shihtzu: $shihtzu, spaniel: $spaniel, spitz: $spitz, springer: $springer, stbernard: $stbernard, terrier: $terrier, tervuren: $tervuren, vizsla: $vizsla, waterdog: $waterdog, weimaraner: $weimaraner, whippet: $whippet, wolfhound: $wolfhound)';
  }

  @override
  bool operator ==(covariant Message other) {
    if (identical(this, other)) return true;

    return listEquals(other.affenpinscher, affenpinscher) &&
        listEquals(other.african, african) &&
        listEquals(other.airedale, airedale) &&
        listEquals(other.akita, akita) &&
        listEquals(other.appenzeller, appenzeller) &&
        listEquals(other.australian, australian) &&
        listEquals(other.basenji, basenji) &&
        listEquals(other.beagle, beagle) &&
        listEquals(other.bluetick, bluetick) &&
        listEquals(other.borzoi, borzoi) &&
        listEquals(other.bouvier, bouvier) &&
        listEquals(other.boxer, boxer) &&
        listEquals(other.brabancon, brabancon) &&
        listEquals(other.briard, briard) &&
        listEquals(other.buhund, buhund) &&
        listEquals(other.bulldog, bulldog) &&
        listEquals(other.bullterrier, bullterrier) &&
        listEquals(other.cattledog, cattledog) &&
        listEquals(other.chihuahua, chihuahua) &&
        listEquals(other.chow, chow) &&
        listEquals(other.clumber, clumber) &&
        listEquals(other.cockapoo, cockapoo) &&
        listEquals(other.collie, collie) &&
        listEquals(other.coonhound, coonhound) &&
        listEquals(other.corgi, corgi) &&
        listEquals(other.cotondetulear, cotondetulear) &&
        listEquals(other.dachshund, dachshund) &&
        listEquals(other.dalmatian, dalmatian) &&
        listEquals(other.dane, dane) &&
        listEquals(other.deerhound, deerhound) &&
        listEquals(other.dhole, dhole) &&
        listEquals(other.dingo, dingo) &&
        listEquals(other.doberman, doberman) &&
        listEquals(other.elkhound, elkhound) &&
        listEquals(other.entlebucher, entlebucher) &&
        listEquals(other.eskimo, eskimo) &&
        listEquals(other.finnish, finnish) &&
        listEquals(other.frise, frise) &&
        listEquals(other.germanshepherd, germanshepherd) &&
        listEquals(other.greyhound, greyhound) &&
        listEquals(other.groenendael, groenendael) &&
        listEquals(other.havanese, havanese) &&
        listEquals(other.hound, hound) &&
        listEquals(other.husky, husky) &&
        listEquals(other.keeshond, keeshond) &&
        listEquals(other.kelpie, kelpie) &&
        listEquals(other.komondor, komondor) &&
        listEquals(other.kuvasz, kuvasz) &&
        listEquals(other.labradoodle, labradoodle) &&
        listEquals(other.labrador, labrador) &&
        listEquals(other.leonberg, leonberg) &&
        listEquals(other.lhasa, lhasa) &&
        listEquals(other.malamute, malamute) &&
        listEquals(other.malinois, malinois) &&
        listEquals(other.maltese, maltese) &&
        listEquals(other.mastiff, mastiff) &&
        listEquals(other.mexicanhairless, mexicanhairless) &&
        listEquals(other.mix, mix) &&
        listEquals(other.mountain, mountain) &&
        listEquals(other.newfoundland, newfoundland) &&
        listEquals(other.otterhound, otterhound) &&
        listEquals(other.ovcharka, ovcharka) &&
        listEquals(other.papillon, papillon) &&
        listEquals(other.pekinese, pekinese) &&
        listEquals(other.pembroke, pembroke) &&
        listEquals(other.pinscher, pinscher) &&
        listEquals(other.pitbull, pitbull) &&
        listEquals(other.pointer, pointer) &&
        listEquals(other.pomeranian, pomeranian) &&
        listEquals(other.poodle, poodle) &&
        listEquals(other.pug, pug) &&
        listEquals(other.puggle, puggle) &&
        listEquals(other.pyrenees, pyrenees) &&
        listEquals(other.redbone, redbone) &&
        listEquals(other.retriever, retriever) &&
        listEquals(other.ridgeback, ridgeback) &&
        listEquals(other.rottweiler, rottweiler) &&
        listEquals(other.saluki, saluki) &&
        listEquals(other.samoyed, samoyed) &&
        listEquals(other.schipperke, schipperke) &&
        listEquals(other.schnauzer, schnauzer) &&
        listEquals(other.segugio, segugio) &&
        listEquals(other.setter, setter) &&
        listEquals(other.sharpei, sharpei) &&
        listEquals(other.sheepdog, sheepdog) &&
        listEquals(other.shiba, shiba) &&
        listEquals(other.shihtzu, shihtzu) &&
        listEquals(other.spaniel, spaniel) &&
        listEquals(other.spitz, spitz) &&
        listEquals(other.springer, springer) &&
        listEquals(other.stbernard, stbernard) &&
        listEquals(other.terrier, terrier) &&
        listEquals(other.tervuren, tervuren) &&
        listEquals(other.vizsla, vizsla) &&
        listEquals(other.waterdog, waterdog) &&
        listEquals(other.weimaraner, weimaraner) &&
        listEquals(other.whippet, whippet) &&
        listEquals(other.wolfhound, wolfhound);
  }

  @override
  int get hashCode {
    return affenpinscher.hashCode ^
        african.hashCode ^
        airedale.hashCode ^
        akita.hashCode ^
        appenzeller.hashCode ^
        australian.hashCode ^
        basenji.hashCode ^
        beagle.hashCode ^
        bluetick.hashCode ^
        borzoi.hashCode ^
        bouvier.hashCode ^
        boxer.hashCode ^
        brabancon.hashCode ^
        briard.hashCode ^
        buhund.hashCode ^
        bulldog.hashCode ^
        bullterrier.hashCode ^
        cattledog.hashCode ^
        chihuahua.hashCode ^
        chow.hashCode ^
        clumber.hashCode ^
        cockapoo.hashCode ^
        collie.hashCode ^
        coonhound.hashCode ^
        corgi.hashCode ^
        cotondetulear.hashCode ^
        dachshund.hashCode ^
        dalmatian.hashCode ^
        dane.hashCode ^
        deerhound.hashCode ^
        dhole.hashCode ^
        dingo.hashCode ^
        doberman.hashCode ^
        elkhound.hashCode ^
        entlebucher.hashCode ^
        eskimo.hashCode ^
        finnish.hashCode ^
        frise.hashCode ^
        germanshepherd.hashCode ^
        greyhound.hashCode ^
        groenendael.hashCode ^
        havanese.hashCode ^
        hound.hashCode ^
        husky.hashCode ^
        keeshond.hashCode ^
        kelpie.hashCode ^
        komondor.hashCode ^
        kuvasz.hashCode ^
        labradoodle.hashCode ^
        labrador.hashCode ^
        leonberg.hashCode ^
        lhasa.hashCode ^
        malamute.hashCode ^
        malinois.hashCode ^
        maltese.hashCode ^
        mastiff.hashCode ^
        mexicanhairless.hashCode ^
        mix.hashCode ^
        mountain.hashCode ^
        newfoundland.hashCode ^
        otterhound.hashCode ^
        ovcharka.hashCode ^
        papillon.hashCode ^
        pekinese.hashCode ^
        pembroke.hashCode ^
        pinscher.hashCode ^
        pitbull.hashCode ^
        pointer.hashCode ^
        pomeranian.hashCode ^
        poodle.hashCode ^
        pug.hashCode ^
        puggle.hashCode ^
        pyrenees.hashCode ^
        redbone.hashCode ^
        retriever.hashCode ^
        ridgeback.hashCode ^
        rottweiler.hashCode ^
        saluki.hashCode ^
        samoyed.hashCode ^
        schipperke.hashCode ^
        schnauzer.hashCode ^
        segugio.hashCode ^
        setter.hashCode ^
        sharpei.hashCode ^
        sheepdog.hashCode ^
        shiba.hashCode ^
        shihtzu.hashCode ^
        spaniel.hashCode ^
        spitz.hashCode ^
        springer.hashCode ^
        stbernard.hashCode ^
        terrier.hashCode ^
        tervuren.hashCode ^
        vizsla.hashCode ^
        waterdog.hashCode ^
        weimaraner.hashCode ^
        whippet.hashCode ^
        wolfhound.hashCode;
  }
}
