require "rails_helper"

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

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
end
