# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(userId: 1, hashtag: '#5105', name: 'かつき（ににまる）')
User.create(userId: 2, hashtag: '#4965', name: 'ウェイパー高橋')
User.create(userId: 3, hashtag: '#8568', name: 'しんせいねう', )
User.create(userId: 4, hashtag: '#3820', name: 'おっちち姫',)
User.create(userId: 5, hashtag: '#8464', name: 'たっちゃん',)
User.create(userId: 6, hashtag: '#7090', name: 'イノシシ',)
User.create(userId: 7, hashtag: '#3362', name: 'かしゅ')
# User.create(userId: 8, hashtag: '#8571', name: 'かなた')


# ユーザープラットフォームの追加
UserPlatform.create(
  userId: 1,
  itemId: 1,
  platformId: 1,
  platformName: 'Twitch',
  accountUserSubText: '@220ninimaru',
  accountUserId: '',
  accountUserName: '岩崎かつき',
  accountIconImageUrl: 'https://static-cdn.jtvnw.net/jtv_user_pictures/bf505f86-40f1-40aa-bb88-40a9389a612c-profile_image-70x70.png',
  accountUserUrl: 'https://www.twitch.tv/220ninimaru',
  hasAccount: true,
  isBroadCasting: false,
)

UserPlatform.create(
  userId: 1,
  itemId: 2,
  platformId: 6,
  platformName: 'X',
  accountUserSubText: '@220ninimaru',
  accountUserId: '',
  accountUserName: '岩崎かつき',
  accountIconImageUrl: 'https://static-cdn.jtvnw.net/jtv_user_pictures/bf505f86-40f1-40aa-bb88-40a9389a612c-profile_image-70x70.png',
  accountUserUrl: 'https://www.twitch.tv/220ninimaru',
  hasAccount: true,
  isBroadCasting: false,
)

# ユーザーメタネームの追加
UserMetaName.create(userId: 1, userMetaName: 'かつき')
UserMetaName.create(userId: 1, userMetaName: 'ににまる')
UserMetaName.create(userId: 1, userMetaName: 'まんちょ')
UserMetaName.create(userId: 1, userMetaName: '岩崎かつき')

Platform.create(
  platformId: 1, 
  platformName: 'Twitch', 
  icon:'fa-brands fa-twitch', 
  imageURL: '', 
  brandColor:'#6441a5')

Platform.create(
  platformId: 2, 
  platformName: 'ふわっち', 
  icon:'', 
  imageURL: '', 
  brandColor:'#fb5824')

Platform.create(
  platformId: 3, 
  platformName: 'ツイキャス', 
  icon:'', 
  imageURL: '', 
  brandColor:'#0273ff')

Platform.create(
  platformId: 4, 
  platformName: 'YouTubeLive', 
  icon:'fa-brands fa-youtube', 
  imageURL: '', 
  brandColor:'#C4302B')

Platform.create(
  platformId: 5, 
  platformName: 'オープンチャット', 
  icon:'fa-brands fa-line', 
  imageURL: '', 
  brandColor:'#06c755')

Platform.create(
  platformId: 6, 
  platformName: 'X', 
  icon:'fa-brands fa-square-x-twitter', 
  imageURL: '', 
  brandColor:'#0f1419')

Platform.create(
  platformId: 7, 
  platformName: 'Instagram', 
  icon:'fa-brands fa-instagram', 
  imageURL: '', 
  brandColor:'#cf2e92')

Platform.create(
  platformId: 7, 
  platformName: 'Instagram', 
  icon:'fa-brands fa-instagram', 
  imageURL: '', 
  brandColor:'#cf2e92')

Platform.create(
  platformId: 8, 
  platformName: 'TikTok', 
  icon:'fa-brands fa-tiktok', 
  imageURL: '', 
  brandColor:'#fe2c55')

Platform.create(
  platformId: 9, 
  platformName: 'OpenRec', 
  icon:'', 
  imageURL: '', 
  brandColor:'#ff4c11')  

