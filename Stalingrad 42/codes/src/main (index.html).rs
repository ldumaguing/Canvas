use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka:sasamichan@10.60.28.124:3306/Stalingrad_42";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name from images order by id",
            |(id, name)| {
                Image { id, name }
            },
    )?;

    println!("<!DOCTYPE html>");
    println!("<html><head><!-- <meta http-equiv=\"refresh\" content=\"3\" /> -->");
    println!("<script src=\"canvas0.js\"></script></head><body>");

    for image in selected {
        println!("<img id=\"{}\" src=\"/opt/Vassal/Stalingrad 42/{}\" hidden>",
            image.id,
            image.name.as_ref().unwrap().to_string());
	}
    
    println!("<canvas id=\"Canvas0\" width=\"6519\" height=\"7186\" >");
    println!("Your browser does not support the HTML canvas tag.</canvas>");
    println!("</body></html>");
    
    Ok (())
}

