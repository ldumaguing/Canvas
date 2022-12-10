use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
    is_mech: i32,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka@localhost:3306/Stalingrad_42";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name, isMech from images where pieceType = 'misc' order by name",
            |(id, name, is_mech)| {
                Image { id, name, is_mech }
            },
    )?;

    println!("<!DOCTYPE html>");
    println!("<html><head></head><body><table>");
    println!("<tr><th>Id</th><th>Image</th>");
    // println!("<th>Back</th><th>Name</th></tr>");
    println!("<th>Name</th></tr>");

    for chit in selected {
        println!("<tr>");
        println!("<td>{}</td>", chit.id);
        println!("<td><img src=\"/opt/Vassal/Stalingrad 42/{}\" ></td>",
            chit.name.as_ref().unwrap().to_string() );

        if chit.is_mech > 0 {
            println!("<td style=\"background-color:red;\">{}</td>", chit.name.as_ref().unwrap().to_string() );
        } else {
            println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string() );
        }



        /*
        match chit.back.as_ref() {
            None => println!("<td></td>"),
            Some(x) => println!("<td><img src=\"/opt/Vassal/Stalingrad 42/{}\" ></td>", x.to_string()),
        }
        */
        // println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string());
        println!("</tr>");
	}

    // println!("<tr><th>Id</th><th>Front</th><th>Back</th>");
    // println!("<th>Name</th></tr></table></body></html>");
    
    println!("</table></body></html>");
    
    Ok (())
}

