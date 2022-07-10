// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let news = try? newJSONDecoder().decode(News.self, from: jsonData)

import Foundation

// MARK: - News
//struct News: Codable {
//    let message: String?
//    let result: Results?
//}
//
//// MARK: - Result
//struct Results: Codable {
//    let items: [ResultItem]?
//    let lastID, lastSortingValue: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case items
//        case lastID = "lastId"
//        case lastSortingValue
//    }
//}
//
//// MARK: - ResultItem
//struct ResultItem: Codable {
//    let type: ItemType?
//    let data: ItemData?
//}
//
//// MARK: - ItemData
//struct ItemData: Codable {
//    let id, type: Int?
//    let author: SubsiteClass?
//    let subsiteID: Int?
//    let subsite: SubsiteClass?
//    let title: String?
//    let date: Date?
//    let blocks: [Block]?
//    let counters: Counters?
//    let commentsSeenCount: String?
//    let dateFavorite, hitsCount: Int?
//    let isCommentsEnabled, isLikesEnabled, isFavorited, isRepost: Bool?
//    let likes: Likes?
//    let isPinned, canEdit: Bool?
//
//    let isRepostedByMe: Bool?
//    let subscribedToTreads, isShowThanks, isStillUpdating, isFilledByEditors: Bool?
//    let isEditorial, isPromoted: Bool?
//    let recommendedType, audioURL: String?
//    let commentEditor: CommentEditor?
//    let coAuthor: String?
//    let isBlur: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case id, type, author
//        case subsiteID = "subsiteId"
//        case subsite, title, date, blocks, counters, commentsSeenCount, dateFavorite, hitsCount, isCommentsEnabled, isLikesEnabled, isFavorited, isRepost, likes, isPinned, canEdit, isRepostedByMe, subscribedToTreads, isShowThanks, isStillUpdating, isFilledByEditors, isEditorial, isPromoted, recommendedType
//        case audioURL = "audioUrl"
//        case commentEditor, coAuthor, isBlur
//    }
//}
//
//// MARK: - SubsiteClass
//struct SubsiteClass: Codable {
//    let id, type: Int?
//    let subtype: Subtype?
//    let name, authorDescription: String?
//    let avatar: Avatar?
//    let cover: Avatar?
//    let isSubscribed, isVerified, isOnline, isMuted: Bool?
//    let isUnsubscribable, isAvailableForMessenger: Bool?
//    let prevEntry: PrevEntry?
//
//    enum CodingKeys: String, CodingKey {
//        case id, type, subtype, name
//        case authorDescription = "description"
//        case avatar, cover, isSubscribed, isVerified, isOnline, isMuted, isUnsubscribable, isAvailableForMessenger, prevEntry
//    }
//}
//
//// MARK: - Avatar
//struct Avatar: Codable {
//    let type: AvatarType?
//    let data: AvatarData?
//}
//
//// MARK: - AvatarData
//struct AvatarData: Codable {
//    let uuid: String?
//    let width, height, size: Int?
//    let type: DataType?
//    let color, hash: String?
//
//    enum CodingKeys: String, CodingKey {
//        case uuid, width, height, size, type, color, hash
//    }
//}
//
//enum DataType: String, Codable {
//    case gif = "gif"
//    case jpg = "jpg"
//    case png = "png"
//    case webp = "webp"
//}
//
//enum AvatarType: String, Codable {
//    case image = "image"
//}
//
//// MARK: - PrevEntry
//struct PrevEntry: Codable {
//    let id: Int?
//    let title, prevEntryDescription: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id, title
//        case prevEntryDescription = "description"
//    }
//}
//
//enum Subtype: String, Codable {
//    case community = "community"
//    case personalBlog = "personal_blog"
//    case blog
//}
//
//// MARK: - Block
//struct Block: Codable {
//    let type: String?
//    let data: BlockData?
//    let cover, hidden: Bool?
//    let anchor: String?
//}
//
//// MARK: - BlockData
//struct BlockData: Codable {
//    let text, textTruncated: String?
//    let telegram: Telegram?
//    let title, markdown: String?
//    let tweet: Tweet?
//    let media, conversation: Bool?
//    let items: [DataItem]?
//
//    enum CodingKeys: String, CodingKey {
//        case text
//        case textTruncated = "text_truncated"
//        case telegram, title, markdown, tweet, media, conversation, items
//    }
//}
//
//// MARK: - DataItem
//struct DataItem: Codable {
//    let title: String?
//    let image: Avatar?
//}
//
//// MARK: - Telegram
//struct Telegram: Codable {
//    let type: String?
//    let data: TelegramData?
//}
//
//// MARK: - TelegramData
//struct TelegramData: Codable {
//    let tgData: TgData?
//    let tgDataEncoded: String?
//
//    enum CodingKeys: String, CodingKey {
//        case tgData = "tg_data"
//        case tgDataEncoded = "tg_data_encoded"
//    }
//}
//
//// MARK: - TgData
//struct TgData: Codable {
//    let id: Int?
//    let url: String?
//    let version: Int?
//    let text: String?
//    let author: TgDataAuthor?
//    let photos: [Photo]?
//    let views: String?
//    let datetime: Int?
//    let isSupported: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case id, url, version, text, author, photos, views, datetime
//        case isSupported = "is_supported"
//    }
//}
//
//// MARK: - TgDataAuthor
//struct TgDataAuthor: Codable {
//    let name: String?
//    let avatarURL, url: String?
//
//    enum CodingKeys: String, CodingKey {
//        case name
//        case avatarURL = "avatar_url"
//        case url
//    }
//}
//
//// MARK: - Photo
//struct Photo: Codable {
//    let width, height: Int?
//    let leonardoURL: String?
//
//    enum CodingKeys: String, CodingKey {
//        case width, height
//        case leonardoURL = "leonardo_url"
//    }
//}
//
////enum TelegramType: String, Codable {
////    case media = "media"
////    case telegram = "telegram"
////    case text = "text"
////    case tweet = "tweet"
////    case video = "video"
////}
//
//// MARK: - Tweet
//struct Tweet: Codable {
//    let type: String?
//    let data: TweetData?
//}
//
//// MARK: - TweetData
//struct TweetData: Codable {
//    let tweetData: TweetDataClass?
//    let tweetDataEncoded, version: String?
//
//    enum CodingKeys: String, CodingKey {
//        case tweetData = "tweet_data"
//        case tweetDataEncoded = "tweet_data_encoded"
//        case version
//    }
//}
//
//// MARK: - TweetDataClass
//struct TweetDataClass: Codable {
//    let createdAt: String?
//    let id: Double?
//    let idStr, fullText: String?
//    let truncated: Bool?
//    let displayTextRange: [Int]?
//    let entities: TweetDataEntities?
//    let extendedEntities: ExtendedEntities?
//    let source: String?
//    let user: User?
//    let isQuoteStatus: Bool?
//    let retweetCount, favoriteCount: Int?
//    let favorited, retweeted, possiblySensitive, possiblySensitiveAppealable: Bool?
//    let lang, processedText: String?
//
//    enum CodingKeys: String, CodingKey {
//        case createdAt = "created_at"
//        case id
//        case idStr = "id_str"
//        case fullText = "full_text"
//        case truncated
//        case displayTextRange = "display_text_range"
//        case entities
//        case extendedEntities = "extended_entities"
//        case source
//        case user
//        case isQuoteStatus = "is_quote_status"
//        case retweetCount = "retweet_count"
//        case favoriteCount = "favorite_count"
//        case favorited, retweeted
//        case possiblySensitive = "possibly_sensitive"
//        case possiblySensitiveAppealable = "possibly_sensitive_appealable"
//        case lang
//        case processedText = "processed_text"
//    }
//}
//
//// MARK: - TweetDataEntities
//struct TweetDataEntities: Codable {
//    let userMentions: [UserMention]?
//    let media: [Media]?
//
//    enum CodingKeys: String, CodingKey {
//        case userMentions = "user_mentions"
//        case media
//    }
//}
//
//// MARK: - Media
//struct Media: Codable {
//    let id: Double?
//    let idStr: String?
//    let indices: [Int]?
//    let mediaURL: String?
//    let mediaURLHTTPS: String?
//    let url: String?
//    let displayURL: String?
//    let expandedURL: String?
//    let type: String?
//    let sizes: Sizes?
//    let videoInfo: VideoInfo?
//    let additionalMediaInfo: AdditionalMediaInfo?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case idStr = "id_str"
//        case indices
//        case mediaURL = "media_url"
//        case mediaURLHTTPS = "media_url_https"
//        case url
//        case displayURL = "display_url"
//        case expandedURL = "expanded_url"
//        case type, sizes
//        case videoInfo = "video_info"
//        case additionalMediaInfo = "additional_media_info"
//    }
//}
//
//// MARK: - AdditionalMediaInfo
//struct AdditionalMediaInfo: Codable {
//    let monetizable: Bool?
//}
//
//// MARK: - Sizes
//struct Sizes: Codable {
//    let small, medium, large, thumb: Large?
//}
//
//// MARK: - Large
//struct Large: Codable {
//    let w, h: Int?
//    let resize: Resize?
//}
//
//enum Resize: String, Codable {
//    case crop = "crop"
//    case fit = "fit"
//}
//
//// MARK: - VideoInfo
//struct VideoInfo: Codable {
//    let aspectRatio: [Int]?
//    let durationMillis: Int?
//    let variants: [Variant]?
//
//    enum CodingKeys: String, CodingKey {
//        case aspectRatio = "aspect_ratio"
//        case durationMillis = "duration_millis"
//        case variants
//    }
//}
//
//// MARK: - Variant
//struct Variant: Codable {
//    let bitrate: Int?
//    let contentType: String?
//    let url: String?
//
//    enum CodingKeys: String, CodingKey {
//        case bitrate
//        case contentType = "content_type"
//        case url
//    }
//}
//
//// MARK: - UserMention
//struct UserMention: Codable {
//    let screenName, name: String?
//    let id: Int?
//    let idStr: String?
//    let indices: [Int]?
//
//    enum CodingKeys: String, CodingKey {
//        case screenName = "screen_name"
//        case name, id
//        case idStr = "id_str"
//        case indices
//    }
//}
//
//// MARK: - ExtendedEntities
//struct ExtendedEntities: Codable {
//    let media: [Media]?
//}
//
//// MARK: - User
//struct User: Codable {
//    let id: Double?
//    let idStr, name, screenName, location: String?
//    let userDescription: String?
//    let url: String?
//    let entities: UserEntities?
//    let protected: Bool?
//    let followersCount, friendsCount, listedCount: Int?
//    let createdAt: String?
//    let favouritesCount: Int?
//    let geoEnabled, verified: Bool?
//    let statusesCount: Int?
//    let contributorsEnabled, isTranslator, isTranslationEnabled: Bool?
//    let profileBackgroundColor: String?
//    let profileBackgroundTile: Bool?
//    let profileImageURL: String?
//    let profileImageURLHTTPS, profileBannerURL: String?
//    let profileLinkColor, profileSidebarBorderColor, profileSidebarFillColor, profileTextColor: String?
//    let profileUseBackgroundImage, hasExtendedProfile, defaultProfile, defaultProfileImage: Bool?
//    let translatorType: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case idStr = "id_str"
//        case name
//        case screenName = "screen_name"
//        case location
//        case userDescription = "description"
//        case url, entities, protected
//        case followersCount = "followers_count"
//        case friendsCount = "friends_count"
//        case listedCount = "listed_count"
//        case createdAt = "created_at"
//        case favouritesCount = "favourites_count"
//        case geoEnabled = "geo_enabled"
//        case verified
//        case statusesCount = "statuses_count"
//        case contributorsEnabled = "contributors_enabled"
//        case isTranslator = "is_translator"
//        case isTranslationEnabled = "is_translation_enabled"
//        case profileBackgroundColor = "profile_background_color"
//        case profileBackgroundTile = "profile_background_tile"
//        case profileImageURL = "profile_image_url"
//        case profileImageURLHTTPS = "profile_image_url_https"
//        case profileBannerURL = "profile_banner_url"
//        case profileLinkColor = "profile_link_color"
//        case profileSidebarBorderColor = "profile_sidebar_border_color"
//        case profileSidebarFillColor = "profile_sidebar_fill_color"
//        case profileTextColor = "profile_text_color"
//        case profileUseBackgroundImage = "profile_use_background_image"
//        case hasExtendedProfile = "has_extended_profile"
//        case defaultProfile = "default_profile"
//        case defaultProfileImage = "default_profile_image"
//        case translatorType = "translator_type"
//    }
//}
//
//// MARK: - UserEntities
//struct UserEntities: Codable {
//    let url, entitiesDescription: Description?
//
//    enum CodingKeys: String, CodingKey {
//        case url
//        case entitiesDescription = "description"
//    }
//}
//
//// MARK: - Description
//struct Description: Codable {
//    let urls: [URLElement]?
//}
//
//// MARK: - URLElement
//struct URLElement: Codable {
//    let url, expandedURL: String?
//    let displayURL: String?
//    let indices: [Int]?
//
//    enum CodingKeys: String, CodingKey {
//        case url
//        case expandedURL = "expanded_url"
//        case displayURL = "display_url"
//        case indices
//    }
//}
//
//// MARK: - CommentEditor
//struct CommentEditor: Codable {
//    let enabled: Bool?
//}
//
//// MARK: - Counters
//struct Counters: Codable {
//    let comments, favorites, reposts: Int?
//}
//
//// MARK: - Likes
//struct Likes: Codable {
//    let summ, counter, isLiked: Int?
//    let isHidden: Bool?
//}
//
//enum ItemType: String, Codable {
//    case entry = "entry"
//}
//
//// MARK: - Encode/decode helpers
//
//class JSONCodingKey: CodingKey {
//    let key: String
//
//    required init?(intValue: Int) {
//        return nil
//    }
//
//    required init?(stringValue: String) {
//        key = stringValue
//    }
//
//    var intValue: Int? {
//        return nil
//    }
//
//    var stringValue: String {
//        return key
//    }
//}

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
    let author: Author?
    let audioURL: String?
    let isFilledByEditors, isCommentsEnabled: Bool?
    let id: Int?
    let isPromoted: Bool?
    let isRepostedByMe, isBlur, isFavorited: Bool?
    let coAuthor: String?
    let type: Int?
    let blocks: [Block]?
    let commentEditor: CommentEditor?
    let isLikesEnabled: Bool?
    let commentsSeenCount: Int?
    let subsite: Author?
    let recommendedType: String?
    let likes: Likes?
    let dateFavorite: Int?
    let canEdit, isPinned: Bool?
    let date: Date?
    let subscribedToTreads: Bool?
    let counters: Counters?
    let hitsCount: Int?
    let isEditorial, isShowThanks: Bool?
    let subsiteID: Int?
    let title: String?
    let isStillUpdating, isRepost: Bool?

    enum CodingKeys: String, CodingKey {
        case author
        case audioURL = "audioUrl"
        case isFilledByEditors, isCommentsEnabled, id, isPromoted, isRepostedByMe, isBlur, isFavorited, coAuthor, type, blocks, commentEditor, isLikesEnabled, commentsSeenCount, subsite, recommendedType, likes, dateFavorite, canEdit, isPinned, date, subscribedToTreads, counters, hitsCount, isEditorial, isShowThanks
        case subsiteID = "subsiteId"
        case  title,  isStillUpdating, isRepost
    }
}

