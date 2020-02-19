{ stdenv, lib, fetchFromGitHub, rustPlatform, Foundation }:

rustPlatform.buildRustPackage rec {
  pname = "topgrade";
  version = "4.0.0";

  src = fetchFromGitHub {
    owner = "r-darwish";
    repo = pname;
    rev = "v${version}";
    sha256 = "1cis5yaz6gdg63h3hzxlf54n2h9magd3hdsl1ndb3s94ib6c5jrl";
  };

  cargoSha256 = "0b10av37wcrwn4j6l8shrkr2i8skf1vzc7v224pmnvz9fvw8i8m4";

  buildInputs = lib.optional stdenv.isDarwin Foundation;

  meta = with lib; {
    description = "Upgrade all the things";
    homepage = "https://github.com/r-darwish/topgrade";
    license = licenses.gpl3;
    platforms = platforms.all;
    maintainers = with maintainers; [ filalex77 hugoreeves ];
  };
}
