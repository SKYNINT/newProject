Pod::Spec.new do |s|

s.name                 = "newProject"
s.version              = "1.0.0"
s.summary              = "A private pods of newProject."
s.homepage             = "https://github.com/xsy1993/newProject"
s.license              = { :type => 'MIT'}
s.author             = { "sky" => "xiaoshangyuan@unovo.com" }

s.platform             = :ios, "8.0"
s.source               = { :git => "https://github.com/xsy1993/newProject.git" }
s.source_files          = "pods/**/*.{h,m}"

end