// MARK: - Author
struct Author: Codable {
    let id: Int?
    let authorDescription: String?
    let isSubscribed: Bool?
    let type: Int?
    let isVerified: Bool?
    let avatar: Avatar?
    let isOnline, isMuted: Bool?
    let cover: Avatar?
    let isAvailableForMessenger, isUnsubscribable: Bool?
    let subtype: Subtype?
    let name: String?
    let prevEntry: PrevEntry?

    enum CodingKeys: String, CodingKey {
        case id
        case authorDescription = "description"
        case isSubscribed, type, isVerified, avatar, isOnline, isMuted, cover, isAvailableForMessenger, isUnsubscribable, subtype, name, prevEntry
    }
}

// MARK: - Avatar
struct Avatar: Codable {
    let type: AvatarType?
    let data: AvatarData?
}

// MARK: - AvatarData
struct AvatarData: Codable {
    let height: Int?
    let color, hash: String?
    let width: Int?
    let uuid: String?
    let size: Int?
    let type: DataType?

    enum CodingKeys: String, CodingKey {
        case height, color, hash
        case width, uuid, size, type
    }
}

enum DataType: String, Codable {
    case gif = "gif"
    case jpg = "jpg"
    case png = "png"
    case webp = "webp"
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
    let anchor: String?
    let data: BlockData?
    let type: NewsType?
    let cover, hidden: Bool?
}

