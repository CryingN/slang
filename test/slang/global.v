module slang

import os

const slang_test_path = "./slang/test"

fn run_slang(file string) !string {
        if file[(file.len-3)..] != '.se' {
                return error("Error: ${file} is not a Sekai script.")
        }
        result := os.execute("dotnet run --project ../slang json ${file}")
        return result.output.trim_space()
}


