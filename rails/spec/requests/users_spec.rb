require "rails_helper"

RSpec.describe User, type: :model do
    it "名前、メールアドレス、パスワードがあれば有効な状態であること" do
      user = User.new(
        name: "hoge",
        email: "hoge@hoge.com",
        password: "1234qwer",
      )
      expect(user).to be_valid
    end
  
    it "名前がなければ無効な状態であること" do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
  
    it "重複したメールアドレスなら無効な状態であること" do
      user = User.create(
        name: "Yamada",
        email: "yamada@yamada.com",
        password: "password",
      )
      user = User.new(
        name: "Yamada",
        email: "yamada@yamada.com",
        password: "password",
      )
      user.valid?

      expect(user.errors[:email]).to include("はすでに存在します")
  end
end