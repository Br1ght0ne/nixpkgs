{ lib, buildPythonApplication, fetchPypi, installShellFiles }:

buildPythonApplication rec {
  pname = "git-machete";
  version = "2.12.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "114kq396zq45jlibn1lp0nk4lmanj4w1bcn48gi7xzdm0y1nkzfq";
  };

  nativeBuildInputs = [ installShellFiles ];

  postInstall = ''
      installShellCompletion --bash --name git-machete completion/git-machete.completion.bash
      installShellCompletion --zsh --name _git-machete completion/git-machete.completion.zsh
  '';

  meta = with lib; {
    homepage = https://github.com/VirtusLab/git-machete;
    description = "Git repository organizer and rebase workflow automation tool";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = [ maintainers.blitz ];
  };
}
