import 'package:flutter/material.dart';

class Datapage extends StatelessWidget {
  const Datapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "☀ ปริมาณแคลอรี่ที่แนะนำต่อวัน",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.only(top: 20.0, left: 70.0, right: 30.0),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Text(
                      "🚣‍♂️️‍ ระดับพลังงานแตกต่างกันตามเพศ วัย และกิจกรรม",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "        • พลังงาน 1600 กิโลแคลอรี – สำหรับเด็ก หญิงวัยทำงาน และผู้สูงอายุ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "        • พลังงาน 2000 กิโลแคลอรี – สำหรับวัยรุ่น ชายวัยทำงาน",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "        • พลังงาน 2400 กิโลแคลอรี – สำหรับผู้ที่ใช้พลังงานมาก เช่น นักกีฬา เกษตรกร กรรมกร",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const [
                    Text(
                      "🍞 กลุ่มข้าว – แป้ง",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "        ควรได้รับวันละ 8-12 ทัพพี อย่าเพิ่งดีใจว่ากินเท่าไรก็ได้ ความจริงก็คือต้องกินให้พอเหมาะ"
                  "กับความต้องการถ้าเป็นหญิงวัยทำงาน วัยทอง หรือสูงอายุ กินวันละ 8 ทัพพี"
                  " ชายวัยทำงานวันละ 10 ทัพพี และถ้าใช้พลังงานมากก็กินได้ถึง 12 ทัพพี อาหารกลุ่มนี้รวมถึง "
                  "ข้าว ก๋วยเตี๋ยว บะหมี่ ขนมจีน ขนมปัง และขนมทั้งหลายที่มีแป้งเป็นส่วนประกอบ เช่น ขนมเค้ก ซาลาเปา บัวลอย ซ่าหริ่ม อาหารที่เป็นแป้งนับรวมอยู่ในกลุ่มนี้ทั้งหมด",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const [
                    Text(
                      "🥬 กลุ่มผัก",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "      แหล่งของใยอาหาร ผู้ใหญ่ควรกินผักวันละ 6 ทัพพี เด็กๆ วันละ 4 ทัพพี (1 ทัพพีประมาณ 3-4 ช้อนกินข้าว) เมนูอาหารจานผักหาทานไม่ยาก ไม่ว่าจะเป็นแกงส้ม แกงเลียง แกงป่า "
                  "หรือจอาหารจานเดียว เช่น ขนมจีนน้ำพริก น้ำยา หรือข้าวยำ ใน 1 มื้อได้ผัก 2 ทัพพี ไม่ยากนัก อย่าลืมหมุนเวียนชนิดของผัก จะได้ปลอดภัยจากยาฆ่าแมลงและได้สารอาหารตามที่ต้องการ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const [
                    Text(
                      "🍎 กลุ่มผลไม้",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "      ควรทานผลไม้หลังอาหารทุกมื้อและระหว่างมื้อเมื่อหิว รวมๆแล้วควรได้ผลไม้วันละ 3-5 ส่วน แต่ละ 1 ส่วน ของผลไม้เลือกอย่างใดอย่างหนึ่งดังต่อไปนี้ เช่น กล้วยน้ำว้า 1 ผล ส้มเขียวหวาน 1 ผลใหญ่ ฝรั่ง 1/2 ผล เงาะ 4 ผล ถ้าเป็นผลไม้ผลใหญ่ เช่น มะละกอ สับปะรด แตงโม ประมาณ 6-8 คำเท่ากับ 1 ส่วน ปริมาณผลไม้มากน้อยขึ้นอยู่กับความต้องการพลังงาน"
                  "  อาหารกลุ่มผักและผลไม้อาจทดแทนกันได้บ้าง วันไหนกับข้าวไม่ค่อยมีผักก็เพิ่มผลไม้ ทั้งวันควรได้ ผัก – ผลไม้ รวมกันไม่น้อยกว่า 1/2 กิโลกรัมจึงจะได้ใยอาหารเพียงพอ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const [
                    Text(
                      "🍖 กลุ่มเนื้อสัตว์ ไข่ ถั่วเมล็ดแห้ง",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "  เลือกทานเนื้อสัตว์เล็ก เช่น ปลา ไก่ เพราะไขมันต่ำ ผลิตภัณฑ์ถั่วเหลือง เช่น เต้าหู้ชนิดต่างๆ เป็นทางเลือกของผู้รักสุขภาพ ปริมาณอาหารในกลุ่มนี้คือ 6-12 ช้อนกินข้าว ปริมาณอาหารที่เทียบเท่ากับเนื้อสัตว์ 1 ช้อนกินข้าว คือ เต้าหู้ขาวแข็ง 1/4 ก้อน เต้าหู้ขาวหลอด 1/2 หลอด ไข่ 1/2 ฟอง ปลาทู 1/2 ตัว เป็นต้น   ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const [
                    Text(
                      "🥛 กลุ่มนม",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "  เด็กๆควรดื่มนมจืดวันละ 2-3 แก้ว ผู้ใหญ่วันละ 1-2 แก้ว สำหรับผู้ที่ไม่ดื่มนมวัวด้วยเหตุผลใดๆก็ตาม สามารถดื่มนมถั่วเหลืองได้เพราะให้โปรตีนปริมาณใกล้เคียงกัน แต่ควรเพิ่มการบริโภคปลาเล็กปลาน้อยและผักใบเขียวเพื่อให้ได้รับแร่ธาตุแคลเซียมเพียงพอ  ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  "  นอกจากตัวอาหารหลักแล้วเครื่องปรุงอย่าง น้ำตาล เกลือและน้ำมันก็ควรที่จะควบคุมไม่เกินตามปริมาณที่เหมาะสมเช่นกัน ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  "assets/images/data.jpg",
                  height: 900,
                  width: 900,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "แหล่งที่มา: https://www.lovefitt.com/healthy-fact/กินเท่าไหร่ถึงพอดี-ปริมาณอาหารของคนเเต่กลุ่มใน-1-วัน/",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 50.0,
                )
              ],
            ),
          ]),
    );
  }
}
