import 'package:flutter/material.dart';
import 'package:project_630710056/bmr_page.dart';
import 'package:project_630710056/process/bmr_process.dart';


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}


class _homePageState extends State<homePage> {

  final _conweight = TextEditingController();
  final _conheight = TextEditingController();
  final _conyear = TextEditingController();
  final _bmr = BMR();
  var feedback1 = "";
  var feedback = "";
  var result1 = "";
  var result2 = "";
  var result3 = "";
  var result4 = "";
  var result5 = "";
  var result = "";
  var check = 0;
  var text = "  ⬇️⬇️  มีต่อด้านล่าง  ⬇️⬇️";
  var bmr,tdee1,tdee2,tdee3,tdee4,tdee5;
  bool next =false;
  
  void _Process() {
    var weigth = double.tryParse(_conweight.text);
    var heigth = double.tryParse(_conheight.text);
    var year = double.tryParse(_conyear.text);
    if (check == 1) {
      if (weigth == null || heigth == null || year == null) {
        setState(() {
          feedback1 = "กรุณากรอกข้อมูลให้ถูกต้อง";
        });
      } else {
        next = true;
        bmr = _bmr.man(weigth, heigth, year);
        tdee1 = bmr*1.2;
        tdee2 = bmr*1.375;
        tdee3 = bmr*1.55;
        tdee4 = bmr*1.725;
        tdee5 = bmr*1.9;
        result = bmr.toInt().toString();
        setState(() {
          result1 = tdee1.toInt().toString();
          result2 = tdee2.toInt().toString();
          result3 = tdee3.toInt().toString();
          result4 = tdee4.toInt().toString();
          result5 = tdee5.toInt().toString();
          feedback = "$result kcal";
        });
      }
    } else if (check == 2) {
      if (weigth == null || heigth == null || year == null) {
        setState(() {
          feedback1 = "กรุณากรอกข้อมูลให้ถูกต้อง";
        });
      } else {
        next= true;
        bmr = _bmr.woman(weigth, heigth, year);
        tdee1 = bmr*1.2;
        tdee2 = bmr*1.375;
        tdee3 = bmr*1.55;
        tdee4 = bmr*1.725;
        tdee5 = bmr*1.9;
        result = bmr.toInt().toString();
        setState(() {
          result1 =tdee1.toInt().toString();
          result2 = tdee2.toInt().toString();
          result3 = tdee3.toInt().toString();
          result4 = tdee4.toInt().toString();
          result5 = tdee5.toInt().toString();
          feedback = "$result kcal";
        });
      }
    } else {
      setState(() {
        feedback1 = "กรุณากรอกข้อมูลให้ถูกต้อง";
      });
    }
  }

