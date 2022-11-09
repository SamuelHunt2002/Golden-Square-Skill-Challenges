require 'secret_key'

RSpec.describe "Secret Key" do
    it "Should encode" do
        expect(encode("theswiftfoxjumpedoverthelazydog", "secretkey")).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end

    it "should decode" do
        expect(decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")).to eq "theswiftfoxjumpedoverthelazydog"
    end
end