use mysql::*;
use mysql::prelude::*;
use regex::Regex;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    location: Option<String>,
    val1: i32,
    val2: i32,
    val3: i32,
    val4: i32,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
	println!("window.onload = function() {{");
	println!("let c = document.getElementById(\"Canvas0\");");
	println!("let ctx = c.getContext(\"2d\");");
	println!("let img = document.getElementById(\"137\");");
	println!("ctx.drawImage(img,0,0);");
	println!("foo(c, ctx, img); }}");
    println!("function foo(c, ctx, img) {{");


    let url = "mysql://ayeka@localhost:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT location, id, currId, isFront, stack from v_instances order by stack, location desc",
            |(location, val1, val2, val3, val4)| {
                Image { location, val1, val2, val3, val4 }
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
				println!("\
				img = document.getElementById(\"{}\"); \
				ctx.drawImage(img,{},{}); \
				", chit.val1, x_loc, y_loc);
				},
		}
	}
    println!("}}");
    
    
    Ok (())
}

// *************************************************************************************************
fn get_x(s: &str) -> i32 {
	let mut counter = convert2num(s);

    let width: f32 = 168.857142857;
    let floatnum: f32 = counter as f32 * width;
    let shift = 293;
    counter = floatnum as i32;
    counter = counter + shift;

	counter
}

// *************************************************************************************************
fn get_y(s: &str) -> i32 {
	let re = Regex::new(r"[a-zA-Z]").unwrap();
    let after = re.replace_all(s, "");
	let mut y: i32 = after.parse::<i32>().unwrap();
	y = y - 1;

	let x_loc = convert2num(s);
	let shift = 141;
    y = y * 195;

	if x_loc % 2 > 0 { y = y + 98; }
    y = y + shift;

	y
}

// *************************************************************************************************
fn convert2num(s: &str) -> i32 {
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





















