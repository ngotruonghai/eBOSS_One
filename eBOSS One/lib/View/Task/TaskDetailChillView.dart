import 'package:flutter/material.dart';

class TaskDetailView extends StatelessWidget {
   TaskDetailView({
    super.key, required this.workID
  });
  String workID="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chi tiết nhiệm vụ"),
        backgroundColor: Color(0xFFe67e22),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(workID,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        color: Colors.orange))
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 20,bottom: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ngày ghi nhận: ",style: TextStyle(
                      fontSize: 13,
                      fontFamily: "Roboto",
                      color: Colors.black,
                  fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Text("10/10/2023",
                      style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Loại phiếu: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                    fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Phần mềm yêu cầu chức năng",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Người ghi: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Anh Vũ",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),),
              Padding(padding: EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Người giao: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Anh Vũ",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Người nhận: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Trường Hải",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Divider(
                height: 10, // Điều chỉnh độ dày của đường kẻ
                color: Colors.black26, // Điều chỉnh màu sắc của đường kẻ
                thickness: 1, // Điều chỉnh độ dày của đường kẻ (tương tự height)
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Chủ đề: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Chỉnh sửa giao diện chức năng trình ký HTML",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Chi tiết: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Thêm form quản lý trình ký \n - lập trình theo ngôn ngữ HTML \n - Thiết kế dạng treeview thiết kế quản lý nhiệm vụ trên kuang jaan",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dự án phần mềm: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Stand Dtagon ULT",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mức độ ưu tiên: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Ưu tiên",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dự án bảo trì: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Không có",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nguồn: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Nội bộ",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Khôi lượng: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Hao > 8 giờ",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Độ khó công việc: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Việc trong năng lực",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Giải pháp: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Đợi xử lý",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Độ chuyên môn: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("junior++",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tiền độ conông việc: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("Đợi xử lý",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tên khách hàng: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("A B C",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Đánh giá xử lý: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("2",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Divider(
                height: 10, // Điều chỉnh độ dày của đường kẻ
                color: Colors.black26, // Điều chỉnh màu sắc của đường kẻ
                thickness: 1, // Điều chỉnh độ dày của đường kẻ (tương tự height)
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dự kiến hoàn thành: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("15/07/2023",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kế hoạch ngày bắt đầu: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("15/07/2023",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dự kiến kết thúc: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("15/07/2023",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ngày nhận việc: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("15/07/2023",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ngày hoàn thành: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("15/07/2023",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ngày chưa hoàn thành: ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text("15/07/2023",
                        style: TextStyle(fontSize: 13,fontFamily: "Roboto"),
                        overflow: TextOverflow.clip,
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
