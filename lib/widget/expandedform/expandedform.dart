// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import '../../global.dart';


class ExpandedForm extends StatefulWidget {
  const ExpandedForm({Key? key}) : super(key: key);

  @override
  _ExpandedFormState createState() => _ExpandedFormState();
}

class _ExpandedFormState extends State<ExpandedForm> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormContainer(
                height: 40,
                width: 300,
                text: 'First Name',
                child: 'Johnson',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Middle Name',
                child: 'Akin',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Last Name',
                child: 'Ojo',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FormContainer(
                    height: 35,
                    width: 100,
                    text: 'Title',
                    child: 'Mr',
                  ),
                  FormContainer(
                    height: 35,
                    width: 100,
                    text: 'Marital Status',
                    child: 'Married',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // FormContainer(height: 35, width:  100, text: 'Gender',),
                  FormContainer(
                    height: 35,
                    width: 100,
                    text: 'Gender',
                    child: 'Mr',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormContainer(
                    height: 35,
                    width: 100,
                    text: 'Date of birth',
                    child: '25/12/1967',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Bank Verifcation Number (BVN)',
                child: '1000231233',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Email',
                child: 'abcxyz@gmail.com',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Phone Number',
                child: '08133333333',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'City / Town / Village',
                child: 'Uselu',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Street Address 2',
                child: '30 osagie street',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'City',
                child: 'Benin',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'State of Origin',
                child: 'Edo State',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Local Government of Origin',
                child: 'Egor',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'State of Residence',
                child: 'Edo',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Local Government of Residence',
                child: 'Oredo',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Ward',
                child: '18',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormContainer(
                height: 40,
                width: 300,
                text: 'Postal/ Zip Code',
                child: '22203',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value!;
                      });
                    },
                  ),
                  Text('click box to verify')
                ],
              ),
            ]),
      ),
    );
  }
}

class NewContactExpandedForm extends StatefulWidget {
  const NewContactExpandedForm({Key? key}) : super(key: key);

  @override
  _NewContactExpandedFormState createState() => _NewContactExpandedFormState();
}

class _NewContactExpandedFormState extends State<NewContactExpandedForm> {
  bool valuefirst = false;
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'First Name',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Middle Name',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Last Name',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FormContainerEditing(
                    height: 35,
                    width: 100,
                    text: 'Title',
                  ),
                  FormContainerEditing(
                    height: 35,
                    width: 100,
                    text: 'Marital Status',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // FormContainer(height: 35, width:  100, text: 'Gender',),
                  FormContainerEditing(
                    height: 35,
                    width: 100,
                    text: 'Gender',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FormContainerEditing(
                    height: 35,
                    width: 100,
                    text: 'Date of birth',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Bank Verifcation Number (BVN)',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Phone Number',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'City / Town / Village',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Street Address 2',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'City',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'State of Origin',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Local Government of Origin',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'State of Residence',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Local Government of Residence',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Ward',
              ),
              const SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Postal/ Zip Code',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value!;
                      });
                    },
                  ),
                  Text('click box to verify')
                ],
              ),
            ]),
      ),
    );
  }
}

class FormContainer extends StatelessWidget {
  const FormContainer(
      {Key? key,
      required this.width,
      required this.height,
      required this.text,
      required this.child})
      : super(key: key);
  final double width;
  final double height;
  final String text;
  final String child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: 10),
        Container(
          width: width,
          height: height,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(child),
          ),
        ),
      ],
    );
  }
}

class FormContainerEditing extends StatelessWidget {
  const FormContainerEditing(
      {Key? key, required this.width, required this.height, required this.text})
      : super(key: key);
  final double width;
  final double height;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(height: 10),
        Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: TextFormField(
                  decoration: InputDecoration(
                border: InputBorder.none,
              )),
            )),
      ],
    );
  }
}

class BusinessExpandedForm extends StatefulWidget {
  const BusinessExpandedForm({Key? key}) : super(key: key);

