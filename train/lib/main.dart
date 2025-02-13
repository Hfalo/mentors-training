import 'package:flutter/material.dart';
import 'package:train/models/Students.dart';
import 'package:train/screens/details.dart';
//import 'package:google_fonts/google_fonts.dart';
  void main() {
    runApp(const MyApp());
  }

  var students = [
    Student(
        name: "Hind",
        email: "hahaha@gmail.com",
        favsnack: "Chocolate",
        grade: 100,
        impression: "very good"),
    Student(
        name: "Abdulaziz",
        email: "azz123otb@gmail.com",
        favsnack: "Yogurt",
        grade: 76,
        impression: "good"),
    Student(
        name: "Yassmen",
        email: "flower4@gmail.com",
        favsnack: "Nac",
        grade: 65,
        impression: "good"),
    Student(
        name: "Mohammed",
        email: "h@gmail.com",
        favsnack: "65",
        grade: 90,
        impression: "very good"),
    Student(
        name: "Faris",
        email: "ff1@gmail.com",
        favsnack: "Lemon cake",
        grade: 100,
        impression: "very good"),
    Student(
        name: "Alanoud",
        email: "ahah@gmail.com",
        favsnack: "Chocolate milk",
        grade: 84,
        impression: "good"),
  ];

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
    }
  }

  class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0XFFDCECEB),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Column(
                children: [
                  // DATE

                  Container(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        text: "Wed",
                        style: 
                        TextStyle(
                            color: Color(0XFF0D888B),
                            fontSize: 12,
                            fontFamily: "Courier" ,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                            text: " 2 Jan",
                            style: TextStyle(
                                color: Color(0XFF0D888B),
                                fontSize: 12,
                                fontFamily: "Courier" ,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // HELLO MENTOR + PIC

                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/mentor.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            " Hi Mentor!",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Courier" ,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFF11B6BB),
                            ),
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Here is a list of students",
                            style: TextStyle(
                              fontSize: 12, 
                              fontFamily: "ariel" ,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "    That you'll need to check...",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "ariel" ,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //WHITE STACKED PAGE

            Positioned(
              top: 235,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0XFFF6F1F1),
                  borderRadius: BorderRadius.circular(35),
                ),

                //STUDENTS AND VIEW ALL BUTTON

                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " Students",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Courier" ,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFFF8A50C),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0XFFF8A50C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Courier" ,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Vall(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  // PREVIEW LIST

                  Container(
                    height: 250, // 11
                    child: ListView.builder(
                      itemCount: 3,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0.1), // 11
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Card(
                            color: Color(0XFFF1F6F6),
                            //elevation: 2.0,
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Icon(
                                  Icons.star_rate_rounded,
                                  color: Color(0XFFFCDDA4),
                                ),
                                title: Text(
                                  students[index].name,
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontFamily: "Courier" ,
                                    color: Color(0XFF11B6BB),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Details(
                                        student: students[index],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

              // TO DO LIST + VIEW ALL
               
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " To do list",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Courier" ,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFFF8A50C),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0XFFF8A50C),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Courier" ,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

            

                 Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
          children: [

          // RED
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deadline",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "3 days left",
                        style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: 100,
                    child: Text(
                      "Grading final projects & choosing..",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Courier" ,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(width: 15),

          // GREEN
         Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deadline",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "3 days left",
                        style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: 100,
                    child: Text(
                      "Create content for next cohort",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Courier" ,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(width: 15),

          // BLUE 
         Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deadline",
                    style: TextStyle(
                      fontSize: 14, 
                      color: Colors.grey),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "5 days left",
                        style: TextStyle(
                            fontSize: 16,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),

                  SizedBox(height: 18),

                  Container(
                    width: 100,
                    child: Text(
                      "Last Meeting",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Courier" ,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    ),
  ),
),

                ]),
              ),
            )
          ],
        ),
      );
    }
  }

  // VIEW ALL PAGE

  class Vall extends StatefulWidget {
    const Vall({Key? key}) : super(key: key);

    @override
    State<Vall> createState() => _VallState();
  }

  class _VallState extends State<Vall> {
    List<Student> filteredStudents = students;
    TextEditingController searchController = TextEditingController();

    @override
    void initState() {
      super.initState();
      searchController.addListener(filterStudents);
    }

    @override
    void dispose() {
      searchController.removeListener(filterStudents);
      searchController.dispose();
      super.dispose();
    }

    void filterStudents() {
      String query = searchController.text.toLowerCase();
      setState(() {
        filteredStudents = students.where((student) {
          return student.name.toLowerCase().contains(query);
        }).toList();
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0XFFF6F1F1),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
            
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search,
                    color: Color(0XFFF8A50C),
                    ),
                    
                    focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                            color: Color(0XFFF8A50C),
                             width: 2.0),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0XFFF8A50C), width: 1.0),
                        ),
                  ),
                ),
              ),

              // THE LIST IN VIEW ALL PAGE

              Expanded(
                child: ListView.builder(
                  itemCount: filteredStudents.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      child: Card(
                        color: Color(0XFFF1F6F6),
                        //elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          leading: Icon(
                            Icons.star_rate_rounded,
                            color: Color(0XFFFCDDA4),
                          ),
                          title: Text(
                            filteredStudents[index].name,
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontFamily: "Courier" ,
                              color: Color(0XFF11B6BB),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(
                                  student: filteredStudents[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
