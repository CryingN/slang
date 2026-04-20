module slang

import tools
import term

pub fn test_slang() {
	files := tools.walk_files(slang_test_path)
	mut flag := '\n'
	for file in files {
		load_data := run_slang(file) or { continue }
		print('data: ${load_data}')
		read_data := tools.read_file(file).split("@[exit]")[1].trim_space()
		if load_data != read_data {
			flag += '${term.red('Error')}: Test file: ${file} exhibits unexpected behavior.\n'
			flag += 'You can execute in the main directory of the slang project:\n'
			flag += '\tdotnet run --project slang json ./test${file[1..]}\n'
			flag += 'If need to ${term.yellow('update the compilation information')}, you can run:\n'
			flag += '\tv run main.v .${file[1..]}\n'
		}
	}
	if flag != '\n' {
		panic(flag)
	}
}

