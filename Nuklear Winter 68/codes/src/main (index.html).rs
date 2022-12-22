use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka:sasamichan@10.60.28.124:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name from images order by id",
            |(id, name)| {
                Image { id, name }
            },
    )?;

    println!("<!DOCTYPE html><html><head><script src=\"canvas0.js\"></script></head><body>");

    for chit in selected {
		println!("<img id=\"{}\" src=\"/opt/Vassal/Nuklear Winter 68/{}\" hidden>",
		    chit.id, chit.name.as_ref().unwrap().to_string() );
	}
    
    println!("<canvas id=\"Canvas0\" width=\"6372\" height=\"4139\">
                  Your browser does not support the HTML canvas tag.</canvas>
              </body></html>");
    
    Ok (())
}
