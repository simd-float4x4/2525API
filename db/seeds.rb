# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create(userId: 1, hashtag: '#5105', name: 'かつき（ににまる）')

# ユーザープラットフォームの追加
UserPlatform.create(
  userId: 1,
  itemId: 1,
  platformId: 1,
  accountUserId: '@220ninimaru',
  accountUserName: '岩崎かつき',
  accountIconImageUrl: 'https://static-cdn.jtvnw.net/jtv_user_pictures/bf505f86-40f1-40aa-bb88-40a9389a612c-profile_image-70x70.png',
  accountUserUrl: 'https://www.twitch.tv/220ninimaru',
  hasAccount: true,
  isBroadCasting: false,
)

# all = Platform.create(number: 997, name: 'All', icon:'', brandColor:'#BAA898')
# nowstreaming = Platform.create(number: 998, name: '配信中', icon:'fa-solid fa-video', brandColor:'red')
Platform.create(platformId: 1, platformName: 'Twitch', icon:'fa-brands fa-twitch', imageURL: '', brandColor:'#6441a5')
# whowatch = Platform.create(number:  2, name: 'ふわっち', icon:'', brandColor:'#fb5824')
# twitcasting = Platform.create(number: 3, name: 'ツイキャス', icon:'', brandColor:'#0273ff')
# youtubelive = Platform.create(number:  4, name: 'YouTubeLive', icon:'fa-brands fa-youtube', brandColor:'#c4302b')
# openrec = Platform.create(number:  9, name: 'OpenRec', icon:'', brandColor:'#ff4c11')
# twitter = Platform.create(number:  6, name: 'X', icon:'fa-brands fa-square-x-twitter', brandColor:'#0f1419')
# lineopenchat = Platform.create(number:  5, name: 'オープンチャット', icon:'fa-brands fa-line', brandColor:'#06c755')
# tiktok = Platform.create(number:  8, name: 'TikTok', icon:'fa-brands fa-tiktok', brandColor:'#fe2c55')
# instagram = Platform.create(number: 7, name: 'Instagram', icon:'fa-brands fa-instagram', brandColor:'#cf2e92')
# other = Platform.create(number:  999, name: 'その他', icon:'fa-solid fa-ellipsis-vertical', brandColor:'#6f4b3e')

# user1MetaName = user_meta_names.create(meta_name: 'まんちょ')

# user2 = User.create(hashTag: '#4965', name: 'ウェイパー高橋', userId: 2)
# user3 = User.create(hashTag: '#8568', name: 'しんせいねう', userId: 3)
# user4 = User.create(hashTag: '#3820', name: 'おっちち姫', userId: 4)
# user5 = User.create(hashTag: '#8464', name: 'たっちゃん', userId: 5)
# user6 = User.create(hashTag: '#7090', name: 'イノシシ', userId: 6)
# user7 = User.create(hashTag: '#3362', name: 'かしゅちゃん', userId: 7)


# ユーザーメタネームの追加
UserMetaName.create(userId: 1, userMetaName: 'かつき')
UserMetaName.create(userId: 1, userMetaName: 'ににまる')
UserMetaName.create(userId: 1, userMetaName: 'まんちょ')
UserMetaName.create(userId: 1, userMetaName: '岩崎かつき')



# user1.user_platforms.create(
#   platform: twitter,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@220niconico',
#   account_user_name: 'ににまる',
#   account_url: 'https://twitter.com/220niconico',
#   account_icon_image_url: 'https://pbs.twimg.com/profile_images/1775390076111093760/qoTbEbIN_400x400.jpg'
# )



# # ユーザーメタネームの追加
# user2.user_meta_names.create(meta_name: 'ウェイパー')
# user2.user_meta_names.create(meta_name: '高橋')

# # ユーザープラットフォームの追加
# user2.user_platforms.create(
#   platform: twitch,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@takahashi0426',
#   account_user_name: 'ウェイパー高橋',
#   account_url: 'https://m.twitch.tv/takahashi0426',
#   account_icon_image_url: 'https://static-cdn.jtvnw.net/jtv_user_pictures/bf505f86-40f1-40aa-bb88-40a9389a612c-profile_image-70x70.png'
# )

# user2.user_platforms.create(
#   platform: twitter,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@tkhs0426',
#   account_user_name: 'ウェイパー高橋',
#   account_url: 'https://twitter.com/tkhs0426',
#   account_icon_image_url: 'https://pbs.twimg.com/profile_images/1245641376127021057/Jmk1n94w_400x400.jpg'
# )