// MARK: - BlockData
struct BlockData: Codable {
    let items: ItemsUnion?
    let uid, hash, tmpHash: String?
    let isPublic: Bool?
    let title: String?
    let dateCreated: Int?
    let text, textTruncated: String?
    let conversation: Bool?
    let tweet: Tweet?
    let markdown: String?
    let media: Bool?
    let telegram: Telegram?
    let type: NewsType?

    enum CodingKeys: String, CodingKey {
        case items, uid, hash
        case tmpHash = "tmp_hash"
        case isPublic = "is_public"
        case title
        case dateCreated = "date_created"
        case text
        case textTruncated = "text_truncated"
        case conversation, tweet, markdown, media, telegram, type
    }
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

// MARK: - Photo
struct Photo: Codable {
    let width, height: Int?
    let leonardoURL: String?

    enum CodingKeys: String, CodingKey {
        case width, height
        case leonardoURL = "leonardo_url"
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

enum ItemsUnion: Codable {
    case itemsClass(ItemsClass)
    case itemsItemArray([ItemsItem])
    case itemSingle(ItemsItem)
    case string([String])

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode([ItemsItem].self) {
            self = .itemsItemArray(x)
            return
        }
        if let x = try? container.decode(ItemsClass.self) {
            self = .itemsClass(x)
            return
        }
        if let x = try? container.decode([String].self) {
            self = .string(x)
            return
        }
        if let x = try? container.decode(ItemsItem.self) {
            self = .itemSingle(x)
        }
        throw DecodingError.typeMismatch(ItemsUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for ItemsUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .itemsClass(let x):
            try container.encode(x)
        case .itemsItemArray(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        case .itemSingle(let x):
            try container.encode(x)
        }
    }
}

// MARK: - ItemsItem
struct ItemsItem: Codable {
    let title: String?
    let image: Avatar?
}

// MARK: - ItemsClass
struct ItemsClass: Codable {
    let a16574399640, a16574399992, a16574399641: String?
}

// MARK: - Tweet
struct Tweet: Codable {
    let type: NewsType?
    let data: TweetData?
}

enum NewsType: Codable {
   case string(String)
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let string = try? container.decode(String.self)
        switch (string) {
        case (let s?):
            self = .string(s)
        default:
            throw DecodingError.valueNotFound(
                NewsType.self,
                .init(codingPath: decoder.codingPath,
                      debugDescription: "Value must be either string, array or a dictionary!",
                      underlyingError: nil))
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let s):
            try container.encode(s)
        }
    }
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
    let source: String?
    let truncated, isQuoteStatus: Bool?
    let favoriteCount: Int?
    let possiblySensitive: Bool?
    let lang: String?
    let entities: TweetDataEntities?
    let possiblySensitiveAppealable: Bool?
    let retweetCount: Int?
    let favorited: Bool?
    let id: Double?
    let fullText: String?
    let displayTextRange: [Int]?
    let extendedEntities: ExtendedEntities?
    let user: User?
    let retweeted: Bool?
    let processedText, createdAt: String?
    let idStr: String?

