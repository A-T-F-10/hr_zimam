import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:zimam_app_hr/core/helpers/extensions.dart';

import '../../../../core/theme/styles.dart';

class AttendanceRecordPage extends StatelessWidget {
  const AttendanceRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70.h,
          leading: Container(
            alignment: Alignment.topCenter,
            height: 10.h,
            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              alignment: Alignment.topCenter,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.black,
          title: Text(
            'لائحة تنظيم',
            style: TextStyles.font16WhiteSemiBold,
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: 0,
              child: SizedBox(
                height: 450.h,
                child: SfPdfViewer.asset(
                  'assets/pdf/attendance_record.pdf',
                  // Enable these parameters if needed
                  enableDoubleTapZooming: true,
                  canShowHyperlinkDialog: true,
                  canShowScrollHead: false,
                  canShowPageLoadingIndicator: true,
                  enableTextSelection: false,
                  scrollDirection: PdfScrollDirection.vertical,
                  canShowScrollStatus: true,
                  pageLayoutMode: PdfPageLayoutMode.continuous,
                  initialZoomLevel: 1.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
