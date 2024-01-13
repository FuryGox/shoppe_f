import 'package:flutter/cupertino.dart';
import 'package:shoppe_f/screen/Product/product.dart';
import 'dart:math';

class data extends ChangeNotifier {

  List<Product> favorite_list = [];
  List<receipt_data_card> reciept_list =[];
  List<cart_item> cart_item_list = [];
  List<category_base> category = [
    category_base(
        id:'beautify',
        icon: 'assets/icon/makeup-brush.svg',
        name: 'Làm đẹp'
    ),
    category_base(
        id:'fashion',
        icon: 'assets/icon/clothes-hanger.svg',
        name: 'Thời trang'
    ),
    category_base(
        id:'electronic',
        icon: 'assets/icon/laptop-mobile.svg',
        name: 'Điện tử'
    ),
    category_base(
        id:'healthcare',
        icon: 'assets/icon/hand-holding-medical.svg',
        name: 'Sức khỏe'
    ),
    category_base(
        id:'tool',
        icon: 'assets/icon/hammer.svg',
        name: 'Công cụ'
    ),


  ];
  List<Product> itemProductList = [
    Product(
        id: 'id1',
        name: 'Bảng Phấn Mắt 9 Ô HOLD LIVE Happie Trái Tim HL630 ',
        category_id: 'beautify',
        detail: """
        Bảng phấn mắt HOLD LIVE với 9 ô màu gồm cả màu matte lì, nhũ kim tuyến, kira kira bắt sáng… giúp kết hợp nhiều kiểu make up, từ đi học, đi làm đến đi chơi, đi dự sự kiện. 
        
        Chất phấn mịn mượt giúp giảm thiểu tình trạng bay phấn, giúp lên màu và bám màu lâu hơn. 
        
        Tone màu dễ dàng make up cho nhiều mục đi: đi học, đi chơi, đi tiệc… siêu dễ 
        
        Thương Hiệu: HOLD LIVE 
        Xuất xứ: Trung Quốc 
        Hạn sử dụng: 3 năm kể từ ngày sản xuất 
        Khối lượng tịnh: 10g
        
        #holdlive #bangphanmat #phanmat #bangmat #trangdiem #makeup
        
        """,
        image: [
          'assets/images/beautify/b1/b1_1.jpg',
          'assets/images/beautify/b1/b1_2.jpg',
          'assets/images/beautify/b1/b1_3.jpg',
          'assets/images/beautify/b1/b1_4.jpg',
          'assets/images/beautify/b1/b1_5.jpg',
          'assets/images/beautify/b1/b1_6.jpg',
          'assets/images/beautify/b1/b1_7.jpg',
        ],
        ratting: 5.0,
        number_of_ratting: 20,
        price: 300000,  
    ),
    Product(
      id: 'id2',
      name: 'Chillab Oải hương Matte Powder - Cải tiến không bột Kiểm soát 200% DẦU',
      category_id: 'beautify',
      detail: """
      Chào bạn! Rất vui được chào đón bạn đến với shop!
      Bạn nhớ ghé thăm shop mỗi ngày để cập nhật những sản phẩm mới nhất nha
      Shop luôn cam kết đảm bảo đạo đức kinh doanh với giá cả hợp lý, luôn mang đến cho bạn sự hài lòng với những sản phẩm chất lượng và được kiểm tra kỹ càng trước khi giao cho khách.
      Đừng ngần ngại mà hãy liên hệ ngay với shop nếu bạn có bất kỳ thắc mắc nào nha
      Chúc bạn một ngày tốt lành và đừng quên đánh giá 5 sao nếu bạn thích sản phẩm nhé
      Cám ơn bạn đã đến thăm! Hy vọng bạn có một trải nghiệm mua sắm tuyệt vời tại shop!
      """,
      image: [
        'assets/images/beautify/b2/b2_1.jpg',
        'assets/images/beautify/b2/b2_2.jpg',
        'assets/images/beautify/b2/b2_3.jpg',
        'assets/images/beautify/b2/b2_4.jpg',
      ],
      ratting: 5.0,
      number_of_ratting: 33,
      price: 300000,  
    ),
    Product(
      id: 'id3',
      name: 'Phấn nước Aprilskin Magic Snow Cushion phiên bản Galaxy Edition)',
      category_id: 'beautify',
      detail: """
        Chống tia tử ngoại SPF 50+/ PA+++
        Độ che phủ cao, mang đến làn da mịn màng
        Chiết xuất từ blueberry, lá lô hội
        Nước khoáng vô cơ dưỡng ẩm cho da
        Mang làm cảm giác thoải mái cho người dùng
        * Cách sử dụng
        Độ che phủ:  3 bước căng mịn        
        
        Bước 1. Polymer sẽ lấp đầy hoàn toàn các vết sưng và lỗ chân lông
        
        Bước 2. Hạt phấn siêu nhỏ kết hợp giữa hai loại bột phấn với khả năng che phủ tuyệt vời, giúp che phủ tốt các vết nám, tàn nhang  
        
        Bước 3. "Màng chắn linh hoạt tạo thành một lớp phủ để ngăn chặn sự bay hơi, giữ chất lượng sản phẩm trong thời gian dài "          
        
        Khả năng duy trì: Lớp polymer lâu trôi
        """,
      image: [
        'assets/images/beautify/b3/b3_1.jpg',
        'assets/images/beautify/b3/b3_2.jpg',
        'assets/images/beautify/b3/b3_3.jpg',
        'assets/images/beautify/b3/b3_4.jpg',
        'assets/images/beautify/b3/b3_5.jpg',
        'assets/images/beautify/b3/b3_6.jpg',
      ],
      ratting: 4.9,
      number_of_ratting: 593,
      price: 300000,  
    ),
    Product(
      id: 'id4',
      name: 'Phấn nước Whoo Radiant Essence Cushion SPF50+/PA+++  ',
      category_id: 'beautify',
      detail: """
        Phấn nước Whoo Radiant Essence Cushion SPF50+/PA+++ 

        full 1 hộp chính + 1 lõi 2tr300k
        - shop tách bảng giới hạn đặc biệt  limited siêu đẹp giá siêu rẻ
        
        trang điểm chống nắng sản phẩm mới của Whoo được sản xuất với mẫu mã mới đẹp và sang trọng. Sản phẩm mỏng, nhẹ và giúp da che khuyết điểm một cách hoàn hảo nhất và cung cấp độ ẩm cho da, giúp da có độ đàn hồi, không bị khô và mốc da. Duy trì lớp trang điểm cả ngày mà không bị lem, chảy lớp trang điểm. Giúp dưỡng trắng và chống nhăn 
        
        Set phấn nước hoàng cung cao cấp Whoo Radiant Essence Cushion Special Set.
        
         Tổng quan sản phẩm :Thiết kế sang trọng và tinh tế thể hiện sự đẳng cấp của The History of Whoo. Cushion trang điểm giúp che phủ hoàn hảo các khuyết điểm trên da.Giúp dưỡng trắng và chống nhăn da. Chỉ có thể nói rằng Whoo Radiant Essence Cushion có khả năng giúp cho làn da của bạn trở nên sáng bóng và mịn màng nhất.Đồng thời chống nắng rất tốt với SPF50+/PA+++, chống nhăn, ngăn ngừa lão hóa. Mang lại lớp nền trang điểm mỏng mịn và giữ được nét thanh xuân của gương mặt. Duy trì lớp trang điểm cả ngày mà không bị lem, chảy lớp trang điểm.
        
        """,
      image: [
        'assets/images/beautify/b4/b4_1.jpg',
        'assets/images/beautify/b4/b4_2.jpg',
        'assets/images/beautify/b4/b4_3.jpg',
        'assets/images/beautify/b4/b4_4.jpg',
        'assets/images/beautify/b4/b4_5.jpg',
        ],
      ratting: 4.3,
      number_of_ratting: 53,
      price: 300000,  
    ),
    Product(
      id: 'id5',
      name: 'Phấn nước Whoo Radiant Essence Cushion SPF50+/PA+++  ',
      category_id: 'beautify',
      detail: """
        [HOT NEW ARRIVAL] SON KEM LÌ PERIPERA INK VELVET PHIÊN BẢN 2019 10 MÀU MỚI SIÊU HOT CÙNG VỚI THIẾT KẾ ĐỔI MỚI HOÀN THIỆN VÀ CHẤT SON ĐỈNH CAO HƠN PHIÊN BẢN CŨ

        Thiết kế vẫn là hình dáng lọ mực xinh xắn và đáng yêu nhưng thu hút và bắt mắt hơn, thân son nhám cầm rất êm và chắc tay, vỏ giấy bên ngoài cùng màu với son bên trong và có in những hoạ tiết 3D nổi trên bề mặt.
        Chất son kem lì đặc như kem tươi siêu chất lượng, kết cấu mềm và mịn như nhung, không gây khô môi và ít lộ vân môi, độ bám màu mạnh mẽ như mực in, khi son trôi hết sẽ có lớp tint còn lại trên môi cực kì tự nhiên. Son có hương hoa quả ngọt cực yêu.
        Bảng màu bao gồm 10 tông màu mới siêu thời thượng, hợp xu hướng 2019 và có các tông màu dễ dùng, có thể sử dụng hàng ngày và không kén tông da, phù hợp với nhiều kiểu makeup khác nhau.
        
        Shop có full 10 màu Peripera Ink Velvet 2019:
        • 01 GOOD BRICK (đỏ cam đất) HOT
        • 02 CELEB DEEP ROSE (hồng đất) HOT
        • 03 RED ONLY (đỏ pha nâu) HOT
        • 04 VITALITY CORAL (hồng san hô)
        • 05 CORALFICIAL (cam san hô)
        • 06 PURDY RED (đỏ cam)
        • 07 GIRLISH RED (cam pha đỏ)
        • 08 SELLOUT RED (đỏ hồng)
        • 09 SPARKLING PINK (hồng cam tươi)
        • 10 BETTER ORANGE (cam tươi)
        25- cinnamon nude- nâu đất ánh cam
        26- well-matte nude - nâu đất ánh Hồng 
        27- straberry nude- Hồng dâu đất
        28- mauveful nude - hoa cà tím đất 
        
        Trọng lượng: 4gr
        Thương hiệu: Peripera
        Xuất xứ: Hàn Quốc

        """,
      image: [
        'assets/images/beautify/b5/b5_1.jpg',
        'assets/images/beautify/b5/b5_2.jpg',
        'assets/images/beautify/b5/b5_3.jpg',
      ],
      ratting: 4.0,
      number_of_ratting: 628 ,
      price: 300000,  
    ),
    Product(
      id: 'id6',
      name: 'Bàn Phím Bluetooth3.0 Kết Nối Mạnh Mẽ Bàn Phím Không Dây bàn phím chuột không dây bộ bàn phím chuột không dây',
      category_id: 'electronic',
      detail: """
        Đặc điểm sản phẩm
        Kết nối Bluetooth 3.0 tần số cao: Bàn phím của chúng tôi sử dụng công nghệ Bluetooth 3.0 tần số cao và khoảng cách hiệu quả là 10 mét.
        Thời gian sử dụng lâu dài: Pin 500mAh chỉ cần sạc trong một giờ và bàn phím có thể được sử dụng liên tục trong 30 ngày.
        Tương thích với nhiều hệ điều hành: bàn phím tương thích với Windows, iOS, Android và các hệ điều hành khác. Nó có thể được sử dụng trên điện thoại di động và máy tính
        Thiết kế tiện lợi và đa chức năng: Bàn phím có các phím đa phương tiện đa chức năng, bạn có thể điều chỉnh âm lượng, phát nhạc, bật/tắt Wi-Fi, v.v.
        
        Mô tả sản phẩm
        Sản phẩm bao gồm: Cáp sạc * 1, Sách hướng dẫn * 1, bàn phím * 1, chuột * 1
        
        Bạn nào mua về sử dụng tổ hợp phím như sau để kết nối bluetooth:
        Bàn phím Hp11 có 3 nút để kết nối với3 thiết bị là nút Q, W, E, Khi bạn muốn kết nối bàn phím với thiết bị nào thì:
        
        ·Bạn giữ tổ hợp phím Fn + với nút phía trên trong 3 giây.  Ví dụ mình kết nối với ipad bấm Fn + Q trong 3 giây rồi kết nối với ipad..  Những thiết bị khác tương tự.  Trong đó ( Q là kết nối với hệ điều hành Adroid, W là kết nối với Windows, laptop.  E là kết nối với IOS của iphone)
        ·Bạn muốn kết nội lại thiết bị lần sau bấm Fn + phím nêu trên (bấm click nhẹ thôi)
        
        ⭐ shop đảm bảo⭐
        👍 Sản phẩm giống mô tả 100%
        👍 Đảm bảo chất lượng, dịch vụ tốt nhất, giao hàng trong vòng 1 ngày sau khi đặt hàng
        👍Ảnh thật 100% - Tự tin 100% về chất lượng sản phẩm và dịch vụ bán hàng.
        👍Sản phẩm được kiểm tra và chạy thử trước khi giao cho khách hàng.
        👍Nếu giao hàng sai do lý do của người bán, đổi trả miễn phí trong vòng 7 ngày.

      """,
      image: [
        'assets/images/electronic device/e1/e1_1.jpg',
        'assets/images/electronic device/e1/e1_2.jpg',
        'assets/images/electronic device/e1/e1_3.jpg',
        'assets/images/electronic device/e1/e1_4.jpg',
        'assets/images/electronic device/e1/e1_5.jpg',
        'assets/images/electronic device/e1/e1_6.jpg',
        'assets/images/electronic device/e1/e1_7.jpg',
        'assets/images/electronic device/e1/e1_8.jpg',
      ],
      ratting: 4.0,
      number_of_ratting: 163,
      price: 300000,  
    ),
    Product(
      id: 'id7',
      name: 'Chuột Máy Tính Màu Hồng Game Thủ SIDOTECH YINDIAO G5S Gaming Led Rgb 6 Nút Bấm DPI 3200 Tuổi Thọ Cao - Hàng Chính Hãng',
      category_id: 'electronic',
      detail: """
        Chuột Màu Hồng Game Thủ Máy Tính SIDOTECH G5S

        🔰THÔNG TIN SẢN PHẨM: 
        • Thiết kế công thái học cho cảm giác cầm nắm tốt
        • Nhựa an toàn ABS siêu bền
        • LED RGB chủ động thay đổi theo yêu cầu
        • Điều chỉnh độ nhạy theo nhu cầu 1000/1200/1600/3200
        • Giao diện kết nối: cổng USB 
        • Dễ sử dụng, tương thích mọi loại máy tính, laptop
        • Đế chống mòn
        • Dây cao su siêu bền
        • Tuổi thọ click cực cao
        • Thiết kế 2 nút bên sườn cho thao tác nhanh khi chơi game và lướt web
        • Dành cho game thủ streamer
        • Tương thích cho bàn phím và máy tính
        
        CHUỘT MÁY TÍNH - Phụ kiện không thể thiếu cho máy tính
        Hàng ngày khi sử dụng máy tính, đặc biệt là máy tính bàn, chúng ta đều dùng đến CHUỘT MÁY TÍNH, vậy thực chất CHUỘT MÁY TÍNH là gì? CHUỘT MÁY TÍNH là một thiết bị ngoại vi của máy tính, hay còn gọi là phụ kiện máy tính dùng để điều khiển và làm việc với máy tính. Có nhiều loại chuột cho máy tính của bạn.Tùy theo nhu cầu và mục đích sử dụng cũng điều kiện kinh tế mà bạn có thể lựa chọn con chuột phù hợp nhất với mình.
        Chuột gaming chơi game chủ yếu được lựa chọn bởi các game thủ chuyên nghiệp yêu cầu độ nhạy cao, tốc độ phản hồi nhanh không bị delay. Dòng chuột gaming này yêu cầu sự khắt khe cao hơn so với nhu cầu sử dụng phổ thông.
        Những tiêu chí lựa chọn CHUỘT MÁY TÍNH
        Xác định nhu cầu của bản thân: Có thể chia nhu cầu sử dụng CHUỘT MÁY TÍNH ra thành các nhóm: dành cho người dùng văn phòng phổ thông, người dùng chuyên nghiệp và người dùng làm việc di động. Ở nhu cầu người dùng văn phòng và làm việc di động, các dòng CHUỘT MÁY TÍNH được ưa chuộng hầu hết là phiên bản tiêu chuẩn với hai hoặc ba nút trên một thiết bị trỏ nhỏ gọn. Người dùng với nhu cầu này thường ưa thích chuột không dây.
        
        Thiết kế công thái học: Trên thị trường hiện có nhiều dòng CHUỘT MÁY TÍNH thiết kế đơn giản và nhỏ gọn. Người dùng nên quan tâm đến những dòng chuột có thiết kế công thái học. Thiết kế này giúp tạo sự thuận tiện khi sử dụng, vừa vặn trong lòng bàn tay, mang đến sự thoải mái khi sử dụng. Một số loại CHUỘT MÁY TÍNH còn có thiết kế rãnh sâu giúp đặt ngón cái dễ dàng hơn.
        
        Độ nhạy chuột: Một trong những thông số kỹ thuật chính là độ nhạy chuột (DPI). Thông số này cho thấy con trỏ chuột sẽ di chuyển bao xa trong mỗi inch mà chuột vật lý di chuyển. Dù quy tắc chung là con số cao luôn tốt hơn, nhưng tốc độ di chuyển của con trỏ chuột nhanh hơn không phải lúc nào cũng hiệu quả.
        
        Khác biệt giữa chuột quang và laser: Chuột quang dùng bóng đèn LED, trong khi chuột laser dùng đèn laser để đo sự di chuyển vật lý của chuột. Công nghệ laser thường cho độ chính xác (độ nhạy) cao hơn nhiều lần so với chuột quang, có thể sử dụng trên mọi bề mặt dù trên kính hay vật thể khó phản xạ lại ánh sáng. Tuy vậy công nghệ chuột quang hiện đã có những bước tiến tốt, nếu không quá khắt khe, chuột quang có thể phù hợp với nhu cầu sử dụng hằng ngày.
        
        Chuột bi
        Về cơ chế hoạt động, trong cấu tạo của chuột bi, hai thanh lăn trong bố trí tiếp xúc với viên bi. Bất kỳ sự di chuyển của viên bi theo phương nào đều được quy đổi 

        """,
      image: [
        'assets/images/electronic device/e2/e2_1.jpg',
        'assets/images/electronic device/e2/e2_2.jpg',
        'assets/images/electronic device/e2/e2_3.jpg',
        'assets/images/electronic device/e2/e2_5.jpg',
      ],
      ratting: 5.0,
      number_of_ratting: 5,
      price: 300000,  
    ),
    Product(
      id: 'id8',
      name: 'laptop 100_ mới Intel Celeron J4125 RAM 12GB SSD 512GB Windows 10PRO Bảo Hành 2 Năm laptop gaming giá rẻ cho học',
      category_id: 'electronic',
      detail: """
        laptop hp factory 100% mới Intel Celeron J4125 RAM 12GB SSD 512GB Windows 10PRO Bảo Hành 2 Năm laptop gaming giá rẻ cho học sinh

        Shipping：【Received in 3-5days】
        Warranty：2-Year local warranty【No worries after sale,1 to 1 exclusive customer service】
        Quality assurance：100% Aauthentic Guarantee
        
        Dimensions：360*235*15MMLCD
        Screen Size：15.6“
        Screen Resolution：1920x1080 Screen
        Battery Capacity：3.7V/9000mAH
        Endurance around：3-5 Hours
        CPU Type Intel：J4125 2.0-2.7GHz
        RAM Capacity：8GB DDR3
        SSD：128GB(256GB,512GB,1TB optional)
        Camera Front：0.3MP
        Speaker Size：Built-in 8Ω/0.8W speaker x 2G-sensor
        Built-in：Gravity acceleration sensor
        Packing List: 1*Laptop, 1*Adapter, 1*User Manual, 1* Windows 10 Pro, 1* MS Office
        Contact customer service for FREE GAMING MOUSE and LAPTOP BACKPACK.
        """,
      image: [
        'assets/images/electronic device/e3/e3_1.jpg',
        'assets/images/electronic device/e3/e3_2.jpg',
        'assets/images/electronic device/e3/e3_3.jpg',
        'assets/images/electronic device/e3/e3_4.jpg',
        'assets/images/electronic device/e3/e3_5.jpg',
        'assets/images/electronic device/e3/e3_6.jpg',
      ],

      ratting: 5.0,
      number_of_ratting: 3,
      price: 300000,  
    ),
    Product(
      id: 'id9',
      name: 'Loa Máy Tính Để Bàn Mini Màu Hồng Dễ Thương Chính Hãng 2.0 KISONLI K500 Loa Vi Tính Laptop Nghe Nhạc Gaming Có Dây',
      category_id: 'electronic',
      detail: """
        Loa Máy Tính Để Bàn Mini Màu Hồng Dễ Thương Chính Hãng 2.0 KISONLI K500 Loa Vi Tính Laptop Nghe Nhạc Gaming Có Dây 
        
        * BẢO HÀNH 24 Tháng - 1 ĐỔI 1 trong vòng 7 ngày đầu
        * Giao hàng tốc hành 1-3 ngày
        * Quy trình đóng gói cẩn thận bằng túi bóng khí chống sốc và hộp carton 3 lớp
        
        •       Mô tả sản phẩm
        * Loa Kisonli K500 Nổi bậc với phông màu hồng cực kì dễ thương
        * Loa cho âm thanh cực kì hay và ấm
        * Với kiểu dáng và màu sắc cực đáng yêu...sẽ rất thích hợp để trang trí thêm cho bàn làm việc hoặc Pc Laptop để thêm phần cá tính
        * 3 PHÂN LOẠI LOA CHO BẠN CÓ NHIỀU LỰA CHON
        
        - Thương hiệu Kisonli
        - Kết nối Jack 3.5mm và USB
        - Công suất 6W
        - Độ nhạy 58dB
        - Tần số 20Hz - 20KHz
        - Điện áp USB (DC 5V)
        -Nguồn cung cấp : USB cấm trực tiếp trên laptop hoặc sạc điện thoại
        - Loa Vi Tính Kisonli K500 được thiết kế độc đáo, sang trọng mang đến sự ấn tượng đặc biệt cho bất cứ ai lần đầu chiêm ngưỡng. Hai loa nếu đặt ở hai hướng khác nhau sẽ giúp âm thanh lan tỏa khắp không gian.
        - Thiết bị phù hợp với hầu hết các thiết bị máy tính, laptop. Thêm vào đó, loa Kisonli được thiết kế nhỏ gọn không chiếm nhiều diện tích mà ngược lại còn tăng thêm vẻ đẹp hiện đại cho căn phòng bạn.
        
        - CAM KẾT : BẢO HÀNH 24 Tháng - 1 ĐỔI 1 trong vòng 7 ngày đầu đối với trường hợp lỗi do NSX
        
        - Sản phẩm Loa Máy Tính Để Bàn Mini Màu Hồng Dễ Thương Chính Hãng 2.0 KISONLI K500 Loa Vi Tính Laptop Nghe Nhạc Gaming Có Dây kiểm tra kỹ lưỡng trước khi gửi đi nhằm tránh sản phẩm lỗi đến tay khách hàng
        
        - Quy trình đóng gói cẩn thận bằng túi bóng khí chống sốc và hộp carton 3 lớp nhằm hạn chế tối đa trường hợp lỗi do quá trình vận chuyển.
        
        •Giao hàng tốc hành 1-3 ngày
        
        •Shop chỉ tập trung Loa vi tính chính hãng và tập trung vào chất lượng sản phẩm nên giá thành có thể sẽ không thể so sánh với các shop khác trên thị trường nhưng NO.1 Store chắc chắn đảm bảo chính sách bảo hành đổi trả như đã cam kết ạ.
        
        •Chúng tôi biết quý khách có nhiều lựa chọn nhưng vẫn lựa chọn NO.1 Store. Một lần nữa.NO.1 Store xin chân thành cảm ơn quý khách đã tin tưởng lựa chọn và ủng hộ shop ạ. 
        
                        NO.1 Store CAM KẾT 
                            
        Loa Máy Tính Để Bàn Mini Màu Hồng Dễ Thương Chính Hãng 2.0 KISONLI K500 Loa Vi Tính Laptop Nghe Nhạc Gaming Có Dây
        
        1.Chế độ Bảo Hành 24 Tháng - 1 Đổi 1 Trong Vòng 7 Ngày 
        
        2.Mới Fullbox
        
        3.Bộ phận QC sẽ kiểm tra chất lượng Loa Máy Tính Để Bàn Mini Màu Hồng Dễ Thương Chính Hãng 2.0 KISONLI K500 Loa Vi Tính Laptop Nghe Nhạc Gaming Có Dây trước khi gửi đi cho quý khách 
        
        4.Để yên tâm kể cả khi hết hạn bảo hành shop vẫn hỗ trợ cho tất cả quý khách đã mua hàng tại Shop
        
        •      Sản phẩm được gửi từ Quận Bình Tân - Tp.Hồ Chí Minh
        
        #loavitinh #loamaytinh #loa #loadeban #loalaptop #loamini #loanghenhac #loaamthanh #loamaytinhloavitinh   #loaminimaytinh #loadebanmaytinh #loacoday #loamaytinhcoday#loa2.0 #loacaocap #loakisonli #k500 #loagaming #loaledrgb #loamaytinhdebanmini #loamauhong #loamaytinhcoday #loacoday #loacamdienthoai #loacammaytinh #no1store
        

        """,
      image: [
        'assets/images/electronic device/e4/e4_1.jpg',
        'assets/images/electronic device/e4/e4_2.jpg',
        'assets/images/electronic device/e4/e4_3.jpg',
        'assets/images/electronic device/e4/e4_4.jpg',
      ],
      ratting: 4.2,
      number_of_ratting: 182,
      price: 300000,
       
    ),
    Product(
      id: 'id10',
      name: 'Tai Nghe Mèo Chụp Tai Chơi Game Onikuma K9 Hồng Có Mic,Cho Pc Laptop Máy Tính,Tay Headphone Bluetooth Gaming Không Dây',
      category_id: 'electronic',
      detail: """
      Nhà sản xuất, người bán, sẽ hỗ trợ giao hàng theo nhu cầu, sẵn sàng tư vấn tham khảo ý kiến từ Quý khách.
      
       ✅【Tất cả sản phẩm đều có hàng sẵn 】
       💁【Chúng tôi sẽ giao hàng trong vòng 24 giờ】
       🚚【Quý khách có thể nhận được gói hàng trong vòng 1 đến 3 ngày】
       📦【Trước khi xuất kho sẽ kiểm tra và đóng gói an toàn để tránh hư hỏng trong quá trình vận chuyển】
      
      ✅Tính năng:
      
      ▷ ▶chất lượng âm thanh
      -Chất lượng âm thanh tai nghe chơi game này rất chính xác.
      -Các vụ nổ, tiếng súng và hiệu ứng âm thanh thực sự phát triển mạnh mẽ với sự dũng cảm.
      -Các trình điều khiển âm thanh mạnh mẽ rộng rãi và có thể mang lại cho bạn một cú đấm đẹp mắt khiến bạn cảm thấy như đang ở trong chính trò chơi.
      
      ▷ ▶RGB ánh sáng
      -Bạn sẽ trông cực kỳ phong cách với thiết kế đẹp mắt và ánh sáng RGB tuyệt vời từ nội thất của nó.
      
      ▷ ▶chụp tai mềm
      -Với sự chắc chắn, vừa vặn thoải mái mà những chiếc tai nghe này mang lại, sự cách ly mà chúng mang lại là hoàn hảo.
      -Những chiếc tai nghe này rất vừa vặn với khả năng kéo dài và băng đô có thể điều chỉnh trượt lên.
      - Đệm tai và đệm băng đô rất thoải mái.
      -Chúng mềm hơn và dày hơn như hình ảnh hiển thị. Hoàn hảo cho các phiên chơi game dài.
      
      ✅ Lưu ý:
      
      ▷ ▶USB chỉ dành cho đèn RGB, khi bạn cắm USB, đèn LED sẽ hoạt động.
      ▷ ▶Nếu bạn không muốn bật, chỉ cần không cắm cáp USB vào.
      ▷ ▶gói của chúng tôi bao gồm cáp bộ chia (2 giắc cắm âm thanh)
      Khi sử dụng Tai nghe chơi game cho PC, bạn cần sử dụng cáp bộ chia.
      1 dành cho micrô và 1 dành cho âm thanh.
      Dây màu xanh lá cây dành cho âm thanh và dây màu hồng ở giắc cắm micrô.
      
      ✅ Thông số kỹ thuật:
      
      ⭐Mô hình: ONIKUMA K9 Hồng
      ⭐Kích thước loa: 50mm
      ⭐Độ nhạy: 116 +/- 3db
      ⭐Micrô: 4.0 * 1.5mm
      ⭐Trở kháng: 32Omega +/- 15%
      ⭐Chiều dài cáp: 2,2M +/- 15%
      ⭐Định hướng: Omi-directional
      ⭐Trở kháng micrô: 2,2k
      ⭐Dải tần số: 20Hz-20 KHz
      ⭐Điện áp làm việc LED: DC5V
      ⭐Độ nhạy của micrô: -38 +/- 1dB
      ⭐Làm việc hiện tại: Jack tai nghe: USB + 3.5mm 4Pin
      ⭐Chiều dài cáp: Xấp xỉ. 2,4m
      
      ✅Nội dung gói:
      
      1 x Tai nghe chơi game
      1 x Hướng dẫn sử dụng
      
      ✅Nếu có vấn đề với sản phẩm, vui lòng liên hệ với shop của chúng tôi ngay sau khi bạn nhận được gói hàng. Chúng tôi sẽ sớm cố gắng giải quyết vấn đề của bạn.

        """,
      image: [
        'assets/images/electronic device/e5/e5_1.jpg',
        'assets/images/electronic device/e5/e5_2.jpg',
        'assets/images/electronic device/e5/e5_3.jpg',
        'assets/images/electronic device/e5/e5_4.jpg',
      ],
      ratting: 4.7,
      number_of_ratting: 57,
      price: 300000,
       
    ),
    Product(
      id: 'id11',
      name: 'Áo thun ngắn cổ vuông',
      category_id: 'fashion',
      detail: """
      ✅Biểu ĐỒ KÍCH THƯỚC
      
      Kích thước Chiều cao Cân nặng
      S 150-163 40-48kg
      M 160-165 48-53kg
      L 162-168 53-60kg
      Xl 163-170 60-68kg
      
      
      ✅Gói bao gồm
      
      1xt-shirt
      
      
      ✅Ghi chú mua hàng
      
      Xin vui lòng tham khảo chiều cao của bạn và biểu đồ kích thước trước khi mua. Có 2-3% sự khác biệt theo phép đo thủ công.
      
      Tất cả các hình ảnh sản phẩm trong cửa hàng này là 100% chụp thật. Do ánh sáng và màn hình khác nhau, sự khác biệt màu sắc tinh tế và lỗi thực là bình thường.
      
      Theo dõi cửa hàng của chúng tôi và khám phá các mặt hàng mới và ưu đãi tốt nhất cho bạn!!
      
      ⭐️Bưu kiện sẽ được vận chuyển trong vòng 48 giờ
      
      ⭐️Vận CHUYỂN MIỄN PHÍ CÓ SN
      
      ⭐️Tất cả các mặt hàng đã sẵn sàng và THƯƠNG HIỆU MỚI
      
      Nếu bạn có bất kỳ câu hỏi nào, hãy trò chuyện với chúng tôi và chúng tôi sẽ trả lời trong thời gian sớm nhất.😊

	    """,
      image: [
        'assets/images/fashion/f1/f1_1.jpg',
        'assets/images/fashion/f1/f1_2.jpg',
        'assets/images/fashion/f1/f1_3.jpg',
        'assets/images/fashion/f1/f1_4.jpg',
      ],
      ratting: 5.0 ,
      number_of_ratting: 19 ,
      price: 300000,
       
    ),
    Product(
      id: 'id12',
      name: 'Đầm Body Hở Vai RANSHI Siêu Xinh Cho Nữ, Váy Body Hở Lưng Cao Cấp Chất Gân Dày Dặn Đẹp Rẻ - RBD049',
      category_id: 'fashion',
      detail: """
      Sản phẩm là hàng loại 1 trên thị trường, shop đang sale SIÊU RẺ lấy tương tác, các nàng nhanh tay rinh váy xinh về để mua được với mức giá rẻ nhất nhé! Shop cam kết chất lượng, đổi trả trong 7 ngày!
      
      1. Chất vải gân mềm mại, thân thiện với làn da, đọ co giãn đàn hồi cao ôm sát cơ thể, tôn dáng 3 vòng chuẩn giúp bạn khoe trọn vẻ đẹp sexy gơi cảm.
      2. Thiết kế tạo điểm nhấn nổi bật ở vai & xương quai xanh quyến rũ tạo đường nét mềm mại trên cơ thể, che khuyết điểm bụng và bắp tay
      3. Màu đen và nâu tôn da, dễ dàng hoạt động, di chuyển, mặc vào sẽ mang đến cho bạn khí chất và thời trang không giới hạn.
      4. Phù hợp mọi dáng vóc
      5. Nhân dịp: Thích hợp mặc thường ngày, đồ đi biển, đi quẩy, tiệc, dạ hội, trang phục công sở, mua sắm, ngoài trời, du lịch, v.v.
      ---------------------------------------------------------------
      THÔNG TIN CHI TIẾT VỀ SP
      - Chất liệu: Chất gân dày dặn, co giãn 4 chiều
      - Size: S: 40 - 49 kg
                 M: 49 - 56 kg
                 L: 56 - 63 kg
       (Hãy nhắn tin cho Ranshi để được hỗ trợ tư vấn size tốt nhất)
      - Màu sắc: Đen / Nâu tây
      - Mã: RBD049
      - Xuất xứ tại: Quảng Châu
      - Kiểu dáng: Đầm Body Cổ Yếm Hở Lưng
      - Phong cách: Hàn Quốc, Sang Trọng, Quyến Rũ, Cá tính, Thu hút
      
      (*) Note: Khách hàng sau khi nhận hàng nên quay hình lại lúc mở hàng để dễ xử lý khi có sự cố thiếu hàng.
      (*) Khi nhận hàng có bất cứ vấn đề gì (chưa ưng, không vừa size, hàng lỗi...) , khoan bấm xác nhận "đã nhận hàng", đầu tiên hãy nhắn tin cho shop để được hỗ trợ nhanh chóng: miễn phí trả hàng, đổi hàng qua Shopee; tư vấn giải quyết vấn đề, giải đáp thắc mắc,.... Shop cam đoan hỗ trợ nhiệt tình để quý khách đạt được sự hài lòng nhất!!
      
      ---------------------------------------------------------------
      ❤️ CHÍNH SÁCH CAM KẾT CỦA RANSHI:
      1. Hàng chuẩn loại 1, sản phẩm mới 100%, cam kết đảm bảo chất lượng, hàng thật giống 100% như ảnh
      2. Trợ giá phí vận chuyển toàn quốc, nhận hàng thanh toán
      3. Miễn phí trả hàng qua Shopee
      4. Hàng có sẵn, thời gian giao hàng từ 1-4 ngày tùy tỉnh thành
      5. Luôn kiểm tra hàng cẩn thận trước khi gửi
      6. Sẵn sàng hỗ trợ đổi hàng khi không vừa size hoặc sản phẩm bị lỗi, hỗ trợ đổi hàng ngay tại nhà
      (Ranshi hỗ trợ đổi hàng trong vòng 7 ngày kể từ khi khách nhận hàng)
      7. Hỗ trợ 24/24, tư vấn nhiệt tình trước và sau khi bán hàng
      
      SỰ HÀI LÒNG CỦA KHÁCH HÀNG CHÍNH LÀ SỰ AN TÂM CỦA RANSHI!
      
      ---------------------------------------------------------------
      ƯU ĐÃI HOT CHO KHÁCH HÀNG
      - Để mức giá ưu đãi - sale đến 50%
      - Miễn phí vận chuyển cho đơn hàng từ 50k (Hỗ trợ tối đa 30k)
      - Nhiều voucher,  mã giảm giá hấp dẫn
      - Giảm 20% đơn từ 0đ cho Follower
      
      >> Follow shop để có được nhiều ưu đãi khi mua hàng!
      
      #Đầm #Váy #Đầm_body #Váy_body #đầm_sexy #váy_body #đầm_hai_dây #váy_hở_lưng #váy_dự_tiệc #váy_đi_biển #Đầm_hở_lưng #Đầm_hở_vai #Váy_quyến_rũ #Váy_dự_tiệc
      

	    """,
      image: [
        'assets/images/fashion/f2/f2_1.jpg',
        'assets/images/fashion/f2/f2_2.jpg',
        'assets/images/fashion/f2/f2_3.jpg',
      ],
      ratting: 4.3 ,
      number_of_ratting: 1051 ,
      price: 300000,
       
    ),
    Product(
      id: 'id13',
      name: 'Đầm Lovito',
      category_id: 'fashion',
      detail: """
      ✅Điểm NỔI BẬT
      -🌸Cái nút 
      -🌸Colorblock 
      -🌸xếp ly
      -🌸Hình trái tim
      -🌸Ngắn tay
      -🌸cổ áo
      ✅Mô TẢ 
      -💕Phong cách: Bình thường 
      -💕Loại vừa vặn: Slim Fit 
      -💕Sheer: Không 
      -💕Căng: Không co giãn 
      -💕Chất liệu: Polyester 
      -💕Thành phần: 100% Polyester 
      -💕Khu vực xuất xứ: Trung Quốc đại lục 
       
	    """,
      image: [
        'assets/images/fashion/f3/f3_1.jpg',
        'assets/images/fashion/f3/f3_2.jpg',
        'assets/images/fashion/f3/f3_3.jpg',
        'assets/images/fashion/f3/f3_4.jpg',
      ],
      ratting: 4.8 ,
      number_of_ratting: 124 ,
      price: 300000,
       
    ),
    Product(
      id: 'id14',
      name: 'Set váy nữ',
      category_id: 'fashion',
      detail: """
      ✨ Chào mừng bạn đến ✨ Đây là Young Girl Fearless
      
      Một nơi tốt để chúng tôi nói chuyện với bạn, bất kể bạn ở đâu, chỉ cần thông qua Internet,
      
      Chúng tôi sẵn sàng liên lạc với bạn, chia sẻ tin tức mới nhất, thông tin hoạt động ưu đãi
      
      
      ⭐ Giờ phục vụ: 09: 00-18: 00, Thứ Hai đến Thứ Sáu, trừ ngày lễ. ⭐
      
      Nếu bạn có bất kỳ câu hỏi nào, vui lòng cho chúng tôi biết
      
      -------------------------------------------
      .Hình ảnh nữ thời trang
      
      Đơn giản chỉ cần tạo ra một bộ trang phục nữ tính
      Màu sắc đơn giản | Cuộc sống đơn giản
      
      
      <Cung Cấp giao ngay tại tỉnh>
      
      = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
      
      ✨ Hướng dẫn vận chuyển ✨
      Tất cả hàng hóa ở cửa hàng này đều là hàng giao ngay, hàng giao ngay trong vòng 3 ngày (không tính ngày nghỉ lễ và ngày lễ thường xuyên) giao hàng, tùy theo sự lựa chọn của bạn khi giao hàng sau khi giao hàng, giao hàng tận nhà khoảng 3-5 ngày, giao hàng siêu thị khoảng 4-7 ngày.
      
      [Thông Báo cho người mua]:
      💟 Khách hàng mới chú ý đến cửa hàng và thích nhiều hơn ba sản phẩm có thể nhận được món quà sau👏🏻👏
      💟 Hết lời khen ngợi năm sao + up show người mua đẹp trai, mua lại có thể nói về việc nhận được chiết khấu ~💕💕
      💟 Cửa hàng là hàng giao ngay, đơn hàng trong 48 giờ kể từ khi giao hàng, thông thường 5-7 ngày kể từ ngày nhận hàng.
      💟 Nói chung không hỗ trợ hủy đơn hàng thay đổi, nếu bạn cần hủy đơn hàng, vui lòng liên hệ với bộ phận chăm sóc khách hàng trong vòng 12 giờ.
      💟 Cửa hàng này hàng hóa nhà sản xuất bán hàng trực tiếp, giá sỉ, không đắt, hỗ trợ gia đình 711 mèo đen giao hàng thanh toán tận nhà
      💟 Nếu nhận hàng sau khi có vấn đề, ít vận chuyển chậm, hậu cần, bị lỗi, hoan nghênh bạn liên hệ với chúng tôi bất cứ lúc nào, Xin cảm ơn 🙇 🙇
      
      ◆ Lưu ý: Đơn vị đo thủ công: cm
      
      Do các phương pháp đo lường thủ công khác nhau, cho phép sai số 3-5 cm, và phạm vi lỗi không phải là vấn đề chất lượng
      
      Do ánh sáng và màn hình hiển thị khác nhau, sản phẩm có thể khác với màu sắc hình ảnh, vui lòng tham khảo sản phẩm thực tế
      
      
      [Phương Pháp giặt nhắc nhở thân mật]:
      ⭐Kích thước của sản phẩm được đo thủ công, sai số 1-3 cm là bình thường
      ⭐ Nếu hàng có một số sợi chỉ hoặc không hở mắt, thì người đẹp khó cắt tỉa và mở lỗ thùa yo
      ⭐ Nên giặt riêng quần áo để tránh tình trạng quần áo bị nhuộm màu
      ⭐ Quần áo dễ bị tiết ra màu nhuộm khi giặt lần đầu tiên, đây là hiện tượng bình thường
      ⭐ Sản phẩm không ngâm lâu, không sử dụng thuốc tẩy, không sử dụng máy sấy


	    """,
      image: [
        'assets/images/fashion/f4/f4_1.jpg',
        'assets/images/fashion/f4/f4_2.jpg',
        'assets/images/fashion/f4/f4_3.jpg',
      ],
      ratting: 4.9 ,
      number_of_ratting: 50 ,
      price: 300000,
       
    ),

    Product(
      id: 'id15',
      name: 'Áo thun ngắn cổ vuông',
      category_id: 'fashion',
      detail: """
      Đầm Body Hở Vai RANSHI Siêu Xinh Cho Nữ, Váy Body Hở Lưng Cao Cấp Chất Gân Dày Dặn Đẹp Rẻ - RBD049
      
      Sản phẩm là hàng loại 1 trên thị trường, shop đang sale SIÊU RẺ lấy tương tác, các nàng nhanh tay rinh váy xinh về để mua được với mức giá rẻ nhất nhé! Shop cam kết chất lượng, đổi trả trong 7 ngày!
      
      1. Chất vải gân mềm mại, thân thiện với làn da, đọ co giãn đàn hồi cao ôm sát cơ thể, tôn dáng 3 vòng chuẩn giúp bạn khoe trọn vẻ đẹp sexy gơi cảm.
      2. Thiết kế tạo điểm nhấn nổi bật ở vai & xương quai xanh quyến rũ tạo đường nét mềm mại trên cơ thể, che khuyết điểm bụng và bắp tay
      3. Màu đen và nâu tôn da, dễ dàng hoạt động, di chuyển, mặc vào sẽ mang đến cho bạn khí chất và thời trang không giới hạn.
      4. Phù hợp mọi dáng vóc
      5. Nhân dịp: Thích hợp mặc thường ngày, đồ đi biển, đi quẩy, tiệc, dạ hội, trang phục công sở, mua sắm, ngoài trời, du lịch, v.v.
      ---------------------------------------------------------------
      THÔNG TIN CHI TIẾT VỀ SP
      - Chất liệu: Chất gân dày dặn, co giãn 4 chiều
      - Size: S: 40 - 49 kg
                 M: 49 - 56 kg
                 L: 56 - 63 kg
       (Hãy nhắn tin cho Ranshi để được hỗ trợ tư vấn size tốt nhất)
      - Màu sắc: Đen / Nâu tây
      - Mã: RBD049
      - Xuất xứ tại: Quảng Châu
      - Kiểu dáng: Đầm Body Cổ Yếm Hở Lưng
      - Phong cách: Hàn Quốc, Sang Trọng, Quyến Rũ, Cá tính, Thu hút
      
      (*) Note: Khách hàng sau khi nhận hàng nên quay hình lại lúc mở hàng để dễ xử lý khi có sự cố thiếu hàng.
      (*) Khi nhận hàng có bất cứ vấn đề gì (chưa ưng, không vừa size, hàng lỗi...) , khoan bấm xác nhận "đã nhận hàng", đầu tiên hãy nhắn tin cho shop để được hỗ trợ nhanh chóng: miễn phí trả hàng, đổi hàng qua Shopee; tư vấn giải quyết vấn đề, giải đáp thắc mắc,.... Shop cam đoan hỗ trợ nhiệt tình để quý khách đạt được sự hài lòng nhất!!
      
      ---------------------------------------------------------------
      ❤️ CHÍNH SÁCH CAM KẾT CỦA RANSHI:
      1. Hàng chuẩn loại 1, sản phẩm mới 100%, cam kết đảm bảo chất lượng, hàng thật giống 100% như ảnh
      2. Trợ giá phí vận chuyển toàn quốc, nhận hàng thanh toán
      3. Miễn phí trả hàng qua Shopee
      4. Hàng có sẵn, thời gian giao hàng từ 1-4 ngày tùy tỉnh thành
      5. Luôn kiểm tra hàng cẩn thận trước khi gửi
      6. Sẵn sàng hỗ trợ đổi hàng khi không vừa size hoặc sản phẩm bị lỗi, hỗ trợ đổi hàng ngay tại nhà
      (Ranshi hỗ trợ đổi hàng trong vòng 7 ngày kể từ khi khách nhận hàng)
      7. Hỗ trợ 24/24, tư vấn nhiệt tình trước và sau khi bán hàng
      
      SỰ HÀI LÒNG CỦA KHÁCH HÀNG CHÍNH LÀ SỰ AN TÂM CỦA RANSHI!
      
      ---------------------------------------------------------------
      ƯU ĐÃI HOT CHO KHÁCH HÀNG
      - Để mức giá ưu đãi - sale đến 50%
      - Miễn phí vận chuyển cho đơn hàng từ 50k (Hỗ trợ tối đa 30k)
      - Nhiều voucher,  mã giảm giá hấp dẫn
      - Giảm 20% đơn từ 0đ cho Follower
      
      >> Follow shop để có được nhiều ưu đãi khi mua hàng!
      
      #Đầm #Váy #Đầm_body #Váy_body #đầm_sexy #váy_body #đầm_hai_dây #váy_hở_lưng #váy_dự_tiệc #váy_đi_biển #Đầm_hở_lưng #Đầm_hở_vai #Váy_quyến_rũ #Váy_dự_tiệc
      Váy VIVIAN DRESS thiết kế váy cúp ngực kèm áo khoác ngoài by The Camellia Studio
      
      - Chất liệu: Tuyết hàn
      - Màu sắc: Hồng
      - Size: S M
      - Thông số size:
      Size S: ngực 83-84 eo 66-67 hông 90-92
      Size M: ngực 86-88 eo 68-69 hông 94-96
      
      
      Lưu ý:
      - Khách hàng chat với shop để được tư vấn size chuẩn nhất
      - Khách vui lòng đặt đúng size và màu để tránh nhầm lẫn
      - Các sản phẩm chiết eo khách hàng đo eo tại phần eo trên rốn
      - Thời gian đóng gói: 1-2 ngày. Các đơn hoả tốc sẽ được ship ngay trong 30 phút
      
      Quy định đổi hàng:
      - Hỗ trợ đổi size nếu khách hàng mặc không vừa
      - Sản phẩm đổi phải còn nguyên tem mác, chưa qua sử dụng, chỉnh sửa
      
      #thoitrangnu #vaytrevai #vaytaycoc #vaysuong #damnu #damsuong #damsuongdai #damsuongtayphong #vaydamnu #babydoll #vaymaxidibien #vaydai #vaydibien #vaytrang #vayyem #damngu #dambody #damdai #damhoa #damnu #damdutiec #dambabydoll #damcongchua #damdibien #vayxinh #vaydangdai #vayxeply #chanvay #vaysangchanh #vaytieuthu #vaymaxi #dammaxi #damthietke #vay2day #setvayao #setvay #vayhoanhi #vaydutiec #vaythietke #vaybabydoll #vaynu #vaybody #vayxeply #vayxeplydai #vayxeplyngan #vayxeplycaro #vayxeplytrang #vayxeplynguc #vayxeplydangdai #vayxeply


	    """,
      image: [
        'assets/images/fashion/f5/f5_1.jpg',
        'assets/images/fashion/f5/f5_2.jpg',
        'assets/images/fashion/f5/f5_3.jpg',
        'assets/images/fashion/f5/f5_4.jpg',
      ],
      ratting: 5.0 ,
      number_of_ratting: 17 ,
      price: 300000,
       
    ),
    Product(
      id: 'id16',
      name: '[DHC] Viên KẼM DHC chăm sóc sức khoẻ nuôi dưỡng làn da cải thiện tình trạng mụn',
      category_id: 'healthcare',
      detail: """
      💋 Viên uống Bổ sung Kẽm DHC Zinc 20v và 60v/gói💋 
      💥 Sản phẩm hỗ trợ ức chế quá trình tiết bã nhờn và sừng hoá nang lông, cải thiện tình trạng da mụn, giúp duy trì làn da mịn màng và cải thiện tình trạng rụng tóc, tóc xơ cứng.
      Bổ sung kẽm cho cơ thể, hỗ trợ duy trì sức khỏe, giúp cơ thể khỏe mạnh.
      🌿Sản phẩm bổ sung 3 thành phần khoáng thiết yếu cho cơ thể: Kẽm 15mg, Crôm 60μg, Selen 50μg. Sản phẩm giúp duy trì vị giác, duy trì sức khỏe của làn da và niêm mạc;  hỗ trợ quá trình chuyển hóa của protein và axit nucleic, tăng cường sức đề  kháng và chức năng hệ miễn dịch giúp duy trì sức khỏe cho cơ thể; 
      
       Đối tượng sử dụng: Người mệt mỏi, người thiếu hụt kẽm.
       Hướng dẫn sử dụng:
      👉 Cách dùng: Người lớn: uống 1viên/ngày (uống với nước hoặc nước ấm)
      - Lưu ý:
      
      🌿 Thực phẩm này không phải là thuốc, không có tác dụng thay thế thuốc chữa bệnh.
      🌿 Dừng uống khi phát hiện bất thường. Không sử dụng cho người mẫn cảm với bất cứ thành phần nào của sản phẩm. Tham khảo ý kiến bác sỹ trước khi dùng nếu bạn đang dùng thuốc khác hoặc đang điều trị tại bệnh viện. Để xa tầm tay trẻ em. Sử dụng ngay sau khi mở bao bì. Đóng túi ngay sau khi sử dụng. Việc dùng kẽm quá liều sẽ làm giảm khả năng hấp thụ đồng. Không dùng quá liều lượng.
      
      💥💥💥  Không dùng cho trẻ em và trẻ nhỏ.
      
      - Khối lượng tịnh: 249mg/1 viên
      - Quy cách đóng gói :
      👉 Gói dùng 60 ngày: 14,940g (249mg x 60 viên)
      👉 Gói dùng 20 ngày: 4,980g (249mg x 20 viên)
      
      Thương hiệu: DHC
      Xuất xứ: Made in Japan
      
      #viênuốngcollagen #viênuốngdhc #viênuốngvitamin #tpcn #thựcphẩmchứcnăng #dhc #vienuongdhc #vitamin #viênuốngzinc #zinc #viênuốngkẽm #kẽm #bổsungkẽm #kẽmzinc


	    """,
      image: [
        'assets/images/healthcare/h1/h1_1.jpg',
        'assets/images/healthcare/h1/h1_2.jpg',
        'assets/images/healthcare/h1/h1_3.jpg',
        'assets/images/healthcare/h1/h1_4.jpg',
        'assets/images/healthcare/h1/h1_5.jpg',

      ],
      ratting: 5.0 ,
      number_of_ratting: 2073 ,
      price: 300000,
       
    ),
    Product(
        id: 'id17',
        name: 'ANEMONE Dụng Cụ Con Lăn Bằng Gỗ Mát Xa Cơ Thể Giảm Mỡ Thừa',
        detail:
        """
        Chủ nhân thân mến, tôi đã đợi bạn ở đây từ lâu! Hãy để tôi giới thiệu bản thân trước ~
         
        Kích thước " Khoảng 42 '8cm
        Màu sắc như được hiển thị
        Gói bao gồm '1 con lăn tập thể dục bằng gỗ
        Chất liệu gỗ nguyên khối
        Cách sử dụng : Vạc cánh tay chân hông eo Massage toàn thân
        Tính năng '
        1. Thanh lăn mát xa có thể tháo rời này lý tưởng cho bất kỳ ai về thể dục và vật lý trị liệu . Gậy lăn cơ được sử dụng đồng thời khởi động và hạ nhiệt sau khi tập thể dục để giúp vận động viên phục hồi và ngăn ngừa chấn thương , giải phóng Căng thẳng cơ và Kích thích cơ bắp để tuần hoàn tốt hơn , làm tăng khả năng vận động và tính linh hoạt của cơ thể bạn .
        2.So với các con lăn dính khác , sản phẩm có thể dễ dàng tháo rời để vệ sinh toàn diện tất cả các bộ phận - chỉ cần kéo tay cầm để tháo và trượt ra khỏi bánh xe mát-xa để vệ sinh . Để thời gian khô và sau đó lắp ráp lại .
        3.Chức năng “ muscle Roller Stick để giảm bớt và điều trị đau nhức cơ bắp , hỗ trợ phục hồi , giảm cứng và đau trước và sau khi tập luyện. tập thể dục , chạy và tập luyện . Với việc sử dụng thường xuyên sẽ cải thiện sức mạnh của bạn. tuần hoàn và giảm nguy cơ chấn thương .
        4.Chất liệu - gỗ chất lượng cao và được chế tạo để tồn tại suốt đời , với tay cầm cho cảm giác cầm nắm tiện dụng và 9 con lăn độc lập bằng gỗ trên lõi thanh thép được sản xuất với chất lượng hàng đầu. lõi thép gia cố và thân máy siêu chắc chắn sẽ Không dễ dàng uốn cong dưới áp lực khắc nghiệt .
        
        Chi tiết "
        Kích thước nhỏ và di động. có thể mang nó trong túi của bạn một cách thuận tiện .
        Giảm mệt mỏi hiệu quả và giảm áp lực. có thể sử dụng nó trong nhà hoặc văn phòng .
        Con lăn trục bên trong được làm bằng vật liệu kim loại , có thể tùy ý xoay các con lăn để xoa bóp .
        Có thể sử dụng nó xoa bóp cổ , vai , chân và toàn bộ cơ thể .
        Kích thích lưu thông máu và giúp thư giãn , giảm đau cổ tử cung và giữ gìn sức khỏe.
        Mục đích của chúng tôi không phải là kiếm tiền, mà là để mọi người sử dụng các sản phẩm tốt. Chúng tôi rất vui khi thấy nhiều người sử dụng sản phẩm của chúng tôi và cuộc sống của họ tốt hơn ~
         

        """,
        category_id: 'healthcare',
        image: [
          'assets/images/healthcare/h2/h2_1.jpg',
          'assets/images/healthcare/h2/h2_2.jpg',
          'assets/images/healthcare/h2/h2_3.jpg',
          'assets/images/healthcare/h2/h2_4.jpg',
        ],
        ratting: 4.9,
        price: 300000,
         
        number_of_ratting: 15,
    ),
    Product(
        id: 'id18',
        category_id: 'healthcare',
        name: 'Dụng Cụ Mát Xa Cổ  Vai 6 Con Lăn Cầm Tay Giúp Giảm Áp Lực Tiện Dụng,massage cổ vai gáy, chăm sóc sức khoẻ',
        detail:
        """
        THÔNG TIN SẢN PHẨM:
        - tên sản phẩm: dụng cụ massage đa năng cầm tay
        - chất liệu: nhựa dẻo PP và con lăn cao su mềm TPR
        - kích thước: 35*18cm
        - màu sắc: xanh dương
        CÔNG DỤNG: 
        - Sản phẩm massage đa năng cầm tay có thể điều chỉnh hướng của các đầu massge theo nhu cầu sử dụng ( dùng được cho cột sống cổ, thắt lưng, bắp chân, bàn chân)
        - Chất liệu nhựa PP và TPR thân thiện với làn da.
        - Tay cầm chống trượt, sử dụng tiện lợi.
        "☎𝑺𝒊̉ 𝑳𝒊𝒆̂𝒏 𝑯𝒆̣̂ 𝟎𝟗𝟔𝟔𝟔.𝟎𝟓𝟑𝟒𝟗 - 𝟎𝟗𝟑𝟒𝟓.𝟎𝟓𝟑𝟒𝟗 (𝒁𝒂𝒍𝒐) 
        #giadungthongminh23 #giadungthongminh6268 #giadungthongminh68 #giadungbanbuon86 #shopee  #shopyeuthich #shopxuhuong #shopdacbiet #giare"


        """,

        image: [
          'assets/images/healthcare/h3/h3_1.jpg',
          'assets/images/healthcare/h3/h3_2.jpg',
          'assets/images/healthcare/h3/h3_3.jpg',
          'assets/images/healthcare/h3/h3_4.jpg',
          'assets/images/healthcare/h3/h3_5.jpg',
        ],
        ratting: 4.6,
        price: 300000,
         
        number_of_ratting: 57
    ),
    Product(
        id: 'id19',
        category_id: 'healthcare',
        name: 'Gối massage hồng ngoại 8 bi 2 chiều cao cấp - Máy, gối mát xa cổ vai gáy chính hãng công nghệ Nhật Bản - GMX4',
        detail:
        """
        Máy massage cổ, gối massage cổ vai gáy hồng ngoại 8 bi, công nghệ nhật bản
        ==================================
        🔐Chế độ bảo hành, đổi trả sản phẩm.
        ✅ Đổi trả sản phẩm trong vòng 7 ngày không cần lý do.
        ✅ Đổi mới sản phẩm trong vòng 30 ngày do lỗi của nhà sản xuất.
        ✅ Cam kết về chất lượng sản phẩm, hoàn tiền 💯% nếu hàng không đạt yêu cầu, kém chất lượng, sai mẫu mã.
        ✅ Quy trình làm việc chuyên nghiệp 
        ✅ Đội ngũ Support chuyên nghiệp 24/24 
        ==================================
        🔔 Còn gì tuyệt vời hơn khi sau mỗi ngày làm việc căng thẳng,mệt mỏi, đau lưng vai gáy được tựa mình trên chiếc ghế sô-pha, sử dụng gối massage và xem bộ phim mình yêu thích.
        🔔 Sản phẩm tiện ích đa năng này như 1 món quà ý nghĩa dành cho người thân gia đình bạn bè của mình. Hãy sống trọn từng phút giây với sản phẩm hót 2018 !!!
        ==================================
        💔 Lợi ích & Công Dụng
        
        » Cải thiện tuần hoàn máu, tăng cường sự trao đổi chất của các tế bào
        » Giảm đau, giảm tình trạng căng cơ, xua tan những cơn mệt mỏi
        » Có thể dùng để massage cho nhiều vị trí trên cơ thể như: cổ, vai, gáy, lưng, bụng, đùi, bắp chân, bàn chân, bàn tay,...
        ❌ ❌ Đặc biệt hơn là bạn có thể massage ngay trên ô tô của mình
        »  Gọn nhẹ, dễ sử dụng
        » Với 8 quả cầu lắp trong, massage xoa bóp vào các cơ và huyệt cùng nút điều khiển giúp điều chỉnh chế độ massage
        » Bạn hay bị mỏi cổ, mỏi vai, đau chân vì đi xe đường dài tất cả triệu chứng đó đều bị xóa tan bởi gối massage hồng ngoại có thể massage ngay trên ô tô của mình
        » Gối massage hồng ngoại Magic  massage xung nhịp tuần hoàn, các đầu bi mát xa hồng ngoại tác dụng trực tiếp lên các vùng cơ massage, 
        » 8 viên bi xoay chuyển 360 đảo chiều độ ấn rung trực tiếp vào các huyệt đạo, các vùng đau nhức…rung, xoa bóp tạo cảm giác thư giãn dễ chịu như được một chuyên viên mát xa vậy
        » Hỗ trợ đau vai gáy , cổ, massage các vị trí làm tăng hiệu quả điều trị
        ==================================
        💔 Thông Tin Sản Phẩm
        » Điện áp: 220V ~ 50/60Hz; Công suất tiêu thụ: 25W
        » Chất liệu: Da PU, linh kiện điện tử.
        » Màu sắc: nâu
        » Sử dụng: Cắm điện trực tiếp.
        » Dễ sử dụng và an toàn.
        » Sản phẩm đi kèm Phiếu bảo hành kiêm hướng dẫn sử dụng và Quà tặng kèm là máy massage mặt cầm tay ion hot item. 
        ==================================
        
        SHOP CAM KẾT
        - Sản phẩm giống hình, giống mô tả 100%
        - Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách
        - Hàng có sẵn, giao hàng ngay khi nhận được đơn 
        - Hoàn tiền nếu sản phẩm không giống với mô tả
        - Giao hàng trên toàn quốc, nhận hàng trả tiền 
        - Hỗ trợ đổi trả theo quy định của Shopee 
        
        #goimassage #goimassagehongngoai8bi #haichieu #2chieu #daochieu #hongngoai #8bi #goimassagechinhhang #goimassagecaocap #dogiadung  #dodungthongminh  #giadung #chuyenhanggiadung
        #goi #goimassage #goimassagehongngoai #massage


        """,

        image: [
          'assets/images/healthcare/h4/h4_1.jpg',
          'assets/images/healthcare/h4/h4_2.jpg',
          'assets/images/healthcare/h4/h4_3.jpg',
          'assets/images/healthcare/h4/h4_4.jpg',
          'assets/images/healthcare/h4/h4_5.jpg',
        ],
        ratting: 4.9,
        price: 300000,
         
        number_of_ratting: 10000
    ),
    Product(
        id: 'id20',
        category_id: 'healthcare',
        name: 'Viên Uống Tinh Dầu Hoa Hồng Thơm Cơ Thể, Chống Lão Hóa Đẹp Da Đồng Nhân Đường Chính Hãng [HỘP 100 VIÊN]',
        detail:
        """
        Viên Uống Tinh Dầu Hoa Hồng Thơm Cơ Thể, Chống Lão Hóa Nam Kinh Đồng Nhân Đường Chính Hãng [HỘP 100 VIÊN] 
        
        THÔNG TIN SẢN PHẨM
        - Sản phẩm có thể ăn như kẹo.
        - Ngày 4 viên tối đa,,2 viên uống sau ăn sáng 20 phút và 2 viên uống trước khi ngủ 30 phút. Nếu sử dụng thêm clg, vitamin E các loại khác thì chỉ cần sử dụng ngày 2v. 
        _Nam nữ đều sử dụng được , có thể bôi mặt, dưỡng ẩm massage đều được 
        
        - Sản phẩm này không phải là thuốc và không có tác dụng thay thế thuốc chữa bệnh
        ⚠ QUÝ KHÁCH LƯU Ý: NSX ĐƯỢC IN TRÊN THÂN CHAI, KHÔNG PHẢI HSD Ạ. QUÝ KHÁCH VUI LÒNG XEM KỸ TRÁNH NHẦM LẪN Ạ.
        
        THÀNH PHẦN SẢN PHẨM
        - Nụ hồng khô
        - Tinh dầu hoa hồng (200mg)
        - Tinh dầu hạt nho
        - Hyaluronic Acid
        - Tinh dầu hắc mai biển
        - Nước tinh khiết.
        
        CÔNG DỤNG SẢN PHẨM
        - Chống lão hóa (Hàm lượng chất chống oxi hóa rất cao có trong tinh dầu hoa hồng), thơm miệng, thơm cơ thể, điều hòa nội tiết tố phụ nữ. Mang lại làn da mịn màng, sáng khỏe
        - Hỗ trợ cân bằ.ng lại nội ti.ết tố nữ, điều hòa kin.h nguy.ệt, làm chậ.m và giả m các triệu chứng m.ãn kin.h như kh.ô âm đạo, bốc hỏa, cáu gắt, ra mồ hhôi đêm, đau đầu, mất ngủ.
        - Ngoài ra, sản phẩm còn có tác dụng chống lão hóa; làm đẹp da, giúp làn da trở nên mịn màng, ngăn ngừa nếp nhăn.
        
        * BẢO QUẢN: VUI LÒNG ĐỂ TRONG NGĂN MÁT TỦ LẠNH HOẶC NƠI KHÔ RÁO MÁT MẺ TRÁNH GẶP NÓNG HOẶC ÁNH NẮNG LÀM NHANH BIẾN CHẤT TINH DẦU.
        
        💗💗💗 HÂN HẠNH ĐƯỢC PHỤC VỤ QUÝ KHÁCH 💗💗💗
        ----------------------------------------------
        ⛔ SHOP CAM KẾT 
        - Sản phẩm giống như mô tả, hàng chính hãng 100%
        - Sản phẩm được kiểm tra kĩ càng, đóng gói cẩn thận và tư vấn nhiệt tình 
        - Tư vấn, chăm sóc và giải đáp thắc mắc, hỗ trợ khách hàng 24/24
        - Giao hàng trên toàn quốc.
        
        ⛔ CHÍNH SÁCH ĐỔI TRẢ 
        ‣ Đổi trả theo đúng quy định của Shopee 
        • Điều kiện áp dụng (trong vòng 03 ngày kể từ khi nhận sản phẩm)
        • Hàng hoá vẫn còn mới, chưa qua sử dụng 
        • Hàng hóa hư hỏng do vận chuyển hoặc do nhà sản xuất. 
        • Hàng giao bị thiếu hoặc không đúng mẫu mã, phân loại mà khách hàng đặt
        ‣ Quý khách vui lòng quay lại video khi mở hàng để đảm bảo quyền lợi đổi trả. 
        
        LAMDEPBOUTIQUE xin cảm ơn quý khách đã tin tưởng và mua hàng tại shop. Quý khách nhận hàng, nếu hài lòng về sản phẩm vui lòng bỏ chút thời gian đánh giá 5* và feedback về sản phẩm để chúng tôi cải thiện dịch vụ tốt hơn! Nếu có bất kì thắc mắc nào, đừng vội đánh giá 1 2 3 * mà hãy liên hệ với shop để được giải quyết bạn nhé!
        
        Chúc các bạn có những trải nghiệm vui vẻ khi mua hàng tại LAMDEPBOUTIQUE! 💕💕 💕 
        
        ☎ HOTLINE :    0926.230.728
        
        #vienuongtinhdauhoahong #vienuongthomcothe #vienuongchonglaohoa #vienuong #tpcn #thomcothe #chonglaohoa


        """,

        image: [
          'assets/images/healthcare/h5/h5_1.jpg',
          'assets/images/healthcare/h5/h5_2.jpg',
          'assets/images/healthcare/h5/h5_3.jpg',
          'assets/images/healthcare/h5/h5_4.jpg',
        ],
        ratting: 5.0,
        price: 300000,
         
        number_of_ratting: 427
    ),
    Product(
        id: 'id21',
        category_id: 'tool',
        name: '[Miễn phí khắc Tên,Logo] Đồ khui rượu vang, Đồ mở rượu vang, Dụng cụ mở rượu bia , Đồ khui rượu vang nhập khẩu.',
        detail:
        """
        Rượu vang nhập khẩu - Quà tặng doanh nghiệp - Phụ kiện ngành rượu - WineKings
        
        [Miễn phí khắc Tên,Logo] hãy chat với chúng tôi nếu quý khách có nhu cầu
        
        THÔNG TIN CHI TIẾT
        * Chất liệu: Gỗ, Hợp kim cao cấp
        * Kích thước: 12 x 2.5 cm 
        * Trọng lượng: 100g
        
        I: CÔNG DỤNG
        - Sử dụng khui mở rượu vang, mở nắp chai bia, chai nước ngọt trong các buổi tiệc cho nhà hàng, khách sạn, quán ăn sang trọng.
        - Quà tặng sinh nhật người thân bạn bè.
        - Sản phẩm có thiết kế đẹp bền bỉ, sáng bóng đảm bảo có độ bền rất cao, bạn có thể tha hồ sử dụng mà không lo lắng dao sẽ nhanh chóng bị rỉ sét, ảnh hưởng đến những đồ ăn, thức uống bạn sử dụng.
        
        II: QUY ĐỊNH ĐỔI TRẢ VÀ BẢO HÀNH
        - Winekings cam kết với khách hàng về sản phẩm phụ kiện rượu vang
        - Đảm bảo chất lượng, hàng được giao từ 1-7 ngày kể từ ngày đặt hàng
        - Giao hàng trên toàn quốc theo hình thức COD 
        - Đổi trả theo đúng quy định
        * Điều kiện áp dụng (trong vòng 03 ngày kể từ khi nhận sản phẩm):
        - Hàng hoá vẫn còn mới, chưa qua sử dụng
        - Hàng hóa hư hỏng do vận chuyển hoặc do nhà sản xuất.
        - Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ…
        * Trường hợp không đủ điều kiện áp dụng chính sách:
        - Quá 03 ngày kể từ khi Quý khách nhận hàng
        
        III: LƯU Ý CÁCH BẢO QUẢN
        - Vui lòng vệ sinh sản phẩm bằng chất tẩy rửa nhẹ trước khi sử dụng
        -  Không dùng nhùi kim loại, chất tẩy có tính ăn mòn cao để vệ sinh
        - Bảo quản nơi khô ráo, thoáng mát
        - Sản phẩm không phải đồ chơi, vui lòng để ngoài tầm với của trẻ em
        
        IV: Tại sao bạn lại lựa chọn WINEKINGS? bởi tại WINEKINGS bạn sẽ được các đặc quyền sau:
        – An tâm về chất lượng: Tất cả các sản phẩm rượu vang của WINEKINGS được nhập khẩu trực tiếp từ nhà sản xuất và có đầy đủ giấy tờ pháp lý liên quan.
        – Đảm bảo bán đúng giá trị: Giá sản phẩm tại WINEKINGS luôn luôn được cân nhắc và so sánh với thị trường để đảm bảo lợi ích của bạn. Hãy an tâm, vì chúng tôi luôn nói đúng giá trị thật của sản phẩm.
        – Hỗ trợ về thiết kế và in ấn: Khách hàng mua quà tặng, logo nhận diện thương hiệu hoặc khách hàng có nhu cầu thiết kế logo, menu, winelist… được chúng tôi hỗ trợ hoàn toàn miễn phí.
        – Phục vụ 24/24: Số hotline luôn luôn sẵn sàng phục vụ bạn, kể cả trong những dịp lễ tết.
        Để hưởng các đặc quyền trên, Bạn chỉ cần gọi hotline: 0918283992
        Hoặc liên hệ địa chỉ: D41, khu dân cư riovista, phường phước long B, TP Thủ Đức.
        #hopruouvang #hopsampanh #ruouvang #hopdungruouvang #hopruouda #quantangdoangnghiep #quatang #qua


        """,

        image: [
          'assets/images/tool/t1/t1_1.jpg',
          'assets/images/tool/t1/t1_2.jpg',
          'assets/images/tool/t1/t1_3.jpg',
          'assets/images/tool/t1/t1_4.jpg',
          'assets/images/tool/t1/t1_5.jpg',
        ],
        ratting: 5.0,
        price: 300000,
         
        number_of_ratting: 2000
    ),
    Product(
        id: 'id22',
        category_id: 'tool',
        name: 'BỘ DỤNG CỤ NÂNG VÀ DI CHUYỂN ĐỒ ĐẠC THÔNG MINH, Dụng cụ di chuyển đồ tải trọng 600kg',
        detail:
        """
        DỤNG CỤ DI CHUYỂN ĐỒ DÙNG THÔNG MINH -DỤNG CỤ DI CHUYỂN ĐỒ ĐA NĂNG-DỤNG CỤ NÂNG VÀ DI CHUYỂN ĐỒ ĐẠC THÔNG MINH
        Các tiện ích mang lại:
        ❎ Dụng cụ di chuyển đồ được thiết kế dễ dàng sử dụng và rất tiện lợi, làm cho các đồ vật bạn đang di chuyển nhẹ hơn 50%. 
        ❎ Làm giảm nguy cơ các đồ vật bị lật hoặc va chạm với những bức tường và ùn tắc cửa, giảm tốn kém thiệt hại tài sản.
        ❎ Thích hợp để di chuyển tất cả các loại đồ vật lớn nhỏ như nệm, TV màn hình phẳng, tủ quần áo, tủ lạnh, đàn piano, nội thất văn phòng và nhiều hơn nữa!
        ❎ Làm giảm nguy cơ gây thương tích, bệnh tật do khiêng nặng.
        Ứng dụng
        👉 Di chuyển các đồ dùng trong nhà như bàn ghế, tủ lạnh, két sắt
        👉 Tay nâng chất liệu thép siêu cứng siêu bền
        👉 Hệ con lăn bánh xe di chuyển bằng nhựa ABS chịu sức nén cao.
        👉 Bề mặt cao su tiếp xúc xoay 360 độ, giúp cho việc di chuyển đồ đạc vô cùng thuận tiện
        👉 Tải trọng di chuyển tối đa mỗi còn lăn lên đến 150kg, Tổng tải trọng di chuyển là 600kg
        Bộ dụng cụ nâng và di chuyển đồ thông minh
        ---------------- THÔNG TIN SẢN PHẨM -------------
        1 bộ gồm: 1 tay nâng và 4 bánh xe
        Chất liệu : nhựa ABS + thép chất lượng cao.
        Xuất xứ: Việt Nam
        HƯỚNG DẪN SỬ DỤNG :
        - Dùng lẫy để nâng góc của vật cần di chuyển
        - Đặt 4 bánh xe vào 4 góc ( Tải trọng mỗi con lăn là 150kg, tổng tải trọng cả bộ là 600kg) và nhẹ nhàng đẩy đồ.
        Bộ dụng cụ nâng và di chuyển đồ thông minh
        
        ⭐QUYỀN LỢI KHÁCH HÀNG⭐ 
        ✅Tất cả các sản phầm shop bán ra đều 1 đổi 1 (LỖI LÀ ĐỔI MỚI - KHÔNG SỬA CHỮA). 
        ✅ Sản phẩm shop nhập từ công ty về rồi bán lại nên rất khó tránh khỏi sai sót hay sản phẩm bị lỗi không mong muốn, nên nếu anh chị nhận hàng về dùng có vấn đề gì cứ alo hoặc nhắn tin cho shop để được hỗ trợ đổi mới ạ. 
        ✅ Tất cả sản phầm trước khi gửi đi đều được shop TEST KĨ CÀNG, đóng gói cẩn thận, tuy nhiên trong quá trình vận chuyển ko thể tránh được lỗi hoàn toàn 100%, nên mong anh chị thông cảm và liên hệ ngay cho shop nếu có bất kì vấn đề gì nha
        
        #Dungcudichuyendo #bodungcunangdovadichuyendothongminh #dungcudanang #bokichnangdonang #bokichnangdo #dungcukichdonang #dungcuchuyendo #dungcudichuyendodanang #dungcukichdo #dungcunangdo #kichnangdonangcobanh #kichnangdonang #kichdichuyendo #vanchuyenhang #dungcuhotrovanchuyen #dungcuhotronangdonang #dungcuthongminh #trogiashopee #dung #cu #hỗ #trợ #nâng #dichuyểnđồ #di #chuyển #đồ #dụng #cụ #nângđồ #diđồ #nângvậtnặng #dichuyểnvậtnăng #sukumistore #sukumi


        """,

        image: [
          'assets/images/tool/t2/t2_1.jpg',
          'assets/images/tool/t2/t2_2.jpg',
          'assets/images/tool/t2/t2_3.jpg',
          'assets/images/tool/t2/t2_4.jpg',
          'assets/images/tool/t2/t2_5.jpg',
          'assets/images/tool/t2/t2_6.jpg',
        ],
        ratting: 5.0,
        price: 300000,
         
        number_of_ratting: 474
    ),
    Product(
        id: 'id23',
        category_id: 'tool',
        name: 'Dụng cụ mồi bếp gas, thắp nến chống gió, đầu xoay 360 độ - sạc USB Tiện Lợi',
        detail:
        """
        Dụng cụ mồi bếp gas, thắp nến chống gió, đầu xoay 360 độ - sạc USB Tiện Lợi
        THÍCH HỢP DÙNG ĐỂ CHÂM NẾN do thiết kế hũ nến sâu lòng và miệng nhỏ, khi nến đã cạn gây khó khăn cho người dùng. Bạn có thể dễ dàng đốt đến những giọt sáp sau cùng mà ko sợ phỏng tay.
        Dùng để mồi bếp Gas, Bếp cồn an toàn tiện lợi 
        Có thể xoay 360 độ phù hợp với nhiều công dụng khác nhau. Nhỏ gọn, an toàn, tiện lợi dễ dàng mang đi theo người 
        - Chất liệu: Vỏ kim loại chống rỉ
        - Màu sắc: Đen, Vàng, Đỏ, Xanh Dương, Bạc, Hồng
        - Sạc như sạc điện thoại thông thường, tặng kèm cáp sạc
        - Dung lượng pin 240mha
        - Thiết kế thân dài nhỏ gọn có thể uốn cong, chống gió thuận tiện cho việc mồi bếp, mồi nến..
        - Thiết kế móc treo: Móc thiết kế tiện lợi cho việc bảo quản, giúp tiết kiệm không gian, tránh lộn xộn
        - Có đèn Led hiển thị mức pin
        - Chế độ tự động ngắt sau 7s an toàn tuyệt đối
        #dungcudotnenthomcaocap #diem #dot #candlecup #nenthom #nen #usb #nenbac #nếnromantictimes #nenthom #moibeplua #DHmart #dungcudotnen #phukiennenthom #phukien #dotnen #batluausb #dotnensacusb #thapnen


        """,

        image: [
          'assets/images/tool/t3/t3_1.jpg',
          'assets/images/tool/t3/t3_2.jpg',
          'assets/images/tool/t3/t3_3.jpg',
          'assets/images/tool/t3/t3_4.jpg',
          'assets/images/tool/t3/t3_5.jpg',
          'assets/images/tool/t3/t3_6.jpg',
        ],
        ratting: 4.5,
        price: 300000,
         
        number_of_ratting: 157
    ),
    Product(
        id: 'id24',
        category_id: 'tool',
        name: 'Hộp Dụng Cụ Lấy Nhã Kem Đánh Răng Tự Động Cao Cấp Dán Tường ToothPaste 1922',
        detail:
        """
        Hộp Dụng Cụ Lấy Nhã Kem Đánh Răng Tự Động Cao Cấp Dán Tường ToothPaste 1922
        Hộp nhả kem đánh răng tự động mẫu mới với thiết kế thông minh.
        Bạn chỉ cần ấn bàn chải là đã có thể lấy kem tự động
        Tận dụng tối đa lượng kem trong tuýp, dễ dàng lau rửa.
        Chất liệu: nhựa cao cấp vừa đẹp vừa an toàn cho sức khỏe
        Công nghệ miếng dán hút chân không siêu chắc chắn giúp bạn dễ dàng lắp thiết bị vào tường mà không cần khoan cắt vất vả.
        Giống như một chiếc máy xịt kem đánh răng nhưng sản phẩm không hề dùng pin hay nguồn điện mà tự động xịt kem đánh răng lên bàn chải chỉ bằng lực nhấn nhẹ đầu bản chải vào cần bơm của thiết bị
        Sản phẩm tiện dụng biến không gian phòng tắm trở nên gọn gàng, đẹp mắt hơn. Quá tiện lợi và hiện đại đúng không nào.
        
        #nhakemdanhrang #laykemdanhrang #ecoco1922 #toothpaste #dantuong #bansi #banbuon #khuyenmai #giamgia #gia1k #sale #freeship #mienphi #chinhhang #dogiadung #dobep #diengiadung #mevabe #dungcuhocsinh #dodunghoctap #giadunggiare
        #buonre #buonrecom #lamhongthai #dogiadung  #thongminh #giadung #giare #vesinhnhacua #dodunggiadinh #dodungphongbep #nhacuavadoisong #giadungyushen #yushen


        """,

        image: [
          'assets/images/tool/t4/t4_1.jpg',
          'assets/images/tool/t4/t4_2.jpg',
          'assets/images/tool/t4/t4_3.jpg',
          'assets/images/tool/t4/t4_4.jpg',
        ],
        ratting: 5.0,
        price: 300000,
         
        number_of_ratting: 10
    ),
    Product(
        id: 'id25',
        category_id: 'tool',
        name: 'Kìm Bóp Tay, Kìm Tập Cơ Tay, Dụng Cụ Tập Gym Tại Nhà Điều Chỉnh Lực Có Đếm 10-60kg',
        detail:
        """
        Kìm Bóp Tay, Kìm Tập Cơ Tay, Dụng Cụ Tập Gym Tại Nhà Điều Chỉnh Lực Có Đếm 10-60kg
        ----------------------------------------------------------------------------------
        ✍️ MÔ TẢ SẢN PHẨM 
        ➡️ Kìm bóp tay chữ A điều chỉnh lực là dụng cụ tập cơ tay bàn tay và ngón tay, đặc biệt thích hợp cho người tập võ, tập thể lực hoặc cho nhân viên văn phòng muốn luyện tập cơ tay do gõ bàn phím nhiều.
        ➡️ Sản phẩm có thể sử dụng đơn giản, thiết kế nhỏ gọn dễ dàng mang theo, có thể luyện tập mọi nơi, mọi lúc.
        
        ✍️ THÔNG TIN CHI TIẾT SẢN PHẨM
        ➡️ Phần ngoài của tay cầm bọc nhựa cao cấp chống trơn, thấm mồ hôi và lò xo có độ đàn hồi lớn.
        ➡️ Núm điều chỉnh lực bóp từ 10=>60kg.
        ➡️ Kích thước:15 x 12 x 3 cm.
        ➡️ Chất liệu: Nhựa + Thép lò xo đàn hồi cao.
        ➡️ Tập cơ bàn tay, ngón tay.
        ➡️ Khóa lò xo: Làm bằng thép không rỉ chất lượn cao tay cầm chắc chắn.
        ➡️ Thiết kế nhỏ gọn, có thể mang đi chơi hoặc đi du lịch.
        
        ✍️ CÔNG DỤNG SẢN PHẨM
        ➡️ Tăng sức mạnh cho tay: sẽ giúp bạn giữ tạ trong thời gian lâu hơn khi tham gia tập thể hình; tăng sức mạnh vung vợt lên đáng kể khi chơi cầu lông, Tennis giúp ích khi tập luyện thể dục dụng cụ hoặc tập leo núi.
        ➡️ Tăng cơ bắp cho cẳng tay: Theo nhiều huấn luyện viên thể hình, nếu muốn cổ tay ấn tượng hơn và to hơn người khác thì bạn nên tập luyện với kìm bóp tay thường xuyên.
        ➡️ Cải thiện khéo léo đôi tay: Kìm bóp tay sẽ hoạt động để rèn luyện cho các ngón tay của bạn một cách độc lập từ đó cải thiện được sự khéo léo cho đôi tay. 
        ➡️ Tác dụng cho sức khỏe: giúp tuần hoàn máu, giúp giảm stress hiệu quả và đồng thời giúp tăng cường sức khỏe.
        ----------------------------------------------------------------------------------
        ✍️ CHÍNH SÁCH ĐỔI TRẢ HÀNG
        ➡️  TRƯỜNG HỢP CHẤP NHẬN ĐỔI TRẢ 
        ➡️  Đổi trả trong trường hợp sai hàng, hỏng hàng, hàng không đủ số lượng
        
        ✍️ TRƯỜNG HỢP KHÔNG CHẤP NHẬN ĐỔI TRẢ
        ➡️  Hỏng hàng do quá trình sử dụng của khách hàng
        ➡️  Sai hàng, thiếu hàng, lỗi hàng nhưng khách hàng không quay video
        ---------------------------------------------------------------------------------
        ⚡. CHÍNH SÁCH BÁN HÀNG HTSPORT CAM KẾT
        ✔ Về sản phẩm: Shop cam kết cả về CHẤT LIỆU cũng như HÌNH DÁNG ( đúng với những gì được nêu bật trong phần mô tả và hình ảnh sản phẩm).
        ✔ Về giá cả: Shop nhập với số lượng nhiều và trực tiếp từ hãng nên giá sẽ luôn TỐT NHẤT và CHẤT LƯỢNG nhất
        ✔ Về dịch vụ: Shop sẽ cố gắng trả lời hết những thắc mắc xoay quanh sản phẩm các bạn cứ Inbox cho shop
        ✔ Thời gian chuẩn bị hàng: Hàng có sẵn, thời gian chuẩn bị tối ưu nhất.
        
        ⚡ QUYỀN LỢI CỦA KHÁCH HÀNG 
        - Cam kết 100% đổi hàng trong vòng 3 ngày theo chính sách Shopee nếu sản phẩm khách đặt lỗi do nhà sản xuất
        - Shop hỗ trợ đổi sang sản phẩm khác cùng giá hoặc cao hơn nếu khách có nhu cầu đổi mẫu khác.
        - Nếu có bất kì khiếu nại cần Shop hỗ trợ về sản phẩm, khi mở sản phẩm các bạn vui lòng quay lại video quá trình mở sản phẩm để được đảm bảo 100% đổi lại sản phẩm mới nếu Shop giao bị lỗi.
        - Các bạn nhận được sản phẩm, vui lòng đánh giá giúp Shop để hưởng thêm nhiều ưu đãi hơn


        """,

        image: [
          'assets/images/tool/t5/t5_1.jpg',
          'assets/images/tool/t5/t5_2.jpg',
          'assets/images/tool/t5/t5_3.jpg',
          'assets/images/tool/t5/t5_4.jpg',
        ],
        ratting: 4.9,
        price: 300000,
         
        number_of_ratting: 328
    ),

  ];



