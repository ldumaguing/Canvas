use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
    val1: i32, // Armor_Red
    val2: i32, // Armor_Blu
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka:sasamichan@fish1:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name, Speed, minSpeed from images where pieceType = 'combat' order by id",
            |(id, name, val1, val2)| {
                Image { id, name, val1, val2 }
            },
    )?;

    println!("<!DOCTYPE html>");
    println!("<html><head>");
    println!("<link rel=\"stylesheet\" href=\"styles.css\">");
    println!("</head><body><table>");
    println!("<tr><th>Id</th><th>Image</th>");
    println!("<th></th>");
    println!("<th></th>");
    // println!("<th></th>");
    // println!("<th></th>");
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
        if chit.val1 > 0 { println!("<td class=\"White_font\"><b>{}</b></td>", chit.val1); }
        else { println!("<td>---</td>"); }

        if chit.val2 > 0 { println!("<td class=\"White_font\"><b>{}</b></td>", chit.val2); }
        else { println!("<td>---</td>"); }

        // if chit.val3 > 0 { println!("<td class=\"Yellow_font\"><b>{}</b></td>", chit.val3); }
        // else { println!("<td>---</td>"); }

        // if chit.val4 > 0 { println!("<td class=\"White_font\"><b>{}</b></td>", chit.val4); }
        // else { println!("<td>---</td>"); }

        // println!("<td class=\"Blue_font\">{}</td>", chit.val2);
        // println!("<td>{}</td>", chit.val3);
        // println!("<td>{}</td>", chit.val4);

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
