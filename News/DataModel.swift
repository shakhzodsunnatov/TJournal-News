// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let news = try? newJSONDecoder().decode(News.self, from: jsonData)

import Foundation

// MARK: - News
struct News: Codable {
    let message: String?
    let result: Results?
}

// MARK: - Result
struct Results: Codable {
    let items: [ResultItem]?
    let lastID, lastSortingValue: Int?

    enum CodingKeys: String, CodingKey {
        case items
        case lastID = "lastId"
        case lastSortingValue
    }
}

// MARK: - ResultItem
struct ResultItem: Codable {
    let type: ItemType?
    let data: ItemData?
}

// MARK: - ItemData
struct ItemData: Codable {
    let id, type: Int?
    let author: SubsiteClass?
    let subsiteID: Int?
    let subsite: SubsiteClass?
    let title: String?
    let date: Date?
    let blocks: [Block]?
    let counters: Counters?
    let commentsSeenCount: String?
    let dateFavorite, hitsCount: Int?
    let isCommentsEnabled, isLikesEnabled, isFavorited, isRepost: Bool?
    let likes: Likes?
    let isPinned, canEdit: Bool?
    
    let isRepostedByMe: Bool?
    let subscribedToTreads, isShowThanks, isStillUpdating, isFilledByEditors: Bool?
    let isEditorial, isPromoted: Bool?
    let recommendedType, audioURL: String?
    let commentEditor: CommentEditor?
    let coAuthor: String?
    let isBlur: Bool?

    enum CodingKeys: String, CodingKey {
        case id, type, author
        case subsiteID = "subsiteId"
        case subsite, title, date, blocks, counters, commentsSeenCount, dateFavorite, hitsCount, isCommentsEnabled, isLikesEnabled, isFavorited, isRepost, likes, isPinned, canEdit, isRepostedByMe, subscribedToTreads, isShowThanks, isStillUpdating, isFilledByEditors, isEditorial, isPromoted, recommendedType
        case audioURL = "audioUrl"
        case commentEditor, coAuthor, isBlur
    }
}

// MARK: - SubsiteClass
struct SubsiteClass: Codable {
    let id, type: Int?
    let subtype: Subtype?
    let name, authorDescription: String?
    let avatar: Avatar?
    let cover: Avatar?
    let isSubscribed, isVerified, isOnline, isMuted: Bool?
    let isUnsubscribable, isAvailableForMessenger: Bool?
    let prevEntry: PrevEntry?

    enum CodingKeys: String, CodingKey {
        case id, type, subtype, name
        case authorDescription = "description"
        case avatar, cover, isSubscribed, isVerified, isOnline, isMuted, isUnsubscribable, isAvailableForMessenger, prevEntry
    }
}

// MARK: - Avatar
struct Avatar: Codable {
    let type: AvatarType?
    let data: AvatarData?
}

// MARK: - AvatarData
struct AvatarData: Codable {
    let uuid: String?
    let width, height, size: Int?
    let type: DataType?
    let color, hash: String?

    enum CodingKeys: String, CodingKey {
        case uuid, width, height, size, type, color, hash
    }
}

enum DataType: String, Codable {
    case gif = "gif"
    case jpg = "jpg"
    case png = "png"
}

enum AvatarType: String, Codable {
    case image = "image"
}

// MARK: - PrevEntry
struct PrevEntry: Codable {
    let id: Int?
    let title, prevEntryDescription: String?

    enum CodingKeys: String, CodingKey {
        case id, title
        case prevEntryDescription = "description"
    }
}

enum Subtype: String, Codable {
    case community = "community"
    case personalBlog = "personal_blog"
    case blog
}

// MARK: - Block
struct Block: Codable {
    let type: String?
    let data: BlockData?
    let cover, hidden: Bool?
    let anchor: String?
}

// MARK: - BlockData
struct BlockData: Codable {
    let text, textTruncated: String?
    let telegram: Telegram?
    let title, markdown: String?
    let tweet: Tweet?
    let media, conversation: Bool?
    let items: [DataItem]?

    enum CodingKeys: String, CodingKey {
        case text
        case textTruncated = "text_truncated"
        case telegram, title, markdown, tweet, media, conversation, items
    }
}

// MARK: - DataItem
struct DataItem: Codable {
    let title: String?
    let image: Avatar?
}