    enum CodingKeys: String, CodingKey {
        case source, truncated
        case isQuoteStatus = "is_quote_status"
        case favoriteCount = "favorite_count"
        case possiblySensitive = "possibly_sensitive"
        case lang, entities
        case possiblySensitiveAppealable = "possibly_sensitive_appealable"
        case retweetCount = "retweet_count"
        case favorited, id
        case fullText = "full_text"
        case displayTextRange = "display_text_range"
        case extendedEntities = "extended_entities"
        case user, retweeted
        case processedText = "processed_text"
        case createdAt = "created_at"
        case idStr = "id_str"
    }
}

// MARK: - TweetDataEntities
struct TweetDataEntities: Codable {
    let media: [Media]?
    let hashtags: [Hashtag]?

    enum CodingKeys: String, CodingKey {
        case media, hashtags
    }
}

// MARK: - Hashtag
struct Hashtag: Codable {
    let indices: [Int]?
    let text: String?
}

// MARK: - Media
struct Media: Codable {
    let idStr: String?
    let mediaURLHTTPS: String?
    let expandedURL: String?
    let id: Double?
    let sizes: Sizes?
    let displayURL, type: String?
    let indices: [Int]?
    let mediaURL: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case idStr = "id_str"
        case mediaURLHTTPS = "media_url_https"
        case expandedURL = "expanded_url"
        case id, sizes
        case displayURL = "display_url"
        case type, indices
        case mediaURL = "media_url"
        case url
    }
}

