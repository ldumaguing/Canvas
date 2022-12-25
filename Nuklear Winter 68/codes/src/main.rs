use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    // dbg!(args);
    println!("{}", &args[0]);
}
