class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    
    @@artists = []
    @@artist_counts = {}

    @@genres = []
    @@genre_counts = {}

    def initialize(song, artist, genre)
        @name = song
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists.push(self.artist)
        @@genres.push(self.genre)

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        count_hash = {}
        @@artists.each do |artist|
            if count_hash.include?(artist)
                count_hash[artist] += 1
            else
                count_hash[artist] = 1
            end
        end

        return count_hash
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        count_hash = {}
        @@genres.each do |genre|
            if count_hash.include?(genre)
                count_hash[genre] += 1
            else
                count_hash[genre] = 1
            end
        end

        return count_hash
    end

end