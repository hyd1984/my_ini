def readfile(inifile)
    file=File.new("test.ini","r")
    section_pat=/\[([A-Za-z0-9]*)\]/
    comment_pat=/^;/
    parameter_pat=/(\w*)=(\w*)/
    while(line=file.gets)
          line.chomp!.strip!
          if(line =~section_pat)
                 puts line[section_pat,1]
          elsif(line=~comment_pat)
                 puts "comment line"
          elsif(line=~parameter_pat)
            puts "#{line[parameter_pat,1]}=#{ line[parameter_pat,2]}"
          else
                 puts "#{line}"
          end
    end
    file.close
end

