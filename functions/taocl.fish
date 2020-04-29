function taocl --description="Display random command-line hint"
          echo
          echo A random hint from https://github.com/jlevy/the-art-of-command-line/ ...
          set_color blue
          curl -s https://raw.githubusercontent.com/jlevy/the-art-of-command-line/master/README.md |
          sed '/cowsay[.]png/d' |
          pandoc -f markdown -t html |
          xmlstarlet fo --html --dropdtd |
          xmlstarlet sel -t -v "(html/body/ul/li[count(p)>0])["(random)" mod last()+1]" |
          xmlstarlet unesc | fmt -80 | iconv -t US
          set_color normal
          echo
end
