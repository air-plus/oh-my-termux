
function ___x_cmd_advise_run_fish___quote_suffix
   if not commandline -cp | xargs echo 2>/dev/null >/dev/null
      if commandline -cp | sed 's/$/"/'| xargs echo 2>/dev/null >/dev/null
         echo '"'
      else if commandline -cp | sed "s/\$/'/"| xargs echo 2>/dev/null >/dev/null
         echo "'"
      end
   else
      echo ""
   end
end

function ___x_cmd_advise_run_fish___inner
   set -x ___X_CMD_THEME_RELOAD_DISABLE    "$___X_CMD_THEME_RELOAD_DISABLE"
   commandline -cp | sed "s/\$/"(___x_cmd_advise_run_fish___quote_suffix)"/" | sed "s/ \$/ ''/" | xargs bash "$HOME/.x-cmd.root/bin/___x_cmdexe" advise complete fish $argv[1]
end

function ___x_cmd_advise_run_fish
   complete -c $argv[2] -e
   complete -c $argv[2] -f
   complete -c $argv[2] -f -a '(___x_cmd_advise_run_fish___inner '$argv[1]')' -r

   complete --do-complete=(commandline -cp)
end

complete -c 'x' -f -a '(___x_cmd_advise_run_fish normal x)' ; 
complete -c '7za' -f -a '(___x_cmd_advise_run_fish x-cmd 7za)' ; 
complete -c 'activemq' -f -a '(___x_cmd_advise_run_fish x-cmd activemq)' ; 
complete -c 'add_menbers' -f -a '(___x_cmd_advise_run_fish x-cmd add_menbers)' ; 
complete -c 'ant' -f -a '(___x_cmd_advise_run_fish x-cmd ant)' ; 
complete -c 'apk' -f -a '(___x_cmd_advise_run_fish x-cmd apk)' ; 
complete -c 'apt' -f -a '(___x_cmd_advise_run_fish x-cmd apt)' ; 
complete -c 'aria2' -f -a '(___x_cmd_advise_run_fish x-cmd aria2)' ; 
complete -c 'asdf' -f -a '(___x_cmd_advise_run_fish x-cmd asdf)' ; 
complete -c 'bat' -f -a '(___x_cmd_advise_run_fish x-cmd bat)' ; 
complete -c 'brew' -f -a '(___x_cmd_advise_run_fish x-cmd brew)' ; 
complete -c 'brook' -f -a '(___x_cmd_advise_run_fish x-cmd brook)' ; 
complete -c 'broot' -f -a '(___x_cmd_advise_run_fish x-cmd broot)' ; 
complete -c 'browser-use' -f -a '(___x_cmd_advise_run_fish x-cmd browser-use)' ; 
complete -c 'btop' -f -a '(___x_cmd_advise_run_fish x-cmd btop)' ; 
complete -c 'btrace' -f -a '(___x_cmd_advise_run_fish x-cmd btrace)' ; 
complete -c 'bun' -f -a '(___x_cmd_advise_run_fish x-cmd bun)' ; 
complete -c 'bunx' -f -a '(___x_cmd_advise_run_fish x-cmd bunx)' ; 
complete -c 'busybox' -f -a '(___x_cmd_advise_run_fish x-cmd busybox)' ; 
complete -c 'bwrap' -f -a '(___x_cmd_advise_run_fish x-cmd bwrap)' ; 
complete -c 'cat' -f -a '(___x_cmd_advise_run_fish x-cmd cat)' ; 
complete -c 'ccr' -f -a '(___x_cmd_advise_run_fish x-cmd ccr)' ; 
complete -c 'chatgpt' -f -a '(___x_cmd_advise_run_fish x-cmd chatgpt)' ; 
complete -c 'choco' -f -a '(___x_cmd_advise_run_fish x-cmd choco)' ; 
complete -c 'claude' -f -a '(___x_cmd_advise_run_fish x-cmd claude)' ; 
complete -c 'codex' -f -a '(___x_cmd_advise_run_fish x-cmd codex)' ; 
complete -c 'conda' -f -a '(___x_cmd_advise_run_fish x-cmd conda)' ; 
complete -c 'connor' -f -a '(___x_cmd_advise_run_fish x-cmd connor)' ; 
complete -c 'cosmos' -f -a '(___x_cmd_advise_run_fish x-cmd cosmos)' ; 
complete -c 'cp' -f -a '(___x_cmd_advise_run_fish x-cmd cp)' ; 
complete -c 'crush' -f -a '(___x_cmd_advise_run_fish x-cmd crush)' ; 
complete -c 'cs' -f -a '(___x_cmd_advise_run_fish x-cmd cs)' ; 
complete -c 'curl' -f -a '(___x_cmd_advise_run_fish x-cmd curl)' ; 
complete -c 'cursor-agent' -f -a '(___x_cmd_advise_run_fish x-cmd cursor-agent)' ; 
complete -c 'czg' -f -a '(___x_cmd_advise_run_fish x-cmd czg)' ; 
complete -c 'dasel' -f -a '(___x_cmd_advise_run_fish x-cmd dasel)' ; 
complete -c 'deno' -f -a '(___x_cmd_advise_run_fish x-cmd deno)' ; 
complete -c 'diagon' -f -a '(___x_cmd_advise_run_fish x-cmd diagon)' ; 
complete -c 'difft' -f -a '(___x_cmd_advise_run_fish x-cmd difft)' ; 
complete -c 'dnf' -f -a '(___x_cmd_advise_run_fish x-cmd dnf)' ; 
complete -c 'docker' -f -a '(___x_cmd_advise_run_fish x-cmd docker)' ; 
complete -c 'doctoolchain' -f -a '(___x_cmd_advise_run_fish x-cmd doctoolchain)' ; 
complete -c 'doggo' -f -a '(___x_cmd_advise_run_fish x-cmd doggo)' ; 
complete -c 'dos2unix' -f -a '(___x_cmd_advise_run_fish x-cmd dos2unix)' ; 
complete -c 'duf' -f -a '(___x_cmd_advise_run_fish x-cmd duf)' ; 
complete -c 'dust' -f -a '(___x_cmd_advise_run_fish x-cmd dust)' ; 
complete -c 'ein' -f -a '(___x_cmd_advise_run_fish x-cmd ein)' ; 
complete -c 'elvish' -f -a '(___x_cmd_advise_run_fish x-cmd elvish)' ; 
complete -c 'etcdctl' -f -a '(___x_cmd_advise_run_fish x-cmd etcdctl)' ; 
complete -c 'etcdutl' -f -a '(___x_cmd_advise_run_fish x-cmd etcdutl)' ; 
complete -c 'exa' -f -a '(___x_cmd_advise_run_fish x-cmd exa)' ; 
complete -c 'eza' -f -a '(___x_cmd_advise_run_fish x-cmd eza)' ; 
complete -c 'fd' -f -a '(___x_cmd_advise_run_fish x-cmd fd)' ; 
complete -c 'ffmpeg' -f -a '(___x_cmd_advise_run_fish x-cmd ffmpeg)' ; 
complete -c 'ffuf' -f -a '(___x_cmd_advise_run_fish x-cmd ffuf)' ; 
complete -c 'find' -f -a '(___x_cmd_advise_run_fish x-cmd find)' ; 
complete -c 'firework' -f -a '(___x_cmd_advise_run_fish x-cmd firework)' ; 
complete -c 'fish' -f -a '(___x_cmd_advise_run_fish x-cmd fish)' ; 
complete -c 'flink' -f -a '(___x_cmd_advise_run_fish x-cmd flink)' ; 
complete -c 'frpc' -f -a '(___x_cmd_advise_run_fish x-cmd frpc)' ; 
complete -c 'frps' -f -a '(___x_cmd_advise_run_fish x-cmd frps)' ; 
complete -c 'fzf' -f -a '(___x_cmd_advise_run_fish x-cmd fzf)' ; 
complete -c 'gh' -f -a '(___x_cmd_advise_run_fish x-cmd gh)' ; 
complete -c 'git' -f -a '(___x_cmd_advise_run_fish x-cmd git)' ; 
complete -c 'gitea' -f -a '(___x_cmd_advise_run_fish x-cmd gitea)' ; 
complete -c 'gitleaks' -f -a '(___x_cmd_advise_run_fish x-cmd gitleaks)' ; 
complete -c 'gitoxide' -f -a '(___x_cmd_advise_run_fish x-cmd gitoxide)' ; 
complete -c 'gitui' -f -a '(___x_cmd_advise_run_fish x-cmd gitui)' ; 
complete -c 'gix' -f -a '(___x_cmd_advise_run_fish x-cmd gix)' ; 
complete -c 'globalping' -f -a '(___x_cmd_advise_run_fish x-cmd globalping)' ; 
complete -c 'glow' -f -a '(___x_cmd_advise_run_fish x-cmd glow)' ; 
complete -c 'gm' -f -a '(___x_cmd_advise_run_fish x-cmd gm)' ; 
complete -c 'go' -f -a '(___x_cmd_advise_run_fish x-cmd go)' ; 
complete -c 'goreleaser' -f -a '(___x_cmd_advise_run_fish x-cmd goreleaser)' ; 
complete -c 'gosop' -f -a '(___x_cmd_advise_run_fish x-cmd gosop)' ; 
complete -c 'gost' -f -a '(___x_cmd_advise_run_fish x-cmd gost)' ; 
complete -c 'gotop' -f -a '(___x_cmd_advise_run_fish x-cmd gotop)' ; 
complete -c 'grep' -f -a '(___x_cmd_advise_run_fish x-cmd grep)' ; 
complete -c 'grex' -f -a '(___x_cmd_advise_run_fish x-cmd grex)' ; 
complete -c 'groovy' -f -a '(___x_cmd_advise_run_fish x-cmd groovy)' ; 
complete -c 'groovyserver' -f -a '(___x_cmd_advise_run_fish x-cmd groovyserver)' ; 
complete -c 'gum' -f -a '(___x_cmd_advise_run_fish x-cmd gum)' ; 
complete -c 'hadoop' -f -a '(___x_cmd_advise_run_fish x-cmd hadoop)' ; 
complete -c 'helix' -f -a '(___x_cmd_advise_run_fish x-cmd helix)' ; 
complete -c 'helm' -f -a '(___x_cmd_advise_run_fish x-cmd helm)' ; 
complete -c 'hok' -f -a '(___x_cmd_advise_run_fish x-cmd hok)' ; 
complete -c 'htop' -f -a '(___x_cmd_advise_run_fish x-cmd htop)' ; 
complete -c 'hurl' -f -a '(___x_cmd_advise_run_fish x-cmd hurl)' ; 
complete -c 'hx' -f -a '(___x_cmd_advise_run_fish x-cmd hx)' ; 
complete -c 'hyperfine' -f -a '(___x_cmd_advise_run_fish x-cmd hyperfine)' ; 
complete -c 'ismc' -f -a '(___x_cmd_advise_run_fish x-cmd ismc)' ; 
complete -c 'java' -f -a '(___x_cmd_advise_run_fish x-cmd java)' ; 
complete -c 'jbake' -f -a '(___x_cmd_advise_run_fish x-cmd jbake)' ; 
complete -c 'jmeter' -f -a '(___x_cmd_advise_run_fish x-cmd jmeter)' ; 
complete -c 'jq' -f -a '(___x_cmd_advise_run_fish x-cmd jq)' ; 
complete -c 'julia' -f -a '(___x_cmd_advise_run_fish x-cmd julia)' ; 
complete -c 'k3d' -f -a '(___x_cmd_advise_run_fish x-cmd k3d)' ; 
complete -c 'ki' -f -a '(___x_cmd_advise_run_fish x-cmd ki)' ; 
complete -c 'kimi' -f -a '(___x_cmd_advise_run_fish x-cmd kimi)' ; 
complete -c 'kind' -f -a '(___x_cmd_advise_run_fish x-cmd kind)' ; 
complete -c 'kobweb' -f -a '(___x_cmd_advise_run_fish x-cmd kobweb)' ; 
complete -c 'kotlin' -f -a '(___x_cmd_advise_run_fish x-cmd kotlin)' ; 
complete -c 'kscript' -f -a '(___x_cmd_advise_run_fish x-cmd kscript)' ; 
complete -c 'ktx' -f -a '(___x_cmd_advise_run_fish x-cmd ktx)' ; 
complete -c 'kube-capacity' -f -a '(___x_cmd_advise_run_fish x-cmd kube-capacity)' ; 
complete -c 'kube-linter' -f -a '(___x_cmd_advise_run_fish x-cmd kube-linter)' ; 
complete -c 'kube-score' -f -a '(___x_cmd_advise_run_fish x-cmd kube-score)' ; 
complete -c 'kubectx' -f -a '(___x_cmd_advise_run_fish x-cmd kubectx)' ; 
complete -c 'layrry' -f -a '(___x_cmd_advise_run_fish x-cmd layrry)' ; 
complete -c 'lazydocker' -f -a '(___x_cmd_advise_run_fish x-cmd lazydocker)' ; 
complete -c 'lazygit' -f -a '(___x_cmd_advise_run_fish x-cmd lazygit)' ; 
complete -c 'llamafile' -f -a '(___x_cmd_advise_run_fish x-cmd llamafile)' ; 
complete -c 'lms' -f -a '(___x_cmd_advise_run_fish x-cmd lms)' ; 
complete -c 'lua' -f -a '(___x_cmd_advise_run_fish x-cmd lua)' ; 
complete -c 'luarocks' -f -a '(___x_cmd_advise_run_fish x-cmd luarocks)' ; 
complete -c 'luarocks-admin' -f -a '(___x_cmd_advise_run_fish x-cmd luarocks-admin)' ; 
complete -c 'lynis' -f -a '(___x_cmd_advise_run_fish x-cmd lynis)' ; 
complete -c 'magick' -f -a '(___x_cmd_advise_run_fish x-cmd magick)' ; 
complete -c 'markitdown' -f -a '(___x_cmd_advise_run_fish x-cmd markitdown)' ; 
complete -c 'mas' -f -a '(___x_cmd_advise_run_fish x-cmd mas)' ; 
complete -c 'maven' -f -a '(___x_cmd_advise_run_fish x-cmd maven)' ; 
complete -c 'mawk' -f -a '(___x_cmd_advise_run_fish x-cmd mawk)' ; 
complete -c 'mcs' -f -a '(___x_cmd_advise_run_fish x-cmd mcs)' ; 
complete -c 'micro' -f -a '(___x_cmd_advise_run_fish x-cmd micro)' ; 
complete -c 'micronaut' -f -a '(___x_cmd_advise_run_fish x-cmd micronaut)' ; 
complete -c 'migrate' -f -a '(___x_cmd_advise_run_fish x-cmd migrate)' ; 
complete -c 'minikube' -f -a '(___x_cmd_advise_run_fish x-cmd minikube)' ; 
complete -c 'mirrord' -f -a '(___x_cmd_advise_run_fish x-cmd mirrord)' ; 
complete -c 'mn' -f -a '(___x_cmd_advise_run_fish x-cmd mn)' ; 
complete -c 'moon' -f -a '(___x_cmd_advise_run_fish x-cmd moon)' ; 
complete -c 'mosh' -f -a '(___x_cmd_advise_run_fish x-cmd mosh)' ; 
complete -c 'mosquitto' -f -a '(___x_cmd_advise_run_fish x-cmd mosquitto)' ; 
complete -c 'mosquitto_passwd' -f -a '(___x_cmd_advise_run_fish x-cmd mosquitto_passwd)' ; 
complete -c 'mosquitto_pub' -f -a '(___x_cmd_advise_run_fish x-cmd mosquitto_pub)' ; 
complete -c 'mosquitto_rr' -f -a '(___x_cmd_advise_run_fish x-cmd mosquitto_rr)' ; 
complete -c 'mosquitto_sub' -f -a '(___x_cmd_advise_run_fish x-cmd mosquitto_sub)' ; 
complete -c 'mvn' -f -a '(___x_cmd_advise_run_fish x-cmd mvn)' ; 
complete -c 'mybatis_migrations' -f -a '(___x_cmd_advise_run_fish x-cmd mybatis_migrations)' ; 
complete -c 'nano' -f -a '(___x_cmd_advise_run_fish x-cmd nano)' ; 
complete -c 'ncat' -f -a '(___x_cmd_advise_run_fish x-cmd ncat)' ; 
complete -c 'ncdu' -f -a '(___x_cmd_advise_run_fish x-cmd ncdu)' ; 
complete -c 'nmap' -f -a '(___x_cmd_advise_run_fish x-cmd nmap)' ; 
complete -c 'node' -f -a '(___x_cmd_advise_run_fish x-cmd node)' ; 
complete -c 'nping' -f -a '(___x_cmd_advise_run_fish x-cmd nping)' ; 
complete -c 'npm' -f -a '(___x_cmd_advise_run_fish x-cmd npm)' ; 
complete -c 'npx' -f -a '(___x_cmd_advise_run_fish x-cmd npx)' ; 
complete -c 'oh-my-posh' -f -a '(___x_cmd_advise_run_fish x-cmd oh-my-posh)' ; 
complete -c 'openssl' -f -a '(___x_cmd_advise_run_fish x-cmd openssl)' ; 
complete -c 'ord' -f -a '(___x_cmd_advise_run_fish x-cmd ord)' ; 
complete -c 'osquery' -f -a '(___x_cmd_advise_run_fish x-cmd osquery)' ; 
complete -c 'pacman' -f -a '(___x_cmd_advise_run_fish x-cmd pacman)' ; 
complete -c 'pandoc' -f -a '(___x_cmd_advise_run_fish x-cmd pandoc)' ; 
complete -c 'pdfcpu' -f -a '(___x_cmd_advise_run_fish x-cmd pdfcpu)' ; 
complete -c 'perl' -f -a '(___x_cmd_advise_run_fish x-cmd perl)' ; 
complete -c 'pip' -f -a '(___x_cmd_advise_run_fish x-cmd pip)' ; 
complete -c 'pipx' -f -a '(___x_cmd_advise_run_fish x-cmd pipx)' ; 
complete -c 'pixi' -f -a '(___x_cmd_advise_run_fish x-cmd pixi)' ; 
complete -c 'pkgx' -f -a '(___x_cmd_advise_run_fish x-cmd pkgx)' ; 
complete -c 'pnpm' -f -a '(___x_cmd_advise_run_fish x-cmd pnpm)' ; 
complete -c 'pomchecker' -f -a '(___x_cmd_advise_run_fish x-cmd pomchecker)' ; 
complete -c 'powershell' -f -a '(___x_cmd_advise_run_fish x-cmd powershell)' ; 
complete -c 'procs' -f -a '(___x_cmd_advise_run_fish x-cmd procs)' ; 
complete -c 'proot' -f -a '(___x_cmd_advise_run_fish x-cmd proot)' ; 
complete -c 'python' -f -a '(___x_cmd_advise_run_fish x-cmd python)' ; 
complete -c 'qrencode' -f -a '(___x_cmd_advise_run_fish x-cmd qrencode)' ; 
complete -c 'quarkus' -f -a '(___x_cmd_advise_run_fish x-cmd quarkus)' ; 
complete -c 'raku' -f -a '(___x_cmd_advise_run_fish x-cmd raku)' ; 
complete -c 'rclone' -f -a '(___x_cmd_advise_run_fish x-cmd rclone)' ; 
complete -c 'rg' -f -a '(___x_cmd_advise_run_fish x-cmd rg)' ; 
complete -c 'ruff' -f -a '(___x_cmd_advise_run_fish x-cmd ruff)' ; 
complete -c 'rust' -f -a '(___x_cmd_advise_run_fish x-cmd rust)' ; 
complete -c 'rye' -f -a '(___x_cmd_advise_run_fish x-cmd rye)' ; 
complete -c 'scala' -f -a '(___x_cmd_advise_run_fish x-cmd scala)' ; 
complete -c 'scoop' -f -a '(___x_cmd_advise_run_fish x-cmd scoop)' ; 
complete -c 'scorecard' -f -a '(___x_cmd_advise_run_fish x-cmd scorecard)' ; 
complete -c 'sd' -f -a '(___x_cmd_advise_run_fish x-cmd sd)' ; 
complete -c 'sed' -f -a '(___x_cmd_advise_run_fish x-cmd sed)' ; 
complete -c 'shadcn' -f -a '(___x_cmd_advise_run_fish x-cmd shadcn)' ; 
complete -c 'shtris' -f -a '(___x_cmd_advise_run_fish x-cmd shtris)' ; 
complete -c 'skate' -f -a '(___x_cmd_advise_run_fish x-cmd skate)' ; 
complete -c 'skeletal' -f -a '(___x_cmd_advise_run_fish x-cmd skeletal)' ; 
complete -c 'smartctl' -f -a '(___x_cmd_advise_run_fish x-cmd smartctl)' ; 
complete -c 'socat' -f -a '(___x_cmd_advise_run_fish x-cmd socat)' ; 
complete -c 'soft-serve' -f -a '(___x_cmd_advise_run_fish x-cmd soft-serve)' ; 
complete -c 'sqlite3' -f -a '(___x_cmd_advise_run_fish x-cmd sqlite3)' ; 
complete -c 'ssh' -f -a '(___x_cmd_advise_run_fish x-cmd ssh)' ; 
complete -c 'starship' -f -a '(___x_cmd_advise_run_fish x-cmd starship)' ; 
complete -c 'sudo' -f -a '(___x_cmd_advise_run_fish x-cmd sudo)' ; 
complete -c 'tar' -f -a '(___x_cmd_advise_run_fish x-cmd tar)' ; 
complete -c 'tea' -f -a '(___x_cmd_advise_run_fish x-cmd tea)' ; 
complete -c 'termshark' -f -a '(___x_cmd_advise_run_fish x-cmd termshark)' ; 
complete -c 'termsvg' -f -a '(___x_cmd_advise_run_fish x-cmd termsvg)' ; 
complete -c 'terraform' -f -a '(___x_cmd_advise_run_fish x-cmd terraform)' ; 
complete -c 'tig' -f -a '(___x_cmd_advise_run_fish x-cmd tig)' ; 
complete -c 'tmux' -f -a '(___x_cmd_advise_run_fish x-cmd tmux)' ; 
complete -c 'tokei' -f -a '(___x_cmd_advise_run_fish x-cmd tokei)' ; 
complete -c 'tomcat' -f -a '(___x_cmd_advise_run_fish x-cmd tomcat)' ; 
complete -c 'toolkit' -f -a '(___x_cmd_advise_run_fish x-cmd toolkit)' ; 
complete -c 'traceroute' -f -a '(___x_cmd_advise_run_fish x-cmd traceroute)' ; 
complete -c 'trdsql' -f -a '(___x_cmd_advise_run_fish x-cmd trdsql)' ; 
complete -c 'ttyd' -f -a '(___x_cmd_advise_run_fish x-cmd ttyd)' ; 
complete -c 'tz' -f -a '(___x_cmd_advise_run_fish x-cmd tz)' ; 
complete -c 'ucloud' -f -a '(___x_cmd_advise_run_fish x-cmd ucloud)' ; 
complete -c 'unix2dos' -f -a '(___x_cmd_advise_run_fish x-cmd unix2dos)' ; 
complete -c 'upx' -f -a '(___x_cmd_advise_run_fish x-cmd upx)' ; 
complete -c 'usql' -f -a '(___x_cmd_advise_run_fish x-cmd usql)' ; 
complete -c 'uv' -f -a '(___x_cmd_advise_run_fish x-cmd uv)' ; 
complete -c 'vhs' -f -a '(___x_cmd_advise_run_fish x-cmd vhs)' ; 
complete -c 'visualvm' -f -a '(___x_cmd_advise_run_fish x-cmd visualvm)' ; 
complete -c 'wasmer' -f -a '(___x_cmd_advise_run_fish x-cmd wasmer)' ; 
complete -c 'wasmtime' -f -a '(___x_cmd_advise_run_fish x-cmd wasmtime)' ; 
complete -c 'websocat' -f -a '(___x_cmd_advise_run_fish x-cmd websocat)' ; 
complete -c 'whisperlivekit' -f -a '(___x_cmd_advise_run_fish x-cmd whisperlivekit)' ; 
complete -c 'winget' -f -a '(___x_cmd_advise_run_fish x-cmd winget)' ; 
complete -c 'ws4sqlite' -f -a '(___x_cmd_advise_run_fish x-cmd ws4sqlite)' ; 
complete -c 'xonsh' -f -a '(___x_cmd_advise_run_fish x-cmd xonsh)' ; 
complete -c 'xsv' -f -a '(___x_cmd_advise_run_fish x-cmd xsv)' ; 
complete -c 'yarn' -f -a '(___x_cmd_advise_run_fish x-cmd yarn)' ; 
complete -c 'yq' -f -a '(___x_cmd_advise_run_fish x-cmd yq)' ; 
complete -c 'yum' -f -a '(___x_cmd_advise_run_fish x-cmd yum)' ; 
complete -c 'zellij' -f -a '(___x_cmd_advise_run_fish x-cmd zellij)' ; 
complete -c 'zenith' -f -a '(___x_cmd_advise_run_fish x-cmd zenith)' ; 
complete -c 'zig' -f -a '(___x_cmd_advise_run_fish x-cmd zig)' ; 
complete -c 'zstd' -f -a '(___x_cmd_advise_run_fish x-cmd zstd)' ; 