Platform.create(
  platformId: 997, 
  platformName: 'ALL', 
  icon:'', 
  imageURL: '', 
  brandColor:'#BAA898')

Platform.create(
  platformId: 998, 
  platformName: '配信中', 
  icon:'fa-solid fa-video', 
  imageURL: '', 
  brandColor:'red')

Platform.create(
  platformId: 999, 
  platformName: 'その他', 
  icon:'fa-solid fa-ellipsis-vertical', 
  imageURL: '', 
  brandColor:'#6f4b3e')



# # ユーザーメタネームの追加
UserMetaName.create(userId: 2, userMetaName: 'ウェイパー')
UserMetaName.create(userId: 2, userMetaName: '高橋')

UserPlatform.create(
  userId: 2,
  itemId: 3,
  platformId: 6,
  platformName: 'Twitch',
  accountUserSubText: '@takahashi0426',
  accountUserId: '',
  accountUserName: 'ウェイパー高橋',
  accountIconImageUrl: 'https://static-cdn.jtvnw.net/jtv_user_pictures/bf505f86-40f1-40aa-bb88-40a9389a612c-profile_image-70x70.png',
  accountUserUrl: 'https://m.twitch.tv/takahashi0426',
  hasAccount: true,
  isBroadCasting: true,
)

UserPlatform.create(
  userId: 2,
  itemId: 4,
  platformId: 6,
  platformName: 'X',
  accountUserSubText: '@tkhs042',
  accountUserId: '',
  accountUserName: 'ウェイパー高橋',
  accountIconImageUrl: 'https://pbs.twimg.com/profile_images/1245641376127021057/Jmk1n94w_400x400.jpg',
  accountUserUrl: 'https://twitter.com/tkhs0426',
  hasAccount: true,
  isBroadCasting: false,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X



# # ユーザーメタネームの追加
UserMetaName.create(userId: 3, userMetaName: 'しんせいねう')
UserMetaName.create(userId: 3, userMetaName: 'ねう')


UserPlatform.create(
  userId: 3,
  itemId: 5,
  platformId: 2,
  platformName: 'ツイキャス',
  accountUserSubText: '@c:fukai_ao',
  accountUserId: '',
  accountUserName: 'しんせいねう',
  accountIconImageUrl: 'https://imagegw02.twitcasting.tv/image3s/img-twitcasting.s3-us-west-1.amazonaws.com/07/7c/642ed9d445fdf_64.jpg',
  accountUserUrl: 'https://twitcasting.tv/c:fukai_ao',
  hasAccount: true,
  isBroadCasting: true,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X

UserPlatform.create(
  userId: 3,
  itemId: 6,
  platformId: 6,
  platformName: 'X',
  accountUserSubText: '@sinseinaru',
  accountUserId: '',
  accountUserName: 'しんせいねう',
  accountIconImageUrl: 'https://pbs.twimg.com/profile_images/1722922807666061312/n6erokfP_400x400.jpg',
  accountUserUrl: 'https://twitter.com/sinseinaru',
  hasAccount: true,
  isBroadCasting: false,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X


# # ユーザーメタネームの追加
UserMetaName.create(userId: 4, userMetaName: 'モアちゃん')
UserMetaName.create(userId: 4, userMetaName: 'まきちゃん')
UserMetaName.create(userId: 4, userMetaName: '🗿')
UserMetaName.create(userId: 4, userMetaName: 'おっちち')
UserMetaName.create(userId: 4, userMetaName: '姫')


UserPlatform.create(
  userId: 4,
  itemId: 7,
  platformId: 2,
  platformName: 'ツイキャス',
  accountUserSubText: '@akirametai_hime',
  accountUserId: '',
  accountUserName: 'おっちち姫',
  accountIconImageUrl: 'https://imagegw02.twitcasting.tv/image3s/pbs.twimg.com/profile_images/1745297484119977984/agOpao8A_bigger.jpg',
  accountUserUrl: 'https://twitcasting.tv/akirametai_hime/',
  hasAccount: true,
  isBroadCasting: false,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X

UserPlatform.create(
  userId: 4,
  itemId: 8,
  platformId: 6,
  platformName: 'X',
  accountUserSubText: '@akirametai_hime',
  accountUserId: '',
  accountUserName: 'おっちち姫',
  accountIconImageUrl: 'https://pbs.twimg.com/profile_images/1745297484119977984/agOpao8A_400x400.jpg',
  accountUserUrl: 'https://twitter.com/akirametai_hime',
  hasAccount: true,
  isBroadCasting: false,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X



# # ユーザーメタネームの追加
UserMetaName.create(userId: 5, userMetaName: 'おじ雑')
UserMetaName.create(userId: 5, userMetaName: 'たっちゃん')

# # ユーザープラットフォームの追加
# user5.user_platforms.create(
#   platform: twitcasting,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@tatsuya0519',
#   account_user_name: 'たっちゃん',
#   account_url: 'https://whowatch.tv/profile/w:tatsuya0519',
#   account_icon_image_url: 'https://img.whowatch.tv/user_files/56822518/profile_icon/1718556678257.jpeg'
# )


UserPlatform.create(
  userId: 5,
  itemId: 9,
  platformId: 3,
  platformName: 'ふわっち',
  accountUserSubText: '@tatsuya0519',
  accountUserId: '',
  accountUserName: 'たっちゃん',
  accountIconImageUrl: 'https://img.whowatch.tv/user_files/56822518/profile_icon/1718556678257.jpeg',
  accountUserUrl: 'https://whowatch.tv/profile/w:tatsuya0519',
  hasAccount: true,
  isBroadCasting: false,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X



# # ユーザーメタネームの追加
UserMetaName.create(userId: 6, userMetaName: 'イノシシ')
UserMetaName.create(userId: 6, userMetaName: 'のうや')
UserMetaName.create(userId: 6, userMetaName: '腐れパープル歯茎')
UserMetaName.create(userId: 6, userMetaName: 'キンタマ')
UserMetaName.create(userId: 6, userMetaName: '金玉')


UserPlatform.create(
  userId: 6,
  itemId: 10,
  platformId: 3,
  platformName: 'ふわっち',
  accountUserSubText: '@inosisi2525',
  accountUserId: '',
  accountUserName: 'イノシシ',
  accountIconImageUrl: 'https://img.whowatch.tv/user_files/22272815/profile_icon/1646029166618.jpeg',
  accountUserUrl: 'https://whowatch.tv/profile/t:inosisi2525',
  hasAccount: true,
  isBroadCasting: true,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X



# # ユーザーメタネームの追加
UserMetaName.create(userId: 7, userMetaName: 'かしゅちゃん')
UserMetaName.create(userId: 7, userMetaName: 'かしゅ')

UserPlatform.create(
  userId: 7,
  itemId: 11,
  platformId: 2,
  platformName: 'ツイキャス',
  accountUserSubText: '@kashu_v0916',
  accountUserId: '',
  accountUserName: 'かしゅちゃん',
  accountIconImageUrl: 'https://imagegw02.twitcasting.tv/image3s/pbs.twimg.com/profile_images/1790800649426538496/FNlq_i-O_bigger.jpg',
  accountUserUrl: 'https://twitcasting.tv/kashu_v0916/',
  hasAccount: true,
  isBroadCasting: false,
)
# 1 Twitch 2 ツイキャス　3 ふわっち　6 X

UserPlatform.create(
  userId: 7,
  itemId: 12,
  platformId: 6,
  platformName: 'X',
  accountUserId: '',
  accountUserSubText: '@kashu_v0916',
  accountUserName: 'かしゅちゃん',
  accountIconImageUrl: 'https://pbs.twimg.com/profile_images/1790800649426538496/FNlq_i-O_400x400.jpg',
  accountUserUrl: 'https://twitter.com/kashu_v0916',
  hasAccount: true,
  isBroadCasting: false,
)