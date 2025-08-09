import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:  const Color.fromARGB(255, 20, 65, 41),
      child:  Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius:30,
                  backgroundColor: Color.fromARGB(255, 20, 65, 41),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/Images/david_logo3.png"),
                    ),
                  ),
                const SizedBox(width: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Text("David Onuche" , style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                      ],
                    ),
                    TextButton(onPressed:() {},
              child: Text("onuchedavid34@gmail.com", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, ),),),
                  ],
                ),
              ],
            ),
             const SizedBox(height: 20,),
            TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.home_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Home", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ),
           const SizedBox(height: 10,),
           TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.computer_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Portfolio", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ),
            const SizedBox(height: 10,),
            const Divider(
                color: Colors.white,
                thickness: 0.1,
            ),
            const SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(9.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("MENU", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, ),),
                 Text("--", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, ),),
               ],
             ),
           ),
           const SizedBox(height: 5),
           TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.dashboard_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Projects", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ),
           TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.church_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Faith", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
                
           ,),
           TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.business_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Business Ventures", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ,),
           TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.how_to_vote_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Political Journey", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ,),
           TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.phone_outlined, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Contact", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
               const Spacer(),
                const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 14,),
              ],
            )
           ,),
           // const Switch(),
            const Spacer(flex: 3,),
           TextButton(
            onPressed:() {}, 
            style: const ButtonStyle(overlayColor: WidgetStatePropertyAll(Colors.white38),),
            child:  Row(
              children: [
               const Icon(Icons.help_outline, color: Colors.white,),
               const SizedBox(width: 10,),
                Text("Help & Support", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13, ),),
              ],
            )
                
           ,),
          ],
        ),
      ),
    );
  }
  }
