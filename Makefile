default:
	# actual build:
	git submodule update --init --remote --recursive
	# save to output
	mkdir -p ./output
	echo "running..." > output/output.txt
	cd FabLabKasse && ./run_unittests.sh > ../output/output.txt  2>&1 || { echo "Tests failed:" >&2; cat ../output/output.txt >&2; exit 1; }
	echo "done" >> output/output.txt
clean:
	rm -r output
