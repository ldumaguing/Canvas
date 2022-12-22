use mysql::*;
use mysql::prelude::*;
use regex::Regex;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    location: Option<String>,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka:sasamichan@10.60.28.124:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT location from instances order by stack, location desc",
            |location| {
                Image { location }
            },
    )?;

    let mut x_loc = 0;
    let mut y_loc = 0;
    
    println!("1: {}, {}", x_loc, y_loc);

    for chit in selected {
		match chit.location.as_ref() {
			None => println!("-"),
			Some(x) => {
				x_loc = get_x(x);
				y_loc = get_y(x);
				},
		}
	}
    
    println!("2: {}, {}", x_loc, y_loc);
    
    Ok (())
}

fn get_x(s: &str) -> i32 {
	let mut counter = 0;
	let letters = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
	    "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
	    "AA", "BB", "CC", "DD", "EE" ];
	let bbb: String = String::from(s);
	for fish in &letters {
		println!("-------------> {} {}", bbb, fish.eq(&bbb));
		// println!("..{}", fish.eq(&bbb));
		if fish.eq(&s) {println!("breaking..."); break;}
		counter += 1;
	}
	println!("... {}", s);
	let re = Regex::new(r"[0-9]").unwrap();
    let after = re.replace_all(s, "");
	println!("X: {}", after);
    println!("count: {}", counter);
	counter
}

fn get_y(s: &str) -> i32 {
	let re = Regex::new(r"[a-zA-Z]").unwrap();
    let after = re.replace_all(s, "");
	println!("Y: {}", after);
	6
}




