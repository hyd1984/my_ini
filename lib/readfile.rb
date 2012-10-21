def readfile(inifile)
    file=File.new("test.ini","r")
    while(line=file.gets)
          line.chomp!.strip!
          if(line =~/\[[A-Za-z0-9]*\]/)
                 puts "section line"
          elsif(line=~/^;/)
                 puts "comment line"
          elsif(line=~/\w=\w/)
                 puts "parameter line"
          else
                 puts "#{line}"
          end
    end
    file.close
end

