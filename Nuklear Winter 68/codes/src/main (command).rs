use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
    val1: i32,
    val2: i32,
    val3: i32,
    val4: i32,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka@localhost:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name,
               val_1, val_2, val_3, val_4
            from images where
            pieceType = 'command'
            order by name, id",
            |(id, name, val1, val2, val3, val4)| {
                Image { id, name, val1, val2, val3, val4 }
            },
    )?;

    println!("<!DOCTYPE html>");
    println!("<html><head>");
    println!("<link rel=\"stylesheet\" href=\"styles.css\">");
    println!("</head><body><table>");
    println!("<tr><th>Id</th>");
    println!("<th>Image</th>");
    println!("<th></th>");
    println!("<th></th>");
    println!("<th></th>");
    println!("<th></th>");
    println!("<th></th>");
    println!("<th>Filename</th></tr>");


    for chit in selected {
        println!("<tr>");
        println!("<td>{}</td>", chit.id);
        println!("<td><img src=\"/opt/Vassal/Nuklear Winter 68/{}\" ></td>",
            chit.name.as_ref().unwrap().to_string() );


        println!("<td class=\"White_font\" align=\"right\"><b>+{}</b></td>", chit.val1);
        println!("<td></td>");
        println!("<td class=\"White_font\" align=\"right\"><b>+{}<sup>{}</sub></b></td>", chit.val2, chit.val3);
        println!("<td></td>");
        println!("<td class=\"White_font\"><sup><b>{}</b></sup></td>", chit.val4);


        println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string() );

        println!("</tr>");
    }

    
    println!("</table></body></html>");


    Ok (())
}
