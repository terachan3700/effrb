module SuperDumbCrypto
  KEY = "password123"

  class Encrypt
    def initialize (key = KEY)

    end
  end
end

# これはエラー
# enc = Encrypt.new

# 名前空間を指定する必要がある。
enc = SuperDumbCrypto::Encrypt.new
