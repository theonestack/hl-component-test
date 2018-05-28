module Highlander

  module MapProviders

    class DummyMappings

      def self.getMaps(config)
        {
            'map1' => {
                'dev' => {
                    'key' => 'dev.pem'
                },
                'prod' => {
                    'key' => 'prod.pem'
                }
            }
        }
      end

    end

  end

end