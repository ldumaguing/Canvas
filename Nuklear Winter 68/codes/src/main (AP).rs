use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
    val1: i32, // AP_Fire_Red
    val2: i32, // AP_Fire_Blu
    val3: i32, // AP_Rang_Red
    val4: i32, // AP_Rang_Wht
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka@localhost:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name, AP_Fire_Red, AP_Fire_Blu, AP_Rang_Red, AP_Rang_Wht from images where pieceType = 'combat' order by id",
            |(id, name, val1, val2, val3, val4)| {
                Image { id, name, val1, val2, val3, val4 }
            },
    )?;

    println!("<!DOCTYPE html>");
    println!("<html><head></head><body><table>");
    println!("<tr><th>Id</th><th>Image</th>");
    println!("<th>Fire_Red</th>");
    println!("<th>Fire_Blu</th>");
    println!("<th>Rang_Red</th>");
    println!("<th>Rang_Wht</th>");
    // println!("<th>Back</th><th>Name</th></tr>");
    println!("<th>Name</th></tr>");

    for chit in selected {
        println!("<tr>");
        println!("<td>{}</td>", chit.id);
        println!("<td><img src=\"/opt/Vassal/Nuklear Winter 68/{}\" ></td>",
            chit.name.as_ref().unwrap().to_string() );

/*
        match chit.unittype.as_ref() {
            None => println!("<td></td>"),
            Some(x) => println!("<td>{}</td>", x.to_string()),
        }
*/

        println!("<td>{}</td>", chit.val1);
        println!("<td>{}</td>", chit.val2);
        println!("<td>{}</td>", chit.val3);
        println!("<td>{}</td>", chit.val4);

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
