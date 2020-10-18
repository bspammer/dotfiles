# Defined in - @ line 1
function gpush --description 'Push a new branch to origin'
	git push --set-upstream origin (git rev-parse --symbolic-full-name --abbrev-ref HEAD)
end
