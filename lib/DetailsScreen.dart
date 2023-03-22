import'package:flutter/material.dart';
import'DetailsModel.dart';
class DetailsScreen extends StatelessWidget
{
  DetailsScreen({super.key});
  
  DetailsModel detailsModel = DetailsModel();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Doctor Details")),
     
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: 
      Icon(Icons.add)
      ),
       body: SafeArea(
         child: SingleChildScrollView(
           child: Column(
             children: [
               ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: detailsModel.information.length,
                itemBuilder:(BuildContext context, int index)
                 {
                  return ListTile(
                    title: Text(detailsModel.information[index].doctorName),
                    subtitle: Text(detailsModel.information[index].department),
                    trailing: Text(detailsModel.information[index].hospitalName)
                    
                  );         
         
                }
               ),
             ],
           ),
         ),
       ),

      

    );
  }

}