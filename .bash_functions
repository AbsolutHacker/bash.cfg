rum() {
	# "RUn Media"
	pushd . >/dev/null
	cd ${PRODUCT_DIR}
	./gradlew run --include-build="${WORKSPACE}"
	popd
}

goJF() {
	[ -e ./gradlew ] && ./gradlew goJF 
}

push() {
	git push "$@"
}

pfush() {
	push --force
}

deploy() {
	pushd . >/dev/null
	cd ${PRODUCT_DIR}
	./gradlew --include-build="${WORKSPACE}" deployDistToaudi.target
	popd
}

function reset {
	if [ -z "$1" ]
	then
		hostname="${DEFAULT_HOSTNAME}"
	else
		hostname="$1"
	fi
	ssh -l root "$hostname" /opt/gem/scripts/reset-with-persistence.sh
}

disasm() {
  while read line
      do
          export outfile_cl="${line/libs/src}"
          echo javap -c ${line} '>' ${line%%.class}.java
          javap -c ${line} > ${line%%.class}.java
          rm ${line}
      done
}

