class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import
    files.each{ |filename| Song.files(filename) }
  end

end
