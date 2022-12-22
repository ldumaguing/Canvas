use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Image {
    id: i32,
    name: Option<String>,
    val1: i32,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka@localhost:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name,
               Aspects
            from images where
            pieceType = 'command' or
            pieceType = 'combat'  or
            pieceType = 'weapon'  or
            pieceType = 'marker'  or
            pieceType = 'OBA'
            order by name, id",
            |(id, name, val1)| {
                Image { id, name, val1 }
            },
    )?;

    println!("<!DOCTYPE html>");
    println!("<html><head>");
    println!("<link rel=\"stylesheet\" href=\"styles.css\">");
    println!("</head><body><table>");
    println!("<tr><th>Id</th>");
    println!("<th>Image</th>");
    println!("<th></th>");
    println!("<th>Filename</th></tr>");



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

        if chit.val1 > 0 {   // Aspects
			// println!("<td class=\"White_font\"><b>{}</b></td>", chit.val1);
			println!("<td class=\"White_font\"><b>");
			if chit.val1 & 1 == 1 { println!("Huge; "); };
			if chit.val1 & 4 == 4 { println!("Recon; "); };
			if chit.val1 & 2 == 2 { println!("NOE; "); };
			if chit.val1 & 8 == 8 { println!("Carrier; "); };
			println!("</b></td>");
        }
        else { println!("<td></td>"); }






/*


        if chit.val5 > 0 {   // AP
			if chit.val8 & 48 == 48 { println!("<td class=\"Purple_font\" align=\"right\"><b>{}</b></td>", chit.val5); }
			else {
                if chit.val8 & 32 == 32 { println!("<td class=\"Blue_font\" align=\"right\"><b>{}</b></td>", chit.val5); }
                else { println!("<td class=\"Red_font\" align=\"right\"><b>{}</b></td>", chit.val5); }
			}
			
        }
        else { println!("<td></td>"); }


        if chit.val6 > 0 {   // AP_range
			if chit.val8 & 64 == 64 { println!("<td class=\"Red_font\"><sup><b>{}</b></sup></td>", chit.val6); }
			if chit.val8 & 128 == 128 { println!("<td class=\"White_font\"><sup><b>{}</b></sup></td>", chit.val6); }
			if chit.val8 & 256 == 256 { println!("<td class=\"Blue_font\"><sup><b>{}</b></sup></td>", chit.val6); }
        }
        else { println!("<td></td>"); }


        if chit.val4 > 0 {   // HE
			println!("<td class=\"Yellow_font\" align=\"right\"><b>{}</b></td>", chit.val4);
        }
        else { println!("<td></td>"); }


        if chit.val7 > 0 {   // HE_range
            if chit.val8 & 8 == 8 { println!("<td class=\"Yellow_font\"><sup><b>{}</b></sup></td>", chit.val7); }
            else { println!("<td class=\"White_font\"><sup><b>{}</b></sup></td>", chit.val7); }
        }
        else { println!("<td></td>"); }


        if chit.val3 > 0 {   // Armor
 	        if chit.val8 & 1 == 1 { println!("<td class=\"Red_font\" align=\"right\"><b>{}</b></td>", chit.val3); }
			if chit.val8 & 2 == 2 { println!("<td class=\"Blue_font\" align=\"right\"><b>{}</b></td>", chit.val3); }
			if chit.val8 & 4 == 4 { println!("<td class=\"Yellow_font\" align=\"right\"><b>{}</b></td>", chit.val3); }
        }
        else { println!("<td></td>"); }


        println!("<td></td>");


        if chit.val1 > 0 {   // Speed
            println!("<td class=\"White_font\" align=\"right\"><b>{}</b></td>", chit.val1);
        }
        else { println!("<td></td>"); }




        if chit.val2 > 0 {   // minSpeed
            println!("<td class=\"White_font\" align=\"right\"><sup><b>{}</b></sup></td>", chit.val2);
        }
        else { println!("<td></td>"); }



*/





        println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string() );


        // println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string());
        println!("</tr>");
	}

    // println!("<tr><th>Id</th><th>Front</th><th>Back</th>");
    // println!("<th>Name</th></tr></table></body></html>");
    
    println!("</table></body></html>");
















    
    Ok (())
}
