module Fuze
  def self.fuze(file)
    files_to_concatenate = File.read(file).lines.map {|l| l[0..-2]} #strip of \n at end
    directory = File.dirname(file)
    files_to_concatenate.map do |f|
      path = File.join(directory, f)
      unless f[/\.fuze$/]
        File.read path
      else
        fuze path
      end
    end.join "\n"
  end
end
