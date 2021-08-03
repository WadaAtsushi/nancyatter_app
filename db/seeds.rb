# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 # ====== user テストデータ作成 =============================================
# (1..20).each do |i|
#     test_user = User.new(name: "user#{i}", email: "user#{i}@test.com", password: "user#{i}")
#     test_user.save
# end
    

# ====== nancyatterapp テストデータ作成 =====================================
# *** nancyatterコントローラに貼り付けて実行 ***

# def create
#     user_session = session[:user_id]
#     (1..10).each do |i|
#         test_user = User.all.sample
#         appcategory = Appcategory.all.sample
#         session[:user_id] = test_user.id

#         test_app = Nancyatterapp.new(
#             app_name: "test_app#{i}",
#             main_text: "これはテストアプリ#{i}です。  ===test#{i}===",
#             introduction: "テストアプリ#{i}の紹介文です。  ===test#{i}===",
#             loure: "テストアプリ#{i}の使用ルールです。  ===test#{i}===",
#             app_image: params[:nancyatterapp][:app_image],
#             user_id: session[:user_id],
#             appcategory_id: appcategory.id,
#             feature_like: "implement",
#             feature_comment: "implement",
#             feature_category: "implement",
#             feature_image: "implement"
#         )
#         p "========="
#         p test_user
#         p test_app
#         p "========="

#         test_app.save
#     end
#     session[:user_id] = user_session
#     redirect_to root_path
# end

