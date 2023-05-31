import 'package:soccerapp/core/models/export_helper.dart';

List<GameData> games() {
  return [
    GameData(
      date: 'Jumat, 10 Februari',
      kickOff: '15:00 WIB',
      teamA: 'Persib Bandung',
      teamB: 'Persija Jakarta',
      logoA: 'persib.png',
      logoB: 'persija.png',
      homeBase: 'Gelora Bandung Lautan Api',
      liveOn: 'indosiar.png',
    ),
    GameData(
      date: 'Sabtu, 11 Februari',
      kickOff: '15:00 WIB',
      teamA: 'PSM Makasar',
      teamB: 'Bali United',
      logoA: 'psm.png',
      logoB: 'bali.png',
      homeBase: 'Gelora B. J. Habibie',
      liveOn: 'vidio.png',
    ),
    GameData(
      date: 'Minggu, 12 Februari',
      kickOff: '15:00 WIB',
      teamA: 'Persebaya',
      teamB: 'Arema FC',
      logoA: 'persebaya.png',
      logoB: 'arema.png',
      homeBase: 'Gelora Bung Tomo',
      liveOn: 'moji.png',
    ),
  ];
}

List<HightlightData> highlights() {
  return [
    HightlightData(
      date: '27 Januari 2023',
      teamA: 'Persib Bandung',
      teamB: 'Persija Jakarta',
      thumbnail:
          'https://cdn-2.tstatic.net/pontianak/foto/bank/images/Highlight-Persib-Vs-PSIS-Hasil-Liga-1-Hari-Ini-Drama-Gol-David-da-Silva-dan-Alfeandra-Dewangga.jpg',
    ),
    HightlightData(
      date: '27 Januari 2023',
      teamA: 'Persib Bandung',
      teamB: 'Persija Jakarta',
      thumbnail:
          'https://cdn-2.tstatic.net/pontianak/foto/bank/images/Highlight-Persib-Vs-PSIS-Hasil-Liga-1-Hari-Ini-Drama-Gol-David-da-Silva-dan-Alfeandra-Dewangga.jpg',
    ),
    HightlightData(
      date: '27 Januari 2023',
      teamA: 'Persib Bandung',
      teamB: 'Persija Jakarta',
      thumbnail:
          'https://cdn-2.tstatic.net/pontianak/foto/bank/images/Highlight-Persib-Vs-PSIS-Hasil-Liga-1-Hari-Ini-Drama-Gol-David-da-Silva-dan-Alfeandra-Dewangga.jpg',
    ),
  ];
}

List<ServiceData> services() {
  return [
    ServiceData(
      name: 'Standings',
      icon: 'assets/icons/table.png',
      link: '/standings',
    ),
    ServiceData(
      name: 'Statistics',
      icon: 'assets/icons/statistic.png',
      link: '/statistics',
    ),
    ServiceData(
      name: 'Matches',
      icon: 'assets/icons/match.png',
      link: '/matches',
    ),
    ServiceData(
      name: 'News',
      icon: 'assets/icons/news.png',
      link: '/news',
    ),
    ServiceData(
      name: 'Club',
      icon: 'assets/icons/club.png',
      link: '/clubs',
    ),
    ServiceData(
      name: 'Sponsor',
      icon: 'assets/icons/sponsor.png',
      link: '/sponsor',
    ),
  ];
}

List<ClubData> clubs() {
  return [
    ClubData(name: 'Persib', logo: 'assets/images/persib.png'),
    ClubData(name: 'Persija', logo: 'assets/images/persija.png'),
    ClubData(name: 'Persebaya', logo: 'assets/images/persebaya.png'),
    ClubData(name: 'Arema FC', logo: 'assets/images/arema.png'),
    ClubData(name: 'Bali United', logo: 'assets/images/bali.png'),
    ClubData(name: 'Barito Putera', logo: 'assets/images/barito.png'),
    ClubData(name: 'Bhayangkara FC', logo: 'assets/images/bhayangkara.png'),
    ClubData(name: 'Borneo', logo: 'assets/images/borneo.png'),
    ClubData(name: 'Dewa United', logo: 'assets/images/dewa.png'),
    ClubData(name: 'Madura United', logo: 'assets/images/madura.png'),
    ClubData(name: 'Persik', logo: 'assets/images/persik.png'),
    ClubData(name: 'Persikabo', logo: 'assets/images/persikabo.png'),
    ClubData(name: 'Persis', logo: 'assets/images/persis.png'),
    ClubData(name: 'PSIS', logo: 'assets/images/psis.png'),
    ClubData(name: 'PSM', logo: 'assets/images/psm.png'),
    ClubData(name: 'RANS Nusantara', logo: 'assets/images/rans.png'),
    ClubData(name: 'PSS', logo: 'assets/images/pss.png'),
    ClubData(name: 'Persita', logo: 'assets/images/persita.png'),
  ];
}

