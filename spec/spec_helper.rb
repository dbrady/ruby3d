require 'rubygems'
require 'spec'

$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))

def require_all_files_in_folder(folder, extension = "*.rb")
  for file in Dir[File.join(folder, "**/#{extension}")]
    require file
  end
end

require_all_files_in_folder "spec/spec_helpers"

