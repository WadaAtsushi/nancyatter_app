# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< Updated upstream
=======


p " ====== user テストデータ作成 ============================================="
(1..20).each do |i|
    test_user = User.new(name: "user#{i}", email: "user#{i}@test.com", password: "user#{i}", password_confirmation: "user#{i}")
    test_user.save
end
    

Appcategory.create(category_name: "test")

p " ====== nancyatterapp テストデータ作成 ====================================="
# *** nancyatterコントローラに貼り付けて実行 ***

    (1..10).each do |i|
      test_user = User.first
      appcategory = Appcategory.first

      test_app = Nancyatterapp.new(
          app_name: "test_app#{i}",
          main_text: "これはテストアプリ#{i}です。  ===test#{i}===",
          introduction: "テストアプリ#{i}の紹介文です。  ===test#{i}===",
          loure: "テストアプリ#{i}の使用ルールです。  ===test#{i}===",
          app_image: "noimage.jpg",
          user_id: test_user.id,
          appcategory_id: appcategory.id,
          feature_like: "implement",
          feature_comment: "implement",
          feature_category: "implement",
          feature_image: "implement"
      )

      test_app.save
    end


p " ====== menbur テストデータ作成 ====================================="
# *** menbur コントローラに貼り付けて実行 ***
  (1..50).each do |i|
      test_user = User.first
      test_app = Nancyatterapp.first

      test_menbur = Menbur.new(
          nickname: "menbur#{i}",
          profile: "menbur#{i}のテストプロフィール。===test#{i}===",
          profile_image: "noimage.jpg",
          nancyatterapp_id: test_app.id,
          user_id: test_user.id
      )

      test_menbur.save
  end


p "====== post テストデータ作成 ====================================="
# *** posts コントローラに貼り付けて実行 ***

# def create
#     user_session = session[:user_id]
#     menbur_session = session[:menbur_id]
#     app_session = session[:nancyatterapp_id]

#     (1..300).each do |i|
#         test_menbur = Menbur.all.sample
#         test_user = test_menbur.user
#         test_app = test_menbur.nancyatterapp
#         test_category = test_app.postcategories.all.sample

#         session[:user_id] = test_user.id
#         session[:menbur_id] = test_menbur.id
#         session[:nancyatterapp_id] = test_app.id

#         test_post = Post.new(
#         title: "post#{i}", 
#         content: "psot#{i}_content#{i}_hogefugahogefuga", 
#         post_image: params[:post][:post_image],
#         user_id: session[:user_id],
#         menbur_id: session[:menbur_id],
#         postcategory_id: test_category.id,
#         nancyatterapp_id: session[:nancyatterapp_id]
#         )
        
#         test_post.save

#     end
#     session[:user_id] = user_session
#     session[:menbur_id] = menbur_session
#     session[:nancyatterapp_id] = app_session

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

p "====== like テストデータ作成 ====================================="
# count = 0
# (1..500).each do |i|
#     like = Like.new(
#         menbur_id: Menbur.all.sample.id,
#         post_id: Post.all.sample.id
#     )
    
#     like_duplicate = Like.find_by(
#         menbur_id: like.menbur_id, 
#         post_id: like.post_id
#     )
#     if like_duplicate
#         count = count + 1
#         p count
#     else
#         like.save
#     end
# end


p "====== comment テストデータ作成 ====================================="

#   (1..600).each do |i|
#     comment = Comment.new(
#         comment_text: "test-comment-#{i}",
#         post_id: Post.all.sample.id,
#         menbur_id: Menbur.all.sample.id
#     )
#     comment.save
#     p comment
#   end


>>>>>>> Stashed changes
