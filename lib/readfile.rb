def readfile(inifile)
    file=File.new("test.ini","r")
    section_pat=/\[([A-Za-z0-9]*)\]/
    comment_pat=/^;/
    parameter_pat=/(\w*)=(\w*)/
    hash=Hash.new()
    
    while(line=file.gets)
          line.chomp!.strip!
          if(line =~section_pat)
                 section=line[section_pat,1]
                 hash[section]=Hash.new
          elsif(line=~comment_pat)
                 #puts "comment line"
          elsif(line=~parameter_pat)
                 #puts "#{line[parameter_pat,1]}=#{ line[parameter_pat,2]}"
                 parameter,value=line[parameter_pat,1],line[parameter_pat,2]
                 hash[section][parameter]=value
          else
                 puts "#{line}"
          end
    end
  hash.each_pair {|key,value| print key," ",value,"\n"}
    file.close
end