// MARK: - Telegram
struct Telegram: Codable {
    let type: String?
    let data: TelegramData?
}

// MARK: - TelegramData
struct TelegramData: Codable {
    let tgData: TgData?
    let tgDataEncoded: String?

    enum CodingKeys: String, CodingKey {
        case tgData = "tg_data"
        case tgDataEncoded = "tg_data_encoded"
    }
}

// MARK: - TgData
struct TgData: Codable {
    let id: Int?
    let url: String?
    let version: Int?
    let text: String?
    let author: TgDataAuthor?
    let photos: [Photo]?
    let views: String?
    let datetime: Int?
    let isSupported: Bool?

    enum CodingKeys: String, CodingKey {
        case id, url, version, text, author, photos, views, datetime
        case isSupported = "is_supported"
    }
}

// MARK: - TgDataAuthor
struct TgDataAuthor: Codable {
    let name: String?
    let avatarURL, url: String?

    enum CodingKeys: String, CodingKey {
        case name
        case avatarURL = "avatar_url"
        case url
    }
}

// MARK: - Photo
struct Photo: Codable {
    let width, height: Int?
    let leonardoURL: String?

    enum CodingKeys: String, CodingKey {
        case width, height
        case leonardoURL = "leonardo_url"
    }
}

//enum TelegramType: String, Codable {
//    case media = "media"
//    case telegram = "telegram"
//    case text = "text"
//    case tweet = "tweet"
//    case video = "video"
//}

// MARK: - Tweet
struct Tweet: Codable {
    let type: String?
    let data: TweetData?
}

// MARK: - TweetData
struct TweetData: Codable {
    let tweetData: TweetDataClass?
    let tweetDataEncoded, version: String?

    enum CodingKeys: String, CodingKey {
        case tweetData = "tweet_data"
        case tweetDataEncoded = "tweet_data_encoded"
        case version
    }
}

// MARK: - TweetDataClass
struct TweetDataClass: Codable {
    let createdAt: String?
    let id: Double?
    let idStr, fullText: String?
    let truncated: Bool?
    let displayTextRange: [Int]?
    let entities: TweetDataEntities?
    let extendedEntities: ExtendedEntities?
    let source: String?
    let user: User?
    let isQuoteStatus: Bool?
    let retweetCount, favoriteCount: Int?
    let favorited, retweeted, possiblySensitive, possiblySensitiveAppealable: Bool?
    let lang, processedText: String?

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case idStr = "id_str"
        case fullText = "full_text"
        case truncated
        case displayTextRange = "display_text_range"
        case entities
        case extendedEntities = "extended_entities"
        case source
        case user
        case isQuoteStatus = "is_quote_status"
        case retweetCount = "retweet_count"
        case favoriteCount = "favorite_count"
        case favorited, retweeted
        case possiblySensitive = "possibly_sensitive"
        case possiblySensitiveAppealable = "possibly_sensitive_appealable"
        case lang
        case processedText = "processed_text"
    }
}

// MARK: - TweetDataEntities
struct TweetDataEntities: Codable {
    let userMentions: [UserMention]?
    let media: [Media]?

    enum CodingKeys: String, CodingKey {
        case userMentions = "user_mentions"
        case media
    }
}

// MARK: - Media
struct Media: Codable {
    let id: Double?
    let idStr: String?
    let indices: [Int]?
    let mediaURL: String?
    let mediaURLHTTPS: String?
    let url: String?
    let displayURL: String?
    let expandedURL: String?
    let type: String?
    let sizes: Sizes?
    let videoInfo: VideoInfo?
    let additionalMediaInfo: AdditionalMediaInfo?

    enum CodingKeys: String, CodingKey {
        case id
        case idStr = "id_str"
        case indices
        case mediaURL = "media_url"
        case mediaURLHTTPS = "media_url_https"
        case url
        case displayURL = "display_url"
        case expandedURL = "expanded_url"
        case type, sizes
        case videoInfo = "video_info"
        case additionalMediaInfo = "additional_media_info"
    }
}

// MARK: - AdditionalMediaInfo
struct AdditionalMediaInfo: Codable {
    let monetizable: Bool?
}

// MARK: - Sizes
struct Sizes: Codable {
    let small, medium, large, thumb: Large?
}