// MARK: - Sizes
struct Sizes: Codable {
    let large, medium, thumb, small: Large?
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

// MARK: - ExtendedEntities
struct ExtendedEntities: Codable {
    let media: [Media]?
}

// MARK: - User
struct User: Codable {
    let protected, isTranslator: Bool?
    let profileImageURL: String?
    let createdAt: String?
    let id: Double?
    let defaultProfileImage: Bool?
    let listedCount: Int?
    let profileBackgroundColor: String?
    let location: String?
    let entities: UserEntities?
    let url: String?
    let userDescription: String?
    let followersCount: Int?
    let geoEnabled: Bool?
    let profileTextColor: String?
    let statusesCount: Int?
    let profileBackgroundTile, profileUseBackgroundImage: Bool?
    let idStr, name: String?
    let profileImageURLHTTPS: String?
    let profileSidebarFillColor, profileSidebarBorderColor: String?
    let contributorsEnabled, defaultProfile: Bool?
    let profileBannerURL: String?
    let screenName: String?
    let profileBackgroundImageURL: String?
    let profileBackgroundImageURLHTTPS: String?
    let profileLinkColor: String?
    let favouritesCount: Int?
    let isTranslationEnabled: Bool?
    let translatorType: String?
    let friendsCount: Int?
    let verified, hasExtendedProfile: Bool?

