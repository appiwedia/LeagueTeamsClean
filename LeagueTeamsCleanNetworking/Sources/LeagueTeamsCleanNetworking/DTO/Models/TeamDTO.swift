import Foundation

/// Represents a data transfer object for a team associated to a league.
///
/// This struct is designed to map team information, typically fetched from a JSON API.
public struct TeamDTO: Decodable, Hashable {

    /// Unique identifier for the team.
    public let idTeam: String?

    /// Identifier for the soccer XML representation of the team.
    public let idSoccerXML: String?

    /// Identifier from the API that provides football data.
    public let idAPIfootball: String?

    /// An indicator of the team's popularity or importance.
    public let intLoved: String?

    /// Full name of the team.
    public let strTeam: String?

    /// Shortened or abbreviated name of the team.
    public let strTeamShort: String?

    /// Alternate names or titles for the team.
    public let strAlternate: String?

    /// Year the team was formed or established.
    public let intFormedYear: String?

    /// The type of sport the team plays, e.g., "Football" or "Basketball".
    public let strSport: String?

    /// Primary league in which the team competes.
    public let strLeague: String?
    
    /// Identifier for the soccer Primary league.
    public let idLeague: String?

    /// Secondary league in which the team might compete.
    public let strLeague2: String?
    
    /// Identifier for the soccer Secondary league.
    public let idLeague2: String?

    /// Tertiary league associated with the team.
    public let strLeague3: String?
    
    /// Identifier for the soccer Tertiary league.
    public let idLeague3: String?

    /// Quaternary league associated with the team.
    public let strLeague4: String?
    
    /// Identifier for the soccer Queternary league.
    public let idLeague4: String?

    /// Quinary league associated with the team.
    public let strLeague5: String?
    
    /// Identifier for the soccer Quinary league.
    public let idLeague5: String?

    /// Senary league associated with the team.
    public let strLeague6: String?
    
    /// Identifier for the soccer Senary league.
    public let idLeague6: String?

    /// Septenary league associated with the team.
    public let strLeague7: String?
    
    /// Identifier for the soccer Septenary league.
    public let idLeague7: String?

    /// Division in which the team plays within its primary league.
    public let strDivision: String?

    /// Current manager or coach of the team.
    public let strManager: String?

    /// Home stadium of the team.
    public let strStadium: String?

    /// Keywords related to the team for search.
    public let strKeywords: String?

    /// RSS feed URL related to the team, for news or updates.
    public let strRss: String?

    /// Thumbnail image URL of the team's stadium.
    public let strStadiumThumb: String?

    /// Description of the team's stadium.
    public let strStadiumDescription: String?

    /// Physical location or address of the team's stadium.
    public let strStadiumLocation: String?

    /// Seating capacity of the team's stadium.
    public let intStadiumCapacity: String?

    /// Official website URL of the team.
    public let strWebsite: String?

    /// Official Facebook page or profile URL of the team.
    public let strFacebook: String?

    /// Official Twitter handle or profile URL of the team.
    public let strTwitter: String?

    /// Official Instagram page or profile URL of the team.
    public let strInstagram: String?

    /// English description of the team.
    public let strDescriptionEN: String?

    /// German description of the team.
    public let strDescriptionDE: String?

    /// French description of the team.
    public let strDescriptionFR: String?

    /// Chinese description of the team.
    public let strDescriptionCN: String?

    /// Italian description of the team.
    public let strDescriptionIT: String?

    /// Japanese description of the team.
    public let strDescriptionJP: String?

    /// Russian description of the team.
    public let strDescriptionRU: String?

    /// Spanish description of the team.
    public let strDescriptionES: String?

    /// Portuguese description of the team.
    public let strDescriptionPT: String?

    /// Swedish description of the team.
    public let strDescriptionSE: String?

    /// Dutch description of the team.
    public let strDescriptionNL: String?

    /// Hungarian description of the team.
    public let strDescriptionHU: String?

    /// Norwegian description of the team.
    public let strDescriptionNo: String?

    /// Israeli description of the team.
    public let strDescriptionIL: String?

    /// Polish description of the team.
    public let strDescriptionPL: String?

    /// Primary kit or uniform color of the team.
    public let strKitColour1: String?

    /// Secondary kit or uniform color of the team.
    public let strKitColour2: String?

    /// Tertiary kit or uniform color of the team.
    public let strKitColour3: String?

    /// Gender for which the team competes (e.g., "Men's", "Women's").
    public let strGender: String?

    /// Country in which the team is based or represents.
    public let strCountry: String?

    /// URL for the team's official badge or emblem.
    public let strTeamBadge: String?

    /// URL for the team's official jersey or shirt.
    public let strTeamJersey: String?

    /// URL for the team's official logo.
    public let strTeamLogo: String?

    /// First fan art URL related to the team.
    public let strTeamFanart1: String?

    /// Second fan art URL related to the team.
    public let strTeamFanart2: String?

    /// Third fan art URL related to the team.
    public let strTeamFanart3: String?

    /// Fourth fan art URL related to the team.
    public let strTeamFanart4: String?

    /// Banner image URL for the team.
    public let strTeamBanner: String?

    /// Official YouTube channel or video URL related to the team.
    public let strYoutube: String?

    /// Indicates whether the team's data is locked or can be modified. Typically, a value of "unlocked" might allow modifications.
    public let strLocked: String?
}