// MARK: - Large
struct Large: Codable {
    let w, h: Int?
    let resize: Resize?
}

enum Resize: String, Codable {
    case crop = "crop"
    case fit = "fit"
}

// MARK: - VideoInfo
struct VideoInfo: Codable {
    let aspectRatio: [Int]?
    let durationMillis: Int?
    let variants: [Variant]?

    enum CodingKeys: String, CodingKey {
        case aspectRatio = "aspect_ratio"
        case durationMillis = "duration_millis"
        case variants
    }
}

// MARK: - Variant
struct Variant: Codable {
    let bitrate: Int?
    let contentType: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case bitrate
        case contentType = "content_type"
        case url
    }
}

// MARK: - UserMention
struct UserMention: Codable {
    let screenName, name: String?
    let id: Int?
    let idStr: String?
    let indices: [Int]?

    enum CodingKeys: String, CodingKey {
        case screenName = "screen_name"
        case name, id
        case idStr = "id_str"
        case indices
    }
}

// MARK: - ExtendedEntities
struct ExtendedEntities: Codable {
    let media: [Media]?
}

// MARK: - User
struct User: Codable {
    let id: Double?
    let idStr, name, screenName, location: String?
    let userDescription: String?
    let url: String?
    let entities: UserEntities?
    let protected: Bool?
    let followersCount, friendsCount, listedCount: Int?
    let createdAt: String?
    let favouritesCount: Int?
    let geoEnabled, verified: Bool?
    let statusesCount: Int?
    let contributorsEnabled, isTranslator, isTranslationEnabled: Bool?
    let profileBackgroundColor: String?
    let profileBackgroundTile: Bool?
    let profileImageURL: String?
    let profileImageURLHTTPS, profileBannerURL: String?
    let profileLinkColor, profileSidebarBorderColor, profileSidebarFillColor, profileTextColor: String?
    let profileUseBackgroundImage, hasExtendedProfile, defaultProfile, defaultProfileImage: Bool?
    let translatorType: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case idStr = "id_str"
        case name
        case screenName = "screen_name"
        case location
        case userDescription = "description"
        case url, entities, protected
        case followersCount = "followers_count"
        case friendsCount = "friends_count"
        case listedCount = "listed_count"
        case createdAt = "created_at"
        case favouritesCount = "favourites_count"
        case geoEnabled = "geo_enabled"
        case verified
        case statusesCount = "statuses_count"
        case contributorsEnabled = "contributors_enabled"
        case isTranslator = "is_translator"
        case isTranslationEnabled = "is_translation_enabled"
        case profileBackgroundColor = "profile_background_color"
        case profileBackgroundTile = "profile_background_tile"
        case profileImageURL = "profile_image_url"
        case profileImageURLHTTPS = "profile_image_url_https"
        case profileBannerURL = "profile_banner_url"
        case profileLinkColor = "profile_link_color"
        case profileSidebarBorderColor = "profile_sidebar_border_color"
        case profileSidebarFillColor = "profile_sidebar_fill_color"
        case profileTextColor = "profile_text_color"
        case profileUseBackgroundImage = "profile_use_background_image"
        case hasExtendedProfile = "has_extended_profile"
        case defaultProfile = "default_profile"
        case defaultProfileImage = "default_profile_image"
        case translatorType = "translator_type"
    }
}

// MARK: - UserEntities
struct UserEntities: Codable {
    let url, entitiesDescription: Description?

    enum CodingKeys: String, CodingKey {
        case url
        case entitiesDescription = "description"
    }
}

// MARK: - Description
struct Description: Codable {
    let urls: [URLElement]?
}

// MARK: - URLElement
struct URLElement: Codable {
    let url, expandedURL: String?
    let displayURL: String?
    let indices: [Int]?

    enum CodingKeys: String, CodingKey {
        case url
        case expandedURL = "expanded_url"
        case displayURL = "display_url"
        case indices
    }
}

// MARK: - CommentEditor
struct CommentEditor: Codable {
    let enabled: Bool?
}

// MARK: - Counters
struct Counters: Codable {
    let comments, favorites, reposts: Int?
}

// MARK: - Likes
struct Likes: Codable {
    let summ, counter, isLiked: Int?
    let isHidden: Bool?
}

enum ItemType: String, Codable {
    case entry = "entry"
}

// MARK: - Encode/decode helpers

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}
