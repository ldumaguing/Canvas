use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
    unit_id: Option<String>,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka@localhost:3306/Stalingrad_42";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name, UnitID from images where pieceType = 'combat' order by name",
            |(id, name, unit_id)| {
                Image { id, name, unit_id }
            },
    )?;

    println!("<!DOCTYPE html>");
    println!("<html><head></head><body><table>");
    println!("<tr><th>Id</th><th>Image</th>");
    println!("<th>Unit ID</th>");
    println!("<th>Name</th></tr>");
    println!("</tr>");

    for chit in selected {
        println!("<tr>");
        
        println!("<td>{}</td>", chit.id);
        
        println!("<td><img src=\"/opt/Vassal/Stalingrad 42/{}\" ></td>",
            chit.name.as_ref().unwrap().to_string() );
        
        match chit.unit_id.as_ref() {
            None => println!("<td></td>"),
            Some(x) => println!("<td>{}</td>", x.to_string()),
        }        

        println!("<td>{}</td>",
            chit.name.as_ref().unwrap().to_string() );



        // println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string());
        println!("</tr>");
	}

    // println!("<tr><th>Id</th><th>Front</th><th>Back</th>");
    // println!("<th>Name</th></tr></table></body></html>");
    
    println!("</table></body></html>");
    
    Ok (())
}

