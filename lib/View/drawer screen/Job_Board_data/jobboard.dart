import 'package:flutter/material.dart';


class Jobboard extends StatefulWidget {
  const Jobboard({super.key});

  @override
  State<Jobboard> createState() => _JobboardState();
}

class _JobboardState extends State<Jobboard> {
  @override
  Widget build(BuildContext context) {
    bool isswitches = false;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Job Board",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            height: 30,
            width: 1,
            child: const VerticalDivider(
              thickness: 0.5,
              width: 1,
              color: Colors.black,
            )),
        const SizedBox(
          width: 20,
        ),
        RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: 'DashBoard  /  ',
              style: TextStyle(
                color: Colors.black,
              )),
          TextSpan(
            text: 'Job Board  ',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ])),
        SizedBox(
          height: 10,
        ),
        // Wrap(
        //   children: [
        //     const Text("Hide Empty Stages"),
        //     // const SizedBox(
        //     //   width: 20,
        //     // ),
        //     Transform.scale(
        //       scale: 0.8,
        //       child: Switch(
        //         value: isswitches,
        //         onChanged: (value) {
        //           setState(() {
        //             isswitches = value;
        //           });
        //         },
        //       ),
        //     ),
        //     // const SizedBox(
        //     //   width: 10,
        //     // ),
        //     Container(
        //         width: 250,
        //         height: 30,
        //         decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(8)),
        //         child: TextField(
        //           decoration: InputDecoration(
        //             hintText: 'Search job',
        //             suffixIcon: Container(
        //               padding: const EdgeInsets.symmetric(horizontal: 5),
        //               child: const Row(
        //                 mainAxisSize: MainAxisSize.min,
        //                 mainAxisAlignment: MainAxisAlignment.end,
        //                 children: [
        //                   VerticalDivider(
        //                     color: Colors.black,
        //                     thickness: 0.2,
        //                   ),
        //                   Icon(Icons.search),
        //                 ],
        //               ),
        //             ),
        //             border: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //             contentPadding: const EdgeInsets.symmetric(
        //                 horizontal: 9, vertical: 0),
        //           ),
        //         )),
        //     const SizedBox(
        //       width: 10,
        //     ),
        //     Buttons(
        //         color: Color.fromRGBO(22, 119, 255, 2),
        //         tittle: "Export",
        //         ontap: () {},
        //         width: 70,
        //         height: 25),
        //     const SizedBox(
        //       width: 10,
        //     ),
        //     Buttons(
        //         color: Color.fromRGBO(22, 119, 255, 2),
        //         tittle: "Export with Audits",
        //         ontap: () {},
        //         width: 130,
        //         height: 25),
        //     const SizedBox(
        //       width: 10,
        //     ),
        //     Buttons(
        //         color: Color.fromRGBO(22, 119, 255, 2),
        //         tittle: "Job Stages",
        //         ontap: () {},
        //         width: 80,
        //         height: 25),
        //     const SizedBox(
        //       width: 10,
        //     ),
        //     Buttons(
        //         color: Color.fromRGBO(22, 119, 255, 2),
        //         tittle: "Show/Hide Stages",
        //         ontap: () {},
        //         width: 130,
        //         height: 25),
        //     const SizedBox(
        //       width: 10,
        //     ),
        //     Buttons(
        //         width: 70,
        //         height: 25,
        //         color: Color.fromRGBO(22, 119, 255, 2),
        //         tittle: "Add Job",
        //         ontap: () {
        //           showAddJobDialog(context);
        //         })
        //   ],
        // )
      ],
    );
  }
}
