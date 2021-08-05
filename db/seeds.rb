# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p " ====== user テストデータ作成 ============================================="
# (1..20).each do |i|
#     test_user = User.new(name: "user#{i}", email: "user#{i}@test.com", password: "user#{i}")
#     test_user.save
# end
    

p " ====== nancyatterapp テストデータ作成 ====================================="
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


p " ====== menbur テストデータ作成 ====================================="
# *** menbur コントローラに貼り付けて実行 ***

# def create
#     user_session = session[:user_id]
#     app_session = session[:nancyatterapp_id]
#     (1..50).each do |i|
#         test_user = User.all.sample
#         session[:user_id] = test_user.id
#         test_app = Nancyatterapp.all.sample
#         session[:nancyatterapp_id] = test_app.id

#         test_menbur = Menbur.new(
#             nickname: "menbur#{i}",
#             profile: "menbur#{i}のテストプロフィール。===test#{i}===",
#             profile_image: params[:menbur][:profile_image],
#             nancyatterapp_id: session[:nancyatterapp_id],
#             user_id: session[:user_id]
#         )
#         p "========="
#         p test_user
#         p test_app
#         p test_menbur
#         p "========="

#         test_menbur.save
#         session[:menbur_id] = test_menbur.id
#     end
#     session[:user_id] = user_session
#     session[:nancyatterapp_id] = app_session
#     redirect_to root_path
# end


p "====== menbur テストデータ作成 ====================================="

# def create
#     user_session = session[:user_id]
#     (1..5).each do |i|
#         test_user = User.find_by(name: "user#{rand(1..10)}")
#         category = Category.find_by(post_category: "post_category_#{rand(1..5)}")
        
#         session[:user_id] = test_user.id

#         test_post = Post.new(
#         title: "post#{i}", 
#         content: "psot#{i}_content#{i}_hogefugahogefuga", 
#         image: params[:post][:post_image],
#         menbur_id: session[:menbur_id],
#         category_id: category.id
#         )
#         p "========="
#         p test_post
#         p "========="

#         test_post.save
#     end
#     session[:user_id] = user_session

#     flash.notice = "投稿しました"
#     redirect_to post_index_path
# end

p "====== psotcategory テストデータ作成 ====================================="

# (1..50).each do |i|
#     test_app = Nancyatterapp.all.sample
#     category = Postcategory.new(
#         nancyatterapp_id: test_app.id,
#         category_name: "postcategory-#{i}"
#     )
#     category.save
#     p category
# end