# # ユーザーメタネームの追加
# user3.user_meta_names.create(meta_name: 'しんせいねう')
# user3.user_meta_names.create(meta_name: 'ねう')

# # ユーザープラットフォームの追加
# user3.user_platforms.create( #NOTNULL Constraiants failed
#   platform: twitcasting,
#   has_account: true,
#   is_broadcasting: true,
#   display_text_content: '@c:fukai_ao',
#   account_user_name: 'しんせいねう',
#   account_url: 'https://twitcasting.tv/c:fukai_ao',
#   account_icon_image_url: 'https://imagegw02.twitcasting.tv/image3s/img-twitcasting.s3-us-west-1.amazonaws.com/07/7c/642ed9d445fdf_64.jpg'
# )

# user3.user_platforms.create(
#   platform: twitter,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@sinseinaru',
#   account_user_name: 'しんせいねう',
#   account_url: 'https://twitter.com/sinseinaru',
#   account_icon_image_url: 'https://pbs.twimg.com/profile_images/1722922807666061312/n6erokfP_400x400.jpg'
# )




# # ユーザーメタネームの追加
# user4.user_meta_names.create(meta_name: 'モアちゃん')
# user4.user_meta_names.create(meta_name: 'まきちゃん')
# user4.user_meta_names.create(meta_name: '🗿')
# user4.user_meta_names.create(meta_name: 'おっちち')
# user4.user_meta_names.create(meta_name: '姫')

# # ユーザープラットフォームの追加
# user4.user_platforms.create(
#   platform: twitcasting,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@akirametai_hime',
#   account_user_name: 'おっちち姫',
#   account_url: 'https://twitcasting.tv/akirametai_hime/',
#   account_icon_image_url: 'https://imagegw02.twitcasting.tv/image3s/pbs.twimg.com/profile_images/1745297484119977984/agOpao8A_bigger.jpg'
# )

# user4.user_platforms.create(
#   platform: twitter,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@akirametai_hime',
#   account_user_name: 'おっちち姫',
#   account_url: 'https://twitter.com/akirametai_hime',
#   account_icon_image_url: 'https://pbs.twimg.com/profile_images/1745297484119977984/agOpao8A_400x400.jpg'
# )





# # ユーザーメタネームの追加
# user5.user_meta_names.create(meta_name: 'おじ雑')
# user5.user_meta_names.create(meta_name: 'たっちゃん')

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



# # ユーザーメタネームの追加
# user6.user_meta_names.create(meta_name: 'イノシシ')
# user6.user_meta_names.create(meta_name: 'のうや')
# user6.user_meta_names.create(meta_name: '腐れパープル歯茎')
# user6.user_meta_names.create(meta_name: 'キンタマ')
# user6.user_meta_names.create(meta_name: '金玉')

# # ユーザープラットフォームの追加
# user6.user_platforms.create(
#   platform: whowatch,
#   has_account: true,
#   is_broadcasting: true,
#   display_text_content: '@inosisi2525',
#   account_user_name: 'イノシシ',
#   account_url: 'https://whowatch.tv/profile/t:inosisi2525',
#   account_icon_image_url: 'https://img.whowatch.tv/user_files/22272815/profile_icon/1646029166618.jpeg'
# )



# # ユーザーメタネームの追加
# user7.user_meta_names.create(meta_name: 'かしゅちゃん')
# user7.user_meta_names.create(meta_name: 'かしゅ')

# # ユーザープラットフォームの追加
# user7.user_platforms.create(
#   platform: twitter,
#   has_account: true,
#   is_broadcasting: false,
#   display_text_content: '@kashu_v0916',
#   account_user_name: 'かしゅちゃん',
#   account_url: 'https://twitter.com/kashu_v0916',
#   account_icon_image_url: 'https://pbs.twimg.com/profile_images/1790800649426538496/FNlq_i-O_400x400.jpg'
# )

# user7.user_platforms.create(
#   platform: twitcasting,
#   has_account: true,
#   is_broadcasting: true,
#   display_text_content: '@kashu_v0916',
#   account_user_name: 'かしゅちゃん',
#   account_url: 'https://twitcasting.tv/kashu_v0916/',
#   account_icon_image_url: 'https://imagegw02.twitcasting.tv/image3s/pbs.twimg.com/profile_images/1790800649426538496/FNlq_i-O_bigger.jpg'
# )