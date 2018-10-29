gem "hamlit"
Bundler.with_clean_env do
  run "bundle install"
end

user_email = ask("Enter user email for create commit:")
user_name = ask("Enter user name for create commit:")
commit_message = ask("Enter commit message:")

git config: "user.email #{user_email}"
git config: "user.name #{user_name}"
git add: "."
git commit: "-a -m '#{commit_message}'"