  Widget _buildButton(int num) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.white,radius: 100,highlightColor: Colors.grey,
        onTap: () {
          setState(() {
            if (num == 1) {
              check = 1;
            }else{
              check=2;
            }
          });
        },
        customBorder: const RoundedRectangleBorder(),
        child: Container(
          width: 65.0,
          height: 30.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: num==1?Colors.blue[200]:Colors.pink[200],
            borderRadius: BorderRadius.circular(16.0),
            shape: BoxShape.rectangle,

          ),
          child: num ==1?const Text("👨‍🦰 ผู้ชาย",style: TextStyle(color: Colors.white),):Text("🙎‍♀️ผู้หญิง",style: const TextStyle(color: Colors.white),),

        ),
      ),
    );
  }
  
  Widget _buildProcessButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Datapage(), ),
          );
        },
        customBorder: const RoundedRectangleBorder(),
        child: Container(
          width: 60.0,
          height: 30.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(4.0),
            shape: BoxShape.rectangle,
          ),
          child:const Text("ถัดไป",style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "☀ โปรแกรมคำนวณปริมาณแคลอรี่ที่ร่างกายควรได้รับ",
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20.0, left: 70.0, right: 70.0),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, 
                  children: const [
                Text(
                  "📲  BMR (Basal Metabolic Rate)",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                )
              ]),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                  "                  Basal Metabolic Rate (BMR) คือ อัตราการความต้องการเผาผลาญของร่างกายในชีวิตประจำวัน หรือจำนวนแคลอรี่ขั้นต่ำที่ต้องการใช้ในชีวิตแต่ละวัน ดังนั้นการคำนวณ BMR จะช่วยให้คุณคำนวณปริมาณแคลอรี่ที่ใช้ต่อวันเพื่อรักษาน้ำหนักปัจจุบันได้ และเมื่ออายุมากขึ้นเราจะควบคุมน้ำหนักได้ยากขึ้น เพราะ BMR เราลดลง การอดอาหารก็เป็นสาเหตุหนึ่งที่ทำให้ BMR ลดลง วิธีป้องกันคือ  "
                      '"หมั่นออกกำลังกาย"'
                      "  เพื่อเพิ่มประสิทธิภาพของการเผาผลาญ ซึ่งจะทำให้ BMR ไม่ลดลงเร็วเกินไป"),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "เพศ:    ",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  _buildButton(1),
                  _buildButton(2),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(children: [
                const Text(
                  "น้ำหนัก(kg.) :       ",
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: TextField(
                    controller: _conweight,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),

                      // hintText: "กรอกน้ำหนัก",
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 10.0,
              ),
              Row(children: [
                const Text(
                  "ส่วนสูง(cm.) :      ",
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: TextField(
                    controller: _conheight,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),

                      //hintText: "กรอกส่วนสูง",
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 10.0,
              ),
              Row(children: [
                const Text(
                  "อายุ(years) :        ",
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: TextField(
                    controller: _conyear,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),

                      //hintText: "กรอกส่วนสูง",
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: _Process,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.yellow[800], //คลิกแล้วปุ่มเปลี่ยนสี
                    ),
                    child:   const Text("คำนวณ"),
                  ),
                  const SizedBox(width: 15.0,),
                  if(next==true)
                    _buildProcessButton(),
                  if(next==true)
                  Text(text),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              if(next==false)
                Text(feedback1),
              const SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 40),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300]!,
                        ),
                      ],
                    ),
                    child:
                    Text(
                      "  $feedback  ",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "📲  TDEE (Total Daily Energy Expenditure)",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    )
                  ]),
              const SizedBox(
                height: 15.0,
              ),
              const Text("                  Total Daily Energy Expenditure (TDEE) คือ ค่าที่บ่งบอกถึงพลังงานที่ร่างกายต้องการในแต่ละวัน (กิจกรรมที่ทำปกติในชีวิตประจำวัน) ไม่ว่าจะเป็นนอน, นั่งทำงานที่ออฟฟิศ, เดินไปตลาด, นั่งดูหนังพักผ่อน รวมถึงการออกกำลังกายด้วย "
                  "ซึ่งค่าพลังงานของแต่ละคนก็จะแตกต่างกันออกไปตามชีวิตประจำวันและ Lifestyle ของแต่ละบุคคล ใครที่ออกกำลังกายน้อยก็จะมีค่า TDEE น้อยหน่อย "
                  "ส่วนใครที่ออกกำลังกายเป็นประจำ Active หรือทำงานที่ต้องขยับร่างกายอยู่บ่อยๆ ร่างกายก็จะมีอัตราเผาผลาญมากกว่า เลยต้องใช้พลังงานมากกว่า ค่า TDEE ของคนคนนั้นก็จะสูงขึ้น"),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("นั่งทำงานอยุ่กับที่และไม่ได้ทำอะไรเลย "),
                   Text("$result1  kcal      "),
                ],
              ),
              const Divider(thickness: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("ออกกำลังกายเบาๆ 1-3 ครั้งต่อสัปดาห์ "),
                  Text("$result2  kcal      ")
                ],
              ),
              const Divider(thickness: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("ออกกำลังกายความหนักปานกลาง 3-5 ครั้งต่อสัปดาห์ "),
                  Text("$result3  kcal      ")
                ],
              ),
              const Divider(thickness: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("ออกกำลังกายหนัก 6-7 ครั้งต่อสัปดาห์ "),
                  Text("$result4  kcal      ")
                ],
              ),
              const Divider(thickness: 5,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  const Text("ออกกำลังกายแบบฝึกซ้อมเพื่อไปแข่งขันเป็นประจำทุกวัน"),
                  Text("$result5  kcal      "),
                ],
              ),
              const Divider(thickness: 5,),
              const SizedBox(
                height: 15.0,
              ), const Text(
                "แหล่งที่มา: https://www.fatnever.com/bmr/",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 50.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
