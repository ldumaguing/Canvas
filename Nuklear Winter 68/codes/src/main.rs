use mysql::*;
use mysql::prelude::*;
use regex::Regex;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    location: Option<String>,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka@localhost:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT location from instances order by stack, location desc",
            |location| {
                Image { location }
            },
    )?;

    let mut x_loc: i32;
    let mut y_loc: i32;

    for chit in selected {
		match chit.location.as_ref() {
			None => println!("-"),
			Some(hex) => {
				x_loc = get_x(hex);
				y_loc = get_y(hex);
				println!("{} {}, {}", hex, x_loc, y_loc);
				},
		}
	}
    
    
    
    Ok (())
}

fn get_x(s: &str) -> i32 {
	let letters = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
	                "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
	                "U", "V", "W", "X", "Y", "Z",
	                "AA", "BB", "CC", "DD", "EE" ];

	let mut counter = 0;
	let re = Regex::new(r"[0-9]").unwrap();
    let x_slice = re.replace_all(s, "");
	
	for fish in &letters {
		if fish.eq(&x_slice) { break; }
		counter += 1;
	}

	counter
}

fn get_y(s: &str) -> i32 {
	let re = Regex::new(r"[a-zA-Z]").unwrap();
    let after = re.replace_all(s, "");
	let y = after.parse::<i32>().unwrap();

	y
}




