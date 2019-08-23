class ExampleCLanguage < Formula
  desc "Example repository containing C language code"
  homepage "https://github.com/ns408/example_c_language"
  url "https://github.com/ns408/example_c_language/archive/v1.0.tar.gz"
  sha256 "1a94b0235514dbd709183aecfea75d4a0925e468b1eb9d51f9a388026d10c424"

  def install
    ENV.deparallelize
    system ENV.cc, "example.c", "-o", "example_c"
    bin.install "example_c"
  end

  test do
    system bin/"example_c"
  end
end
