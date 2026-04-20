module main

import os
import slang

fn main() {
	args := os.args
	if args.len == 1 {
		ci_test()
	} else {
		slang.fix_file(args[1])
	}
}

fn ci_test() {
	slang.run()

}