  @override
  _BusinessExpandedFormState createState() => _BusinessExpandedFormState();
}

class _BusinessExpandedFormState extends State<BusinessExpandedForm> {
  bool valuefirst = false;
  TextEditingController businessSector = TextEditingController();
  TextEditingController yearsOfOperation = TextEditingController();
  TextEditingController annualTurnOver = TextEditingController();
  TextEditingController amountRequested = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Years of Business Operation',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Business Sector',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Annual Turnover',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Amount Requested',
              ),
              SizedBox(
                height: 10,
              ),
              // FormContainerEditing(
              //   height: 40,
              //   width: 300,
              //   text: 'Business Plan (Optional) minimum size: 2mb - (PDF,DOC)',
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 120,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Upload file',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.green,
                    value: valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        valuefirst = value!;
                      });
                    },
                  ),
                  Text('click box to verify')
                ],
              ),
            ]),
      ),
    );
  }
}

class BusinessExpandedFormRegister extends StatefulWidget {
  const BusinessExpandedFormRegister({Key? key}) : super(key: key);

  @override
  _BusinessExpandedFormRegisterState createState() =>
      _BusinessExpandedFormRegisterState();
}

class _BusinessExpandedFormRegisterState
    extends State<BusinessExpandedFormRegister> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormContainer(
                height: 40,
                width: 300,
                text: 'Years of Business Operation',
                child: '5',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainer(
                height: 40,
                width: 300,
                text: 'Business Sector',
                child: 'Agriculture',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainer(
                height: 40,
                width: 300,
                text: 'Annual Turnover',
                child: '4500',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainer(
                height: 40,
                width: 300,
                text: 'Amount Requested',
                child: '2000',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainer(
                height: 40,
                width: 300,
                text: 'Business Plan (Optional) minimum size: 2mb - (PDF,DOC)',
                child: 'my_businessPlan.pdf',
              ),
              SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}

class BusinessExpandedFormNew extends StatefulWidget {
  const BusinessExpandedFormNew({Key? key}) : super(key: key);

  @override
  _BusinessExpandedFormNewState createState() =>
      _BusinessExpandedFormNewState();
}

class _BusinessExpandedFormNewState extends State<BusinessExpandedFormNew> {
  TextEditingController businessSector = TextEditingController();
  TextEditingController annualTurnOver = TextEditingController();
  TextEditingController amountRequested = TextEditingController();
  TextEditingController businessPlan = TextEditingController();
  TextEditingController yearsOfOperation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Years of Business Operation',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Business Sector',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Annual Turnover',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Amount Requested',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Business Plan (Optional) minimum size: 2mb - (PDF,DOC)',
              ),
              SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 20, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                """By checking this box user agrees to to the terms and condition of the grant/loan and 
also agrees to share all application information with MOBD, MalPay and PayStack"""),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: Colors.green,
                  value: valuefirst,
                  onChanged: (bool? value) {
                    setState(() {
                      valuefirst = value!;
                    });
                  },
                ),
                Text('I accept'),
              ],
            ),
            SizedBox(height: 20),
            Center(
                child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(AgentCreateDashboard.route);
              },
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(0, 223, 51, 1),
                        Color.fromRGBO(70, 167, 0, 1),
                      ],
                      // stops: [0.0, 1.0],
                      // begin: FractionalOffset.topCenter,
                      // end: FractionalOffset.bottomCenter,
                      // tileMode: TileMode.repeated
                    )),
                child: Text(
                  'Apply',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class RegisterExpandedForm extends StatefulWidget {
  const RegisterExpandedForm({Key? key}) : super(key: key);

  @override
  _RegisterExpandedFormState createState() => _RegisterExpandedFormState();
}

class _RegisterExpandedFormState extends State<RegisterExpandedForm> {
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'First Name',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Last Name',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Username',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Email',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Password',
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerEditing(
                height: 40,
                width: 300,
                text: 'Confirm Password',
              ),
              SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}
