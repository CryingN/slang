module slang

import os
import tools

pub fn fix_file(file string) {
	load_file := tools.read_file(file)
	slang_result := run_slang(file) or { panic('Error: Sekai file not found. Please confirm that the file extension is .se and the file path is correct: ${file}') }
	data := load_file.split("@[exit]")[0] + "@[exit]\n" + slang_result
	os.write_file(file, data) or {
		panic('Error: Data update failed.')
	}
}


