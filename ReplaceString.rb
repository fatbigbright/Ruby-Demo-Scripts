def ReplaceString(directory, target, replace)
    files = []
    Dir.foreach(directory) do |file| files << file end

    #files.each do |file| puts file end
    #
    files.each do |file|
        filePath = directory + "\\" + file
        if file == "." or file == ".." or File.directory?(filePath)
        else
            print file
            if !File.readable?(filePath) then
                puts " cannot be read."
                next
            end
            if !File.writable?(filePath) then 
                puts " cannot be written."
                next
            end
            object = File.open(filePath, "r")
            text = object.read
            object.close

            text.gsub!(target, replace)

            #puts text
            File.open(filePath, "w") {|content| content << text}
            puts " replaced."
    end
    end
end

ReplaceString(ARGV[0], ARGV[1], ARGV[2])

