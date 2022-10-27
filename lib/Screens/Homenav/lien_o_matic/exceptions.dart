import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:flutter/material.dart';

class exceptions extends StatefulWidget {
  const exceptions({super.key});

  @override
  State<exceptions> createState() => _exceptionsState();
}

class _exceptionsState extends State<exceptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktiledarkcolor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 16,
        ),
        title: Text(
          "Exceptions",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: w * 0.03, right: w * 0.03, top: w * 0.065),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Exceptions",
                style: textScroll.copyWith(color: kblack),
                // textAlign: TextAlign.start,
              ),
              SizedBox(
                height: h * 0.02,
              ),
              const Text(
                "•	This information is not and should not be considered legal advice, so consult your own lawyer as laws may have changed or be interpreted differently depending on the facts of your specific situation\n•	The Lien-O-Matic applies to Florida law only (Miller Act applies nationally) and not every rule or exception is listed\n•	Deadlines are typically the outside most deadlines and documents should be served or recorded earlier, including possibly during the progress of the work\n•	Deadlines landing on weekends and legal holidays typically roll to the next business day \n•	Notices to Owner, Notices to Contractor, Notices of Nonpayment and Claims of Lien must be the statutory forms and service of these documents may be extended or shortened by operation of law or the acts or omissions of various parties to the contraction process\n•	All reference to “payment bonds” means timely and properly recorded unconditional statutory payment bonds, not conditional, transfer, subcontractor, or common law bonds\n•	The time to serve documents or bring a lawsuit exclusively for retainage may extend beyond that which is listed	\n•	Lien rights for tenant improvements may only extend to the leasehold interest, not the fee simple interest in the property	\n•	Lien rights and rules for subdivision improvements are not covered by the Lien-O-Matic\n•	First work or delivery of materials typically means the first furnishing of labor or materials to the project site while under contract\n•	Last work or delivery of materials typically means the final furnishing of substantive contract or approved change order labor or materials, excluding punch list, corrective or warranty work\n•	Last work for rental equipment typically means when it was last on the site available for use\n•	“Serve” typically means actual receipt by certified mail to those listed on the Notice of Commencement, where applicable, within the applicable time periods (use of a “mail log” may alter same)\n•	Even when a Notice to Owner, Notice to Contractor or Notice of Nonpayment are not required, they are strongly recommended",
                style: textGrey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
