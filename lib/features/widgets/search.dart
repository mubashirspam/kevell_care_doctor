import 'package:flutter/material.dart';

class SuggetstionSerchBar extends StatefulWidget {
  final Function search;
  final String hintText;
  final List<String> suggestionsList;

  const SuggetstionSerchBar(
      {super.key,
      required this.search,
      required this.hintText,
      required this.suggestionsList});

  @override
  State<SuggetstionSerchBar> createState() => _SuggetstionSerchBarState();
}

class _SuggetstionSerchBarState extends State<SuggetstionSerchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
        builder: (BuildContext context, SearchController controller) {
      return SizedBox(
        height: 45,
        child: SearchBar(
          hintText: widget.hintText,
          hintStyle: MaterialStatePropertyAll<TextStyle>(
            Theme.of(context).textTheme.titleSmall!,
          ),

          controller: controller,
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 8.0)),
          elevation: const MaterialStatePropertyAll<double>(0.4),
          backgroundColor: const MaterialStatePropertyAll<Color>(
            Color(0xFFF5F5F5),
          ),

          shape: MaterialStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onTap: () {
            controller.openView();
          },
          onChanged: (_) {
            controller.openView();
            widget.search(_);
          },
          // leading: const Icon(Icons.search),
          trailing: <Widget>[
            Tooltip(
              message: 'Click here to search',
              child: IconButton(
                onPressed: () {
                  widget.search(controller.value.text);
                },
                icon: const Icon(Icons.search),
              ),
            )
          ],
        ),
      );
    }, suggestionsBuilder: (BuildContext context, SearchController controller) {
      return List<ListTile>.generate(widget.suggestionsList.length,
          (int index) {
        final item = widget.suggestionsList[index];
        return ListTile(
          title: Text(
            item,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          onTap: () {
            setState(() {
              controller.closeView(item);
              widget.search(item);
            });
          },
        );
      });
    });
  }
}

List<String> medicines = [
  "Paracetamol 500mg",
  "Paracetamol 650mg",
  "Paracetamol 1000mg",
  "Ibuprofen 200mg",
  "Ibuprofen 400mg",
  "Ibuprofen 600mg",
  "Aspirin 81mg",
  "Aspirin 325mg",
  "Ciprofloxacin 250mg",
  "Ciprofloxacin 500mg",
  "Ciprofloxacin 750mg",
  "Amoxicillin 250mg",
  "Amoxicillin 500mg",
  "Omeprazole 20mg",
  "Omeprazole 40mg",
  "Simvastatin 10mg",
  "Simvastatin 20mg",
  "Simvastatin 40mg",
  "Metformin 500mg",
  "Metformin 1000mg",
  "Lisinopril 5mg",
  "Lisinopril 10mg",
  "Lisinopril 20mg",
  "Hydrochlorothiazide 12.5mg",
  "Hydrochlorothiazide 25mg",
  "Atorvastatin 10mg",
  "Atorvastatin 20mg",
  "Atorvastatin 40mg",
  "Amlodipine 5mg",
  "Amlodipine 10mg",
  "Gabapentin 100mg",
  "Gabapentin 300mg",
  "Gabapentin 600mg",
  "Gabapentin 800mg",
  "Metoprolol 25mg",
  "Metoprolol 50mg",
  "Metoprolol 100mg",
  "Warfarin 1mg",
  "Warfarin 2mg",
  "Warfarin 5mg",
  "Warfarin 10mg",
  "Diazepam 2mg",
  "Diazepam 5mg",
  "Diazepam 10mg",
  "Ranitidine 75mg",
  "Ranitidine 150mg",
  "Levothyroxine 25mcg",
  "Levothyroxine 50mcg",
  "Levothyroxine 100mcg",
  "Prednisone 5mg",
  "Prednisone 10mg",
  "Prednisone 20mg",
  "Furosemide 20mg",
  "Furosemide 40mg",
];
