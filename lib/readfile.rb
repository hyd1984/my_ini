def readfile(inifile)
    file=File.new("test.ini","r")
    while(line=file.gets)
          puts "#{line}"
    end
    file.close
end