  List<Adbanner_data> getAdbanner(){
    List<Product> itemList = itemProductList;
    List<Adbanner_data> ad_data = List.generate(
      5, (index) {
      Product randomItem = itemList[Random().nextInt(itemList.length)];
      return Adbanner_data(
        id: randomItem.id,
        imageurl: randomItem.image[0],
      );
    },
    );

    return ad_data;
  }


  Product get_product_by_id(String id){
    return itemProductList.firstWhere((element) => element.id == id,
        orElse: () => Product(
            id: 'id0',
            name: "Product don't exit",
            category_id: 'none',
            detail: "Something wrong with this",
            image: ['assets/images/product1.png'],
            ratting: 0.0,
            price: 0.0,
             
            number_of_ratting: 0
        )
    );
  }
  int get_product_index_by_id(String id){
    return itemProductList.indexWhere((element) => element.id == id,
    );
  }


  List<product_card> getCategory(String id){
    return itemProductList.where((element) => element.category_id == id).map((product) {
      return product_card(
        id: product.id,
        imageUrl: product.image[0],
        title: product.name,
        price: product.price.toString(),
        rating: product.ratting.toString(),
      );
    }).toList();

  }

  void setProduct(String id, Product item){
    itemProductList[get_product_index_by_id(id)] = item;
    notifyListeners();
  }

