// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class DogModel extends Equatable {
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

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [message ?? Object(), status ?? Object()];
}

class Message {
  final List<dynamic> affenpinscher;
  final List<dynamic> african;
  final List<dynamic> airedale;
  final List<dynamic> akita;
  final List<dynamic> appenzeller;
  final List<dynamic> australian;
  final List<dynamic> basenji;
  final List<dynamic> beagle;
  final List<dynamic> bluetick;
  final List<dynamic> borzoi;
  final List<dynamic> bouvier;
  final List<dynamic> boxer;
  final List<dynamic> brabancon;
  final List<dynamic> briard;
  final List<dynamic> buhund;
  final List<dynamic> bulldog;
  final List<dynamic> bullterrier;
  final List<dynamic> cattledog;
  final List<dynamic> chihuahua;
  final List<dynamic> chow;
  final List<dynamic> clumber;
  final List<dynamic> cockapoo;
  final List<dynamic> collie;
  final List<dynamic> coonhound;
  final List<dynamic> corgi;
  final List<dynamic> cotondetulear;
  final List<dynamic> dachshund;
  final List<dynamic> dalmatian;
  final List<dynamic> dane;
  final List<dynamic> deerhound;
  final List<dynamic> dhole;
  final List<dynamic> dingo;
  final List<dynamic> doberman;
  final List<dynamic> elkhound;
  final List<dynamic> entlebucher;
  final List<dynamic> eskimo;
  final List<dynamic> finnish;
  final List<dynamic> frise;
  final List<dynamic> germanshepherd;
  final List<dynamic> greyhound;
  final List<dynamic> groenendael;
  final List<dynamic> havanese;
  final List<dynamic> hound;
  final List<dynamic> husky;
  final List<dynamic> keeshond;
  final List<dynamic> kelpie;
  final List<dynamic> komondor;
  final List<dynamic> kuvasz;
  final List<dynamic> labradoodle;
  final List<dynamic> labrador;
  final List<dynamic> leonberg;
  final List<dynamic> lhasa;
  final List<dynamic> malamute;
  final List<dynamic> malinois;
  final List<dynamic> maltese;
  final List<dynamic> mastiff;
  final List<dynamic> mexicanhairless;
  final List<dynamic> mix;
  final List<dynamic> mountain;
  final List<dynamic> newfoundland;
  final List<dynamic> otterhound;
  final List<dynamic> ovcharka;
  final List<dynamic> papillon;
  final List<dynamic> pekinese;
  final List<dynamic> pembroke;
  final List<dynamic> pinscher;
  final List<dynamic> pitbull;
  final List<dynamic> pointer;
  final List<dynamic> pomeranian;
  final List<dynamic> poodle;
  final List<dynamic> pug;
  final List<dynamic> puggle;
  final List<dynamic> pyrenees;
  final List<dynamic> redbone;
  final List<dynamic> retriever;
  final List<dynamic> ridgeback;
  final List<dynamic> rottweiler;
  final List<dynamic> saluki;
  final List<dynamic> samoyed;
  final List<dynamic> schipperke;
  final List<dynamic> schnauzer;
  final List<dynamic> segugio;
  final List<dynamic> setter;
  final List<dynamic> sharpei;
  final List<dynamic> sheepdog;
  final List<dynamic> shiba;
  final List<dynamic> shihtzu;
  final List<dynamic> spaniel;
  final List<dynamic> spitz;
  final List<dynamic> springer;
  final List<dynamic> stbernard;
  final List<dynamic> terrier;
  final List<dynamic> tervuren;
  final List<dynamic> vizsla;
  final List<dynamic> waterdog;
  final List<dynamic> weimaraner;
  final List<dynamic> whippet;
  final List<dynamic> wolfhound;
  Message({
    required this.affenpinscher,
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
    List<dynamic>? affenpinscher,
    List<dynamic>? african,
    List<dynamic>? airedale,
    List<dynamic>? akita,
    List<dynamic>? appenzeller,
    List<dynamic>? australian,
    List<dynamic>? basenji,
    List<dynamic>? beagle,
    List<dynamic>? bluetick,
    List<dynamic>? borzoi,
    List<dynamic>? bouvier,
    List<dynamic>? boxer,
    List<dynamic>? brabancon,
    List<dynamic>? briard,
    List<dynamic>? buhund,
    List<dynamic>? bulldog,
    List<dynamic>? bullterrier,
    List<dynamic>? cattledog,
    List<dynamic>? chihuahua,
    List<dynamic>? chow,
    List<dynamic>? clumber,
    List<dynamic>? cockapoo,
    List<dynamic>? collie,
    List<dynamic>? coonhound,
    List<dynamic>? corgi,
    List<dynamic>? cotondetulear,
    List<dynamic>? dachshund,
    List<dynamic>? dalmatian,
    List<dynamic>? dane,
    List<dynamic>? deerhound,
    List<dynamic>? dhole,
    List<dynamic>? dingo,
    List<dynamic>? doberman,
    List<dynamic>? elkhound,
    List<dynamic>? entlebucher,
    List<dynamic>? eskimo,
    List<dynamic>? finnish,
    List<dynamic>? frise,
    List<dynamic>? germanshepherd,
    List<dynamic>? greyhound,
    List<dynamic>? groenendael,
    List<dynamic>? havanese,
    List<dynamic>? hound,
    List<dynamic>? husky,
    List<dynamic>? keeshond,
    List<dynamic>? kelpie,
    List<dynamic>? komondor,
    List<dynamic>? kuvasz,
    List<dynamic>? labradoodle,
    List<dynamic>? labrador,
    List<dynamic>? leonberg,
    List<dynamic>? lhasa,
    List<dynamic>? malamute,
    List<dynamic>? malinois,
    List<dynamic>? maltese,
    List<dynamic>? mastiff,
    List<dynamic>? mexicanhairless,
    List<dynamic>? mix,
    List<dynamic>? mountain,
    List<dynamic>? newfoundland,
    List<dynamic>? otterhound,
    List<dynamic>? ovcharka,
    List<dynamic>? papillon,
    List<dynamic>? pekinese,
    List<dynamic>? pembroke,
    List<dynamic>? pinscher,
    List<dynamic>? pitbull,
    List<dynamic>? pointer,
    List<dynamic>? pomeranian,
    List<dynamic>? poodle,
    List<dynamic>? pug,
    List<dynamic>? puggle,
    List<dynamic>? pyrenees,
    List<dynamic>? redbone,
    List<dynamic>? retriever,
    List<dynamic>? ridgeback,
    List<dynamic>? rottweiler,
    List<dynamic>? saluki,
    List<dynamic>? samoyed,
    List<dynamic>? schipperke,
    List<dynamic>? schnauzer,
    List<dynamic>? segugio,
    List<dynamic>? setter,
    List<dynamic>? sharpei,
    List<dynamic>? sheepdog,
    List<dynamic>? shiba,
    List<dynamic>? shihtzu,
    List<dynamic>? spaniel,
    List<dynamic>? spitz,
    List<dynamic>? springer,
    List<dynamic>? stbernard,
    List<dynamic>? terrier,
    List<dynamic>? tervuren,
    List<dynamic>? vizsla,
    List<dynamic>? waterdog,
    List<dynamic>? weimaraner,
    List<dynamic>? whippet,
    List<dynamic>? wolfhound,
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
        affenpinscher:
            List<dynamic>.from(map['affenpinscher'] as List<dynamic>),
        african: List<dynamic>.from(map['african'] as List<dynamic>),
        airedale: List<dynamic>.from(map['airedale'] as List<dynamic>),
        akita: List<dynamic>.from(map['akita'] as List<dynamic>),
        appenzeller: List<dynamic>.from(map['appenzeller'] as List<dynamic>),
        australian: List<dynamic>.from(map['australian'] as List<dynamic>),
        basenji: List<dynamic>.from(map['basenji'] as List<dynamic>),
        beagle: List<dynamic>.from(map['beagle'] as List<dynamic>),
        bluetick: List<dynamic>.from(map['bluetick'] as List<dynamic>),
        borzoi: List<dynamic>.from(map['borzoi'] as List<dynamic>),
        bouvier: List<dynamic>.from(map['bouvier'] as List<dynamic>),
        boxer: List<dynamic>.from(map['boxer'] as List<dynamic>),
        brabancon: List<dynamic>.from(map['brabancon'] as List<dynamic>),
        briard: List<dynamic>.from(map['briard'] as List<dynamic>),
        buhund: List<dynamic>.from(map['buhund'] as List<dynamic>),
        bulldog: List<dynamic>.from(map['bulldog'] as List<dynamic>),
        bullterrier: List<dynamic>.from(map['bullterrier'] as List<dynamic>),
        cattledog: List<dynamic>.from(map['cattledog'] as List<dynamic>),
        chihuahua: List<dynamic>.from(map['chihuahua'] as List<dynamic>),
        chow: List<dynamic>.from(map['chow'] as List<dynamic>),
        clumber: List<dynamic>.from(map['clumber'] as List<dynamic>),
        cockapoo: List<dynamic>.from(map['cockapoo'] as List<dynamic>),
        collie: List<dynamic>.from(map['collie'] as List<dynamic>),
        coonhound: List<dynamic>.from(map['coonhound'] as List<dynamic>),
        corgi: List<dynamic>.from(map['corgi'] as List<dynamic>),
        cotondetulear:
            List<dynamic>.from(map['cotondetulear'] as List<dynamic>),
        dachshund: List<dynamic>.from(map['dachshund'] as List<dynamic>),
        dalmatian: List<dynamic>.from(map['dalmatian'] as List<dynamic>),
        dane: List<dynamic>.from(map['dane'] as List<dynamic>),
        deerhound: List<dynamic>.from(map['deerhound'] as List<dynamic>),
        dhole: List<dynamic>.from(map['dhole'] as List<dynamic>),
        dingo: List<dynamic>.from(map['dingo'] as List<dynamic>),
        doberman: List<dynamic>.from(map['doberman'] as List<dynamic>),
        elkhound: List<dynamic>.from(map['elkhound'] as List<dynamic>),
        entlebucher: List<dynamic>.from(map['entlebucher'] as List<dynamic>),
        eskimo: List<dynamic>.from(map['eskimo'] as List<dynamic>),
        finnish: List<dynamic>.from(map['finnish'] as List<dynamic>),
        frise: List<dynamic>.from(map['frise'] as List<dynamic>),
        germanshepherd:
            List<dynamic>.from(map['germanshepherd'] as List<dynamic>),
        greyhound: List<dynamic>.from(map['greyhound'] as List<dynamic>),
        groenendael: List<dynamic>.from(map['groenendael'] as List<dynamic>),
        havanese: List<dynamic>.from(map['havanese'] as List<dynamic>),
        hound: List<dynamic>.from(map['hound'] as List<dynamic>),
        husky: List<dynamic>.from(map['husky'] as List<dynamic>),
        keeshond: List<dynamic>.from(map['keeshond'] as List<dynamic>),
        kelpie: List<dynamic>.from(map['kelpie'] as List<dynamic>),
        komondor: List<dynamic>.from(map['komondor'] as List<dynamic>),
        kuvasz: List<dynamic>.from(map['kuvasz'] as List<dynamic>),
        labradoodle: List<dynamic>.from(map['labradoodle'] as List<dynamic>),
        labrador: List<dynamic>.from(map['labrador'] as List<dynamic>),
        leonberg: List<dynamic>.from(map['leonberg'] as List<dynamic>),
        lhasa: List<dynamic>.from(map['lhasa'] as List<dynamic>),
        malamute: List<dynamic>.from(map['malamute'] as List<dynamic>),
        malinois: List<dynamic>.from(map['malinois'] as List<dynamic>),
        maltese: List<dynamic>.from(map['maltese'] as List<dynamic>),
        mastiff: List<dynamic>.from(map['mastiff'] as List<dynamic>),
        mexicanhairless:
            List<dynamic>.from(map['mexicanhairless'] as List<dynamic>),
        mix: List<dynamic>.from(map['mix'] as List<dynamic>),
        mountain: List<dynamic>.from(map['mountain'] as List<dynamic>),
        newfoundland: List<dynamic>.from(map['newfoundland'] as List<dynamic>),
        otterhound: List<dynamic>.from(map['otterhound'] as List<dynamic>),
        ovcharka: List<dynamic>.from(map['ovcharka'] as List<dynamic>),
        papillon: List<dynamic>.from(map['papillon'] as List<dynamic>),
        pekinese: List<dynamic>.from(map['pekinese'] as List<dynamic>),
        pembroke: List<dynamic>.from(map['pembroke'] as List<dynamic>),
        pinscher: List<dynamic>.from(map['pinscher'] as List<dynamic>),
        pitbull: List<dynamic>.from(map['pitbull'] as List<dynamic>),
        pointer: List<dynamic>.from(map['pointer'] as List<dynamic>),
        pomeranian: List<dynamic>.from(map['pomeranian'] as List<dynamic>),
        poodle: List<dynamic>.from(map['poodle'] as List<dynamic>),
        pug: List<dynamic>.from(map['pug'] as List<dynamic>),
        puggle: List<dynamic>.from(map['puggle'] as List<dynamic>),
        pyrenees: List<dynamic>.from(map['pyrenees'] as List<dynamic>),
        redbone: List<dynamic>.from(map['redbone'] as List<dynamic>),
        retriever: List<dynamic>.from(map['retriever'] as List<dynamic>),
        ridgeback: List<dynamic>.from(map['ridgeback'] as List<dynamic>),
        rottweiler: List<dynamic>.from(map['rottweiler'] as List<dynamic>),
        saluki: List<dynamic>.from(map['saluki'] as List<dynamic>),
        samoyed: List<dynamic>.from(map['samoyed'] as List<dynamic>),
        schipperke: List<dynamic>.from(map['schipperke'] as List<dynamic>),
        schnauzer: List<dynamic>.from(map['schnauzer'] as List<dynamic>),
        segugio: List<dynamic>.from(map['segugio'] as List<dynamic>),
        setter: List<dynamic>.from(map['setter'] as List<dynamic>),
        sharpei: List<dynamic>.from(map['sharpei'] as List<dynamic>),
        sheepdog: List<dynamic>.from(map['sheepdog'] as List<dynamic>),
        shiba: List<dynamic>.from(map['shiba'] as List<dynamic>),
        shihtzu: List<dynamic>.from(map['shihtzu'] as List<dynamic>),
        spaniel: List<dynamic>.from(map['spaniel'] as List<dynamic>),
        spitz: List<dynamic>.from(map['spitz'] as List<dynamic>),
        springer: List<dynamic>.from(map['springer'] as List<dynamic>),
        stbernard: List<dynamic>.from(map['stbernard'] as List<dynamic>),
        terrier: List<dynamic>.from(map['terrier'] as List<dynamic>),
        tervuren: List<dynamic>.from(map['tervuren'] as List<dynamic>),
        vizsla: List<dynamic>.from(map['vizsla'] as List<dynamic>),
        waterdog: List<dynamic>.from(map['waterdog'] as List<dynamic>),
        weimaraner: List<dynamic>.from(map['weimaraner'] as List<dynamic>),
        whippet: List<dynamic>.from(map['whippet'] as List<dynamic>),
        wolfhound: List<dynamic>.from(
          (map['wolfhound'] as List<dynamic>),
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
