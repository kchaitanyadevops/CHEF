name 'prod'
description 'The production environment'
default_attributes 'sample' => {'URL' => 'prod.google.com'}, 'stack' => {'DBNODE' => 'mysqdb-prod.student.com'}
cookbook_versions  'sample' => '= 0.1.0'

