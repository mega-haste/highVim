OUT_FOLDER=~/.config/nvim;

echo "- Seting up directories";
mkdir -p $OUT_FOLDER/ || echo "";

cloneRepo() {
	git clone https://github.com/IAmHesham/highVim $OUT_FOLDER
}

echo "- Checking '$OUT_FOLDER'";
if [ -z "$( ls -A $OUT_FOLDER )" ]; then
	cloneRepo
else
	read -p "'$OUT_FOLDER' isn't empty want to back up? (y/N) " backup;
	if [[ "y" == "${backup,}" ]]; then
		read -p "Where exactly you want to backup? " backup_path;
		cp -r $OUT_FOLDER/ $backup_path/backup_path;
		echo "- back up process completed successfuly!";
		rm -rdf $OUT_FOLDER/{*,.*};
		echo "- '$OUT_FOLDER' contents deleted successfuly!";
		echo "- installation started...";
		cloneRepo;
	else
		echo "This operation will delete your old neovim settings that in '$OUT_FOLDER' FOREVER!";
		read -p "Are you sure? (Y/n) " hmm_sure;
		if [[ "y" == "${hmm_sure,}" ]]; then
			echo "There is NO comming back!!";
			rm -rdf $OUT_FOLDER/{*,.*};
			echo "- '$OUT_FOLDER' contents deleted successfuly!";
			cloneRepo
		fi
	fi
fi

