import Foundation

/**
 A list of possible requests
 */

internal enum Route {

  // RSS
  case rssTopStories
  case rssWorld
  case rssUnitedKingdom
  case rssBusiness
  case rssPolitics
  case rssHealth
  case rssEducationAndFamily
  case rssScienceAndEnvironment
  case rssTechnology
  case rssEntertainmentAndArts

  internal var requestProperties: (method: Method, path: String, params: [String: Any]) {
    switch self {
    case .rssTopStories:
      return (.GET, "/news/rss.xml", [:])
    case .rssWorld:
      return (.GET, "/news/world/rss.xml", [:])
    case .rssUnitedKingdom:
      return (.GET, "/news/uk/rss.xml", [:])
    case .rssBusiness:
      return (.GET, "/news/business/rss.xml", [:])
    case .rssPolitics:
      return (.GET, "/news/politics/rss.xml", [:])
    case .rssHealth:
      return (.GET, "/news/health/rss.xml", [:])
    case .rssEducationAndFamily:
      return (.GET, "/news/education/rss.xml", [:])
    case .rssScienceAndEnvironment:
      return (.GET, "/news/science_and_environment/rss.xml", [:])
    case .rssTechnology:
      return (.GET, "/news/technology/rss.xml", [:])
    case .rssEntertainmentAndArts:
      return (.GET, "/news/entertainment_and_arts/rss.xml", [:])
    }
  }
}

extension Route {
  internal static func routeFor(category: NewsCategory) -> Route {
    switch category {
    case .topStories:
      return Route.rssTopStories
    case .world:
      return Route.rssWorld
    case .unitedKingdom:
      return Route.rssUnitedKingdom
    case .business:
      return Route.rssBusiness
    case .politics:
      return Route.rssPolitics
    case .health:
      return Route.rssHealth
    case .educationAndFamily:
      return Route.rssEducationAndFamily
    case .scienceAndEnvironment:
      return Route.rssScienceAndEnvironment
    case .technology:
      return Route.rssTechnology
    case .entertainmentAndArts:
      return Route.rssEntertainmentAndArts
    }
  }
}
