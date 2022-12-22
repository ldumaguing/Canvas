use mysql::*;
use mysql::prelude::*;

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
			// Some(x) => println!("{}", x.to_string()),
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
	println!("... {}", s);
	5
}

fn get_y(s: &str) -> i32 {
	println!("... {}", s);
	6
}