  List<product_card> getFavoriteCard(){
    return itemProductList.where((a) => favorite_list.any((b) => b.id == a.id )).map((e) => product_card(id: e.id, imageUrl: e.image[0], title: e.name, price: e.price.toString(), rating: e.ratting.toString())).toList();
  }

  bool getFavorite_state(String id){
    return favorite_list.contains(id);
  }
  void addToFavorite(Product item){
    favorite_list.add(item);
    notifyListeners();
  }
  void removeFromFavorite(String id){
    int index = favorite_list.indexWhere((element) => element.id == id);
    if (index >= 0){
      favorite_list.removeAt(index);
    }
    notifyListeners();
  }

  void setCompleteStatus(int index){
    reciept_list[index].complete_status = true;
    reciept_list[index].status = "Done";
    notifyListeners();
  }


  void addItemToCart(String id,int quantity){
    cart_item_list.add(
        cart_item(id: id,
            quantity: quantity,
            price: (get_product_by_id(id).price)*quantity,
        )
    );
    notifyListeners();
  }
  void removeItemFromCart(int index){
    cart_item_list.removeAt(index);
    notifyListeners();
  }

  double getCartPrice(){
    double totalPrice = 0;
    for (cart_item item in cart_item_list){
      totalPrice += item.price;
    }
    return totalPrice;
  }
  void clearCartItem(){
    cart_item_list.clear();
    notifyListeners();
  }

  void updateQuantity(int index){
    cart_item k = cart_item_list[index];
    double price = get_product_by_id(k.id).price * k.quantity;
    cart_item_list[index].price = price;
    notifyListeners();
  }


  void addItemtoReciept(){
    reciept_list.addAll(cart_item_list.map((e){
      return receipt_data_card(
          name: get_product_by_id(e.id).name,
          id: e.id,
          quantity: e.quantity,
          price: e.price,
          status: 'Đang giao hàng',
          complete_status: false);
    }).toList());
    notifyListeners();

  }



}