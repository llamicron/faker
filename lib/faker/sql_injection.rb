module Faker
  class SQLInjection < Name
    flexible :name
    class << self

      def name
        name = super
        # return "#{name}; DROP TABLE IF EXISTS '#{table_name}'"
        return "SELECT * FROM #{table_name} WHERE 'name' = '#{name}';"
      end

      private

      def table_name
        ['users', 'table_schema', 'products', 'students', 'tags'].sample
      end

    end
  end
end
