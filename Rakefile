desc "Generate flat files with Middleman"
task :generate do
  puts "## Generating site with Middleman"
  system "middleman build --clean"
  cd "build" do
    system "git init"
    system "git config user.name 'error800'"
    system "git config user.email 'error800@microwavemusic.net'"
    system "git remote add origin https://github.com/error800/error800.github.io.git"
  end
end

desc "Push the build to GitHub"
task :push do
  puts "## Deploying build to GitHub"
  cd "build" do
    system "git add -A"
    system "git commit -m \"Site updated at #{Time.now.utc}\""
    system "git push origin master --force"
  end
end

desc "Generate flat files and deploy to GitHub Pages"
task :deploy => [:generate, :push] do
end
