import Foundation

// MARK: - Team
struct TeamDTO: Codable, Hashable {

    let idTeam, idSoccerXml, idApIfootball, intLoved: String?
    let strTeam, strTeamShort, strAlternate, intFormedYear: String?
    let strSport, strLeague, idLeague, strLeague2: String?
    let idLeague2, strLeague3, idLeague3, strLeague4: String?
    let idLeague4, strLeague5, idLeague5, strLeague6: String?
    let idLeague6, strLeague7, idLeague7, strDivision: String?
    let strManager, strStadium, strKeywords, strRss: String?
    let strStadiumThumb: String?
    let strStadiumDescription, strStadiumLocation, intStadiumCapacity, strWebsite: String?
    let strFacebook, strTwitter, strInstagram, strDescriptionEn: String?
    let strDescriptionDe, strDescriptionFr, strDescriptionCn, strDescriptionIt: String?
    let strDescriptionJp, strDescriptionRu, strDescriptionEs, strDescriptionPt: String?
    let strDescriptionSe, strDescriptionNl, strDescriptionHu, strDescriptionNo: String?
    let strDescriptionIl, strDescriptionPl, strKitColour1, strKitColour2: String?
    let strKitColour3, strGender, strCountry: String?
    let strTeamBadge, strTeamJersey, strTeamLogo: String?
    let strTeamFanart1, strTeamFanart2, strTeamFanart3, strTeamFanart4: String?
    let strTeamBanner: String?
    let strYoutube, strLocked: String?

    enum CodingKeys: String, CodingKey {
        case idTeam
        case idSoccerXml = "idSoccerXML"
        case idApIfootball = "idAPIfootball"
        case intLoved, strTeam, strTeamShort, strAlternate, intFormedYear, strSport, strLeague, idLeague, strLeague2, idLeague2, strLeague3, idLeague3, strLeague4, idLeague4, strLeague5, idLeague5, strLeague6, idLeague6, strLeague7, idLeague7, strDivision, strManager, strStadium, strKeywords
        case strRss = "strRSS"
        case strStadiumThumb, strStadiumDescription, strStadiumLocation, intStadiumCapacity, strWebsite, strFacebook, strTwitter, strInstagram
        case strDescriptionEn = "strDescriptionEN"
        case strDescriptionDe = "strDescriptionDE"
        case strDescriptionFr = "strDescriptionFR"
        case strDescriptionCn = "strDescriptionCN"
        case strDescriptionIt = "strDescriptionIT"
        case strDescriptionJp = "strDescriptionJP"
        case strDescriptionRu = "strDescriptionRU"
        case strDescriptionEs = "strDescriptionES"
        case strDescriptionPt = "strDescriptionPT"
        case strDescriptionSe = "strDescriptionSE"
        case strDescriptionNl = "strDescriptionNL"
        case strDescriptionHu = "strDescriptionHU"
        case strDescriptionNo = "strDescriptionNO"
        case strDescriptionIl = "strDescriptionIL"
        case strDescriptionPl = "strDescriptionPL"
        case strKitColour1, strKitColour2, strKitColour3, strGender, strCountry, strTeamBadge, strTeamJersey, strTeamLogo, strTeamFanart1, strTeamFanart2, strTeamFanart3, strTeamFanart4, strTeamBanner, strYoutube, strLocked
    }
}