    enum CodingKeys: String, CodingKey {
        case protected
        case isTranslator = "is_translator"
        case profileImageURL = "profile_image_url"
        case createdAt = "created_at"
        case id
        case defaultProfileImage = "default_profile_image"
        case listedCount = "listed_count"
        case profileBackgroundColor = "profile_background_color"
        case location, entities, url
        case userDescription = "description"
        case followersCount = "followers_count"
        case geoEnabled = "geo_enabled"
        case profileTextColor = "profile_text_color"
        case statusesCount = "statuses_count"
        case profileBackgroundTile = "profile_background_tile"
        case profileUseBackgroundImage = "profile_use_background_image"
        case idStr = "id_str"
        case name
        case profileImageURLHTTPS = "profile_image_url_https"
        case profileSidebarFillColor = "profile_sidebar_fill_color"
        case profileSidebarBorderColor = "profile_sidebar_border_color"
        case contributorsEnabled = "contributors_enabled"
        case defaultProfile = "default_profile"
        case profileBannerURL = "profile_banner_url"
        case screenName = "screen_name"
        case profileBackgroundImageURL = "profile_background_image_url"
        case profileBackgroundImageURLHTTPS = "profile_background_image_url_https"
        case profileLinkColor = "profile_link_color"
        case favouritesCount = "favourites_count"
        case isTranslationEnabled = "is_translation_enabled"
        case translatorType = "translator_type"
        case friendsCount = "friends_count"
        case verified
        case hasExtendedProfile = "has_extended_profile"
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
    let displayURL: String?
    let url: String?
    let indices: [Int]?
    let expandedURL: String?

    enum CodingKeys: String, CodingKey {
        case displayURL = "display_url"
        case url, indices
        case expandedURL = "expanded_url"
    }
}

// MARK: - CommentEditor
struct CommentEditor: Codable {
    let enabled: Bool?
}

// MARK: - Counters
struct Counters: Codable {
    let favorites, reposts, comments: Int?
}

// MARK: - Likes
struct Likes: Codable {
    let summ, counter: Int?
    let isHidden: Bool?
    let isLiked: Int?
}

enum ItemType: String, Codable {
    case entry = "entry"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

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

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