List<PointData> standings() {
  return [
    PointData(
      club: "PSM Makasar",
      point: 50,
      clubLogo: "assets/images/psm.png",
      match: 24,
      win: 14,
      draw: 8,
      lose: 2,
      scoreGoal: 45,
      concededGoal: 19,
    ),
    PointData(
      club: "Persija",
      point: 47,
      clubLogo: "assets/images/persija.png",
      match: 24,
      win: 14,
      draw: 5,
      lose: 5,
      scoreGoal: 34,
      concededGoal: 20,
    ),
    PointData(
      club: "Persib",
      point: 46,
      clubLogo: "assets/images/persib.png",
      match: 23,
      win: 14,
      draw: 4,
      lose: 5,
      scoreGoal: 32,
      concededGoal: 25,
    ),
    PointData(
      club: "Madura United",
      point: 41,
      clubLogo: "assets/images/madura.png",
      match: 25,
      win: 12,
      draw: 5,
      lose: 8,
      scoreGoal: 32,
      concededGoal: 25,
    ),
    PointData(
      club: "Boreno FC",
      point: 40,
      clubLogo: "assets/images/borneo.png",
      match: 24,
      win: 11,
      draw: 7,
      lose: 6,
      scoreGoal: 42,
      concededGoal: 26,
    ),
    PointData(
      club: "Bali United",
      point: 37,
      clubLogo: "assets/images/bali.png",
      match: 23,
      win: 11,
      draw: 4,
      lose: 8,
      scoreGoal: 47,
      concededGoal: 34,
    ),
    PointData(
      club: "Persebaya",
      point: 37,
      clubLogo: "assets/images/persebaya.png",
      match: 22,
      win: 11,
      draw: 4,
      lose: 7,
      scoreGoal: 35,
      concededGoal: 26,
    ),
    PointData(
      club: "PSIS",
      point: 33,
      clubLogo: "assets/images/psis.png",
      match: 23,
      win: 10,
      draw: 3,
      lose: 10,
      scoreGoal: 28,
      concededGoal: 30,
    ),
    PointData(
      club: "Persita",
      point: 31,
      clubLogo: "assets/images/persita.png",
      match: 23,
      win: 9,
      draw: 4,
      lose: 10,
      scoreGoal: 30,
      concededGoal: 36,
    ),
    PointData(
      club: "Persis",
      point: 31,
      clubLogo: "assets/images/persis.png",
      match: 23,
      win: 9,
      draw: 4,
      lose: 10,
      scoreGoal: 30,
      concededGoal: 36,
    ),
    PointData(
      club: "Dewa United",
      point: 30,
      clubLogo: "assets/images/dewa.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
    PointData(
      club: "Bhayangkara FC",
      point: 30,
      clubLogo: "assets/images/bhayangkara.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
    PointData(
      club: "Arema FC",
      point: 30,
      clubLogo: "assets/images/arema.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
    PointData(
      club: "PSS",
      point: 30,
      clubLogo: "assets/images/pss.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
    PointData(
      club: "Persikabo",
      point: 30,
      clubLogo: "assets/images/persikabo.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
    PointData(
      club: "Barito Putera",
      point: 30,
      clubLogo: "assets/images/barito.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
    PointData(
      club: "Persik",
      point: 30,
      clubLogo: "assets/images/persik.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
    PointData(
      club: "Rans Nusantara",
      point: 30,
      clubLogo: "assets/images/rans.png",
      match: 25,
      win: 7,
      draw: 9,
      lose: 9,
      scoreGoal: 31,
      concededGoal: 29,
    ),
  ];
}

List<StatsData> goals() {
  return [
    StatsData(
      name: 'David da Silva',
      club: 'Persib',
      photo: 'assets/images/david_da_silva.png',
      point: 17,
      clubLogo: 'assets/images/persib.png',
    ),
    StatsData(
      name: 'Matheus Pato',
      club: 'Borneo',
      point: 13,
      clubLogo: 'assets/images/borneo.png',
    ),
    StatsData(
      name: 'Ilija Spasojevic',
      club: 'Bali United',
      point: 11,
      clubLogo: 'assets/images/bali.png',
    ),
    StatsData(
      name: 'Privat Mbarga',
      club: 'Bali United',
      point: 10,
      clubLogo: 'assets/images/bali.png',
    ),
    StatsData(
      name: 'Abdulla Yusuf Helal',
      club: 'Persija',
      point: 9,
      clubLogo: 'assets/images/persija.png',
    ),
    StatsData(
      name: 'Ciro Alves',
      club: 'Persib',
      point: 9,
      clubLogo: 'assets/images/persib.png',
    ),
    StatsData(
      name: 'Lulinha',
      club: 'Madura United',
      point: 9,
      clubLogo: 'assets/images/madura.png',
    ),
    StatsData(
      name: 'Rafael da Silva Santos',
      club: 'Barito Putera',
      point: 9,
      clubLogo: 'assets/images/barito.png',
    ),
  ];
}

List<StatsData> assits() {
  return [
    StatsData(
      name: 'Eber Bessa',
      club: 'Bali United',
      point: 7,
      clubLogo: 'assets/images/bali.png',
    ),
    StatsData(
      name: 'Fadil Sausu',
      club: 'Bali United',
      point: 6,
      clubLogo: 'assets/images/bali.png',
    ),
    StatsData(
      name: 'Privat Mbarga',
      club: 'Bali United',
      point: 6,
      clubLogo: 'assets/images/bali.png',
    ),
    StatsData(
      name: 'Stefano Lilipaly',
      club: 'Borneo',
      point: 6,
      clubLogo: 'assets/images/borneo.png',
    ),
    StatsData(
      name: 'Wiljam Pluim',
      club: 'PSM',
      point: 6,
      clubLogo: 'assets/images/psm.png',
    ),
  ];
}
