# Initialize a git repo (if not done already)
git init

# Create files and commit
echo "Welcome to DevOps Practice - Main Branch" > main.txt
git add main.txt
git commit -m "Initial commit on main"

# Create and switch to a new branch
git switch -c feature-branch

# Make a change in the new branch
echo "This line was added in the feature branch." >> main.txt
git add main.txt
git commit -m "Added feature branch line to main.txt"

# Merge back to main
git switch main
git merge feature-branch

# Stash changes
echo "Temporary stash line (not committed)" >> main.txt
git stash

# Re-apply the stash
git stash apply

# Add .gitignore to prevent tracking certain files
echo "secret" > Day-08/secret.txt
echo "secret.txt" >> .gitignore
git add .gitignore
git commit -m "Add .gitignore to exclude logs, temp, secrets, editor settings"
