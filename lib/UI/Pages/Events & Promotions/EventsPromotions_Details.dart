import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'E-Pass_ Voucher Code.dart';
import 'Event_pop.dart';

class EventsPromotions_Details extends StatefulWidget {
  const EventsPromotions_Details({super.key});

  @override
  State<EventsPromotions_Details> createState() => _EventsPromotions_DetailsState();
}

class _EventsPromotions_DetailsState extends State<EventsPromotions_Details> {
  DateTime selectedDate = DateTime.now();
  TextEditingController _date = new TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _date.value = TextEditingValue(text: picked.toString());
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events Details"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/assetsimages/Frame 14319.png',), fit: BoxFit.contain,
              ),
              SizedBox(height: 10,),
              Container(
                //alignment: Alignment.topLeft,
                child: ElevatedButton(
                  child: Text('Book Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                  onPressed: () =>
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(backgroundColor: Colors.white,
                              title: Center(child: Text('Select preferred \n date and time:',
                                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,wordSpacing: BorderSide.strokeAlignCenter),)),
                           //   content: const Text("is disabled on this device. Please enable it and try again."),
                              actions: [
                                Container(alignment: Alignment.topLeft,
                                    child: Text("Date")),
                                GestureDetector(
                              onTap: () => _selectDate(context),
                              child: AbsorbPointer(
                                child: TextFormField(
                                  controller: _date,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    hintText: 'Please select',
                                    suffixIcon: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                                SizedBox(height: 5,),
                                Container(alignment: Alignment.topLeft,
                                    child: Text("Time")),
                                GestureDetector(
                              onTap: () => _selectDate(context),
                              child: AbsorbPointer(
                                child: TextFormField(
                                  controller: _date,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    hintText: 'Please select',
                                    suffixIcon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                                SizedBox(height: 10,),
                                Container(alignment: Alignment.center,
                                  child: ElevatedButton(
                                    child: Text('Next',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                    onPressed: () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Expanded(
                                          child: AlertDialog(backgroundColor: Colors.white,
                                            title: Center(child: Text('Please select one:',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),)),
                                            actions: [
                                              //   Frame 140491.png
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  InkWell(
                                                    child: Image(image: AssetImage('assets/assetsimages/Frame 14049q.png',),fit: BoxFit.contain,height: 90,width: 110,),
                                                    onTap:(){
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) => EPassVoucherCode(),)
                                                      );
                                                    } ,
                                                  ),
                                                  InkWell(
                                                    child: Image(image: AssetImage('assets/assetsimages/Frame 14050q.png',),fit: BoxFit.contain,height: 90,width: 110,),
                                                    onTap:(){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => Event_popPoints(),),
                                                      );
                                                    } ,
                                                  ),
                                                ],
                                              ),


                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                                      backgroundColor: Color( 0xFF65CAE4),
                                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                            // Container(decoration: BoxDecoration(border: Border.all(color:Colors.grey, )),
                            //       child: DropdownButton<String>(
                            //         items: <String>['10am-1pm', '1pm-4pm', '4pm-7pm', '7pm-9pm'].map((String value) {
                            //           return DropdownMenuItem<String>(
                            //             value: value,
                            //             child: Text(value),
                            //           );
                            //         }).toList(),
                            //         onChanged: (_) {},
                            //       ),
                            //     ),
                              ],
                            ),
                          );
                        },
                      ),
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                    backgroundColor: Color( 0xFF65CAE4),
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
              ),
              Divider(
               endIndent: 10,indent: 10,
              ),
              SizedBox(height: 10,),
              Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),
                  child: Text("About the Event",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Text("Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue.",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 10,),
              Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),
                  child: Text("Terms & Conditions:",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Text(". Curabitur ullamcorper ultricies nisi. Nam eget dui\n. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum\n. Etiam sit amet orci eget eros faucibus tincidunt.",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,wordSpacing: BorderSide.strokeAlignOutside),),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
