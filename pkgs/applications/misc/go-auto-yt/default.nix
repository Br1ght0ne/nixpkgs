{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "go-auto-yt";
  version = "0.0.1-bc6a8a2a8f08130d6649d73ceb2bdc1a658065a3";

  src = fetchFromGitHub {
    owner = "XiovV";
    repo = "go-auto-yt";
    rev = "bc6a8a2a8f08130d6649d73ceb2bdc1a658065a3";
    sha256 = "1bsphnzh2gngjdm612ygaadsksvfg16rm925qik2lw9bgg8gqxa5";
  };

  modSha256 = "1zzxgdv9h9vaikizghx4fqa7w83bzdwdx8lp7i6f2d95lqz101m2";

  meta = with lib; {
    description = "Automatically download videos from selected YouTube channels";
    homepage = "https://github.com/XiovV/go-auto-yt";
    license = licenses.free;
    maintainers = with maintainers; [ filalex77 ];
  };
}
