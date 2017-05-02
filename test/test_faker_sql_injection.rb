require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerSQLInjection < Test::Unit::TestCase
  def setup
    @injector = Faker::SQLInjection
  end

  def test_name_injection
    assert @injector.name.match(/(\w+\.? ?){2,3}/)
  end

  def test_include_drop_statement
    assert @injector.name.match(/drop/)
  end
end
