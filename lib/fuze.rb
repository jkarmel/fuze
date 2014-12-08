module Fuze
  def self.fuze(file)
    files_to_concatenate = File.read(file).lines.map {|l| l[0..-2]} #strip of \n at end
    directory = File.dirname(file)
    files_to_concatenate.map do |f|
      path = File.join(directory, f)
      File.read path
    end.join "\n"
  end
end
