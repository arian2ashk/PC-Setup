$extensions = @(
  "ChakrounAnas.turbo-console-log",
  "ms-azuretools.vscode-azurefunctions",
  "ms-vscode.vscode-typescript-tslint-plugin",
  #"akamud.vscode-caniuse",
  #"akamud.vscode-theme-onedark",
  #"akamud.vscode-theme-onelight",
  "AndrewRazumovsky.vscode-styled-jsx-languageserver",
  #"arcticicestudio.nord-visual-studio-code",
  #"bceskavich.theme-dracula-at-night",
  #"bierner.markdown-emoji",
  "bierner.markdown-preview-github-styles",
  "blanu.vscode-styled-jsx",
  #"Braver.vscode-solarized",
  "christian-kohler.npm-intellisense",
  #"Configit.lml-lsp",
  #"Configit.logic-model-language",
  "dbaeumer.vscode-eslint",
  "DotJoshJohnson.xml",
  #"eamodio.gitlens",
  "eg2.vscode-npm-script",
  #"emmanuelbeziat.vscode-great-icons",
  #"Equinusocio.vsc-material-theme",
  "esbenp.prettier-vscode",
  #"felipe-mendes.slack-theme",
  #"ginfuru.ginfuru-better-solarized-dark-theme",
  #"hsnazar.hyper-term-theme",
  #"johnpapa.winteriscoming",
  #"joshpeng.theme-tomorrowkit-sublime",
  "jpoissonnier.vscode-styled-components",
  #"liviuschera.noctis",
  "mikestead.dotenv",
  "mquandalle.graphql",
  "ms-azuretools.vscode-docker",
  "ms-python.python",
  "ms-vscode.csharp",
  "ms-vscode.powershell",
  "msjsdiag.debugger-for-chrome",
  "nobuhito.printcode",
  #"pawelgrzybek.gatito-theme",
  "Prisma.vscode-graphql",
  #"rmnl.theme-solarized-flat-dark",
  #"sdras.night-owl",
  #"Shan.code-settings-sync",
  "silvenon.mdx",
  "SimonSiefke.svg-preview",
  "streetsidesoftware.code-spell-checker",
  #"teabyii.ayu",
  #"thenikso.github-plus-theme",
  #"vitaliymaz.vscode-svg-previewer",
  #"vscode-icons-team.vscode-icons",
  #"wesbos.theme-cobalt2",
  #"whizkydee.material-palenight-theme",
  "Yummygum.city-lights-icon-vsc",
  #"yummygum.city-lights-theme",
  #"zhuangtongfa.material-theme",
  "zxh404.vscode-proto3"
)

foreach ($extension in $extensions) {
  code --install-extension $extension;
}
