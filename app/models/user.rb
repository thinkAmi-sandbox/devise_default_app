class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  #
  # 変更
  devise :database_authenticatable, # 認証
         :registerable, # 登録・変更・削除
         :recoverable, # パスワードリセット
         :confirmable, # メールでの登録
         :validatable, # メールやパスワードのバリデーション
         :lockable # アカウントロック
end
