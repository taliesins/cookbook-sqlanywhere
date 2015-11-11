name             'sqlanywhere'
maintainer       'Taliesin Sisson'
maintainer_email 'taliesins@yahoo.com'
license          'Apache 2.0'
description      'Installs and configures sql anywhere'
long_description 'Installs and configures sql anywhere'
version          '0.1.0'

%w( windows ).each do |os|
  supports os
end

depends 		 '7-zip'
depends          'windows', '>= 1.2.6'

provides 'client::17'

recipe	'client::17', 'Sql Anywhere Client 17'

source_url 'https://github.com/taliesins/cookbook-SqlAnyWhere' if respond_to?(:source_url)
issues_url 'https://github.com/taliesins/cookbook-SqlAnyWhere/issues' if respond_to?(:issues_url)