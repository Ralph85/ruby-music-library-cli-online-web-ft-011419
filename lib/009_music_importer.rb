class MusicImporter

        attr_accessor :path

        def initialize(path)
                @path = path
        end

        def files
                files = Dir.glob("#{path}**/*")
                files = files.collect{|file|file.scan(/(?<=mp3s\/)(.*)/)}.flatten
        end

        def self.import
                new_files = self.files
                new_files.each do |file|
                        new_song = Song.new(file)
                end

        end

end
