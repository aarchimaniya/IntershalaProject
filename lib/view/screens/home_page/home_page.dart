import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_courses_app/view/screens/detail_page/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Keep track of the selected bottom nav index

  // List of pages for bottom navigation (can add more pages later)
  final List<Widget> _pages = [
    const HomePageContent(),
    const Center(child: Text("Favorites")),
    const Center(child: Text("Notifications")),
    const Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f5),
      body: _pages[_currentIndex], // Change body based on selected index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Current selected index
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update selected index
          });
        },
        type: BottomNavigationBarType.fixed, // No shifting animation
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xffb9dd6b), // Green selected color
        unselectedItemColor: Colors.grey, // Grey unselected color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: '', // No label as per your requirement
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}

// The content for the main homepage
class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.sp),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 35.w,
                backgroundImage: const NetworkImage(
                  "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTStLr_cTcyV4HiXvRyaicmyGReSx742749-M_MAJDmRL5YV47O",
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Christiana Amandla",
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    "Let's Learning to smart",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              IconButton.filled(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsPage()),
                  );
                },
                color: Colors.black,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                icon: Icon(
                  CupertinoIcons.search,
                  size: 20.h,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 180.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffb9dd6b),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(22.sp),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffd4eba2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12.sp),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Mathematics Course",
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffb9dd6b),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(5.sp),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.black87,
                                  size: 20.h,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "19 Nov, 2023",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
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
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.w,
                              backgroundColor: const Color(0xffd4eba2),
                              child: CircleAvatar(
                                radius: 10.w,
                                backgroundColor: const Color(0xffb9dd6b),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Completed"),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25.w,
                              backgroundColor: const Color(0xffd4eba2),
                              child: CircleAvatar(
                                radius: 10.w,
                                backgroundColor: const Color(0xffb9dd6b),
                                child: Icon(
                                  Icons.watch_later_outlined,
                                  color: Colors.white,
                                  size: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hours Spent",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                  ),
                                ),
                                Text(
                                  "455",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Course",
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 300.h,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 250.h,
                width: 230.w,
                margin: EdgeInsets.all(8.sp),
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://d2jdgazzki9vjm.cloudfront.net/tutorial/photoshop/images/photoshop.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      "Photoshop Editing Course",
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 17.w,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 15.w,
                                  backgroundImage: const NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLkdfx05PaD93EFVISKAWCAMPz0Gr7uoYghA&s",
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(22.w, 0),
                                child: CircleAvatar(
                                  radius: 17.w,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 15.w,
                                    backgroundImage: const NetworkImage(
                                      "https://as1.ftcdn.net/v2/jpg/03/00/19/88/1000_F_300198851_kt7yh0k3X7iAvzWEUHFQ8jorOlz7DdDo.jpg",
                                    ),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(45.w, 0),
                                child: CircleAvatar(
                                  radius: 17.w,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 15.w,
                                    backgroundImage: const NetworkImage(
                                      "https://images.alphacoders.com/752/752287.jpg",
                                    ),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(70.w, 0),
                                child: CircleAvatar(
                                  radius: 17.w,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 15.w,
                                    backgroundColor: const Color(0xffb9dd6b),
                                    child: Text(
                                      "+20",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Participants",
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_outlined,
                          color: Colors.orange,
                        ),
                        const Text(
                          " 4.8",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          " (230)",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.play_circle_outline,
                          color: Colors.grey,
                        ),
                        const Text(
                          " 30",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          " Lessons",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
