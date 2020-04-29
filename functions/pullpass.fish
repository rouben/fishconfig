function pullpass --description="Updates pass store with all remotes defined in git working copy"
	if test -d ~/.password-store/.git && command -sq pass && command -sq grep && command -sq xargs
#		for i in (pass git remote)
#			pass git pull $i master
#		end
		pass git remote | grep -v all | xargs -L1 -I R pass git pull R master
	else
		echo Pass, grep or xargs is/are not installed or there is no pass data store!
	end
end
