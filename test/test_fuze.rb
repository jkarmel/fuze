require 'minitest/autorun'
require 'fuze'

class FuzeTest < Minitest::Test
  def test_flat_join
    combined_contents = File.read('test/files/environment_vars') + "\n" + File.read('test/files/random_stuff')
    assert_equal combined_contents, Fuze.fuze('test/files/production.fuze')
  end

  def test_recursive_join
    combined_contents = File.read('test/files/environment_vars') + "\n" + File.read('test/files/random_stuff')
    assert_equal combined_contents, Fuze.fuze('test/files/staging.fuze')
  end
end
