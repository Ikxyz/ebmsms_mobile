import '../../global.dart';

String? selectedItem;
String? selectedItem2;

class KindOfBusiness extends StatefulWidget {
  static const String route = "KindOfBusiness";
  KindOfBusiness({Key? key}) : super(key: key);

  @override
  State<KindOfBusiness> createState() => _KindOfBusinessState();
}

class _KindOfBusinessState extends State<KindOfBusiness> {
  // String? selectedItem;
  final items = [
    'General services/Artisans',
    'Specialised services',
    'Agriculture (crop and livestock)',
    'Transportation/logistics',
    'Trading',
    'Manufacturing'
  ];

  final general = [
    'Others',
    'Locksmiths',
    'Tailoring',
    'Technician/Equipment Services',
    'Vulcanizer',
    'Welding',
    'Capentry',
    'Food Services',
    'Shoes/Cobbler Services',
    'Courier Services',
    'Dry Cleaning/Laundry',
    'Electrician and Electronics Repair',
    'Entertainment',
    'Esusu (Ajo) Collector',
    'Event Planner',
    'Goldsmiths',
    'Make-Up Artists',
    'Money Lending Services',
    'Painter',
    'Photographer',
    'Plumber',
    'Printing/Publishing',
    'Business Center',
    'Property Development',
    'Bead Makers',
    'Bricklaying',
    'Butcher',
    'Auto Mechanic',
    'Barbing/Hairdressing'
  ];

  final specialised = [
    'Others',
    'Architecture and Engineering',
    'Business Consultant',
    'Contracting',
    'Data Processing & Database Activities',
    'Educational Services',
    'Financial Services',
    'Hardware Consultancy',
    'Hotels and Hospitality',
    'Human Resources, Recruitment and Training',
    'Information Technology ',
    'Accounting & Auditing',
    'Legal Services',
    'Marketing Strategist',
    'Media (Others)',
    'Media (Print)',
    'Medical Services',
    'PR Consulting',
    'Research and Development',
    'Telecommunication',
    'Insurance Services'
  ];
  final agric = [
    ' Livestock: Leather',
    ' Crop: Wheat',
    ' Crop: Vegetables',
    ' Crop: Tigernut',
    ' Crop: Shea',
    ' Crop: Fruits',
    ' Agro services: equipment sales',
    ' Agro services: equipment renters',
    ' Agro services: equipment operators',
    ' Agro services: vertinary ',
    ' Livestock: snail',
    ' Livestock: rabbit',
    ' crop: sugar cane',
    ' Crop: Other',
    ' Livestock: Poultry',
    ' Livestock: Cattle',
    ' Livestock: Goat/Ram',
    ' Livestock: Fish/Seafood',
    ' Livestock: Piggery',
    ' Crop: Rice',
    ' Food processing',
    ' Agro supplies and chemicals',
    ' Agric Financing',
    ' Agric Transportation',
    ' Agric Warehousing',
    ' Livestock: Other',
    ' Crop: Maize',
    ' Crop: Yam',
    ' Crop: Cassava',
    ' Crop: Cocoa',
    ' Crop: Beans',
    ' Crop: Groundnuts',
    ' Crop: Soybeans',
    ' Crop: Oil palm/Palm kernel',
    ' Crop: Millet',
    ' Crop: Seasame seed',
    ' Crop: Sorghum',
    ' Crop: Tomato'
  ];

  final transport = [
    ' Bus Transportation ',
    ' Dispatch Riders ',
    ' General Logistics/Haulage ',
    ' Keke/Tricycle Transportation ',
    ' Okada/Motorcycle Transportation ',
    ' Taxi Transportation ',
    ' Truck Transportation ',
    ' Wheelbarrow and Cart pushers ',
    ' Others '
  ];
  final trade = [
    ' Farm input ',
    ' Farm machinery ',
    ' Building Materials ',
    ' Cables and Wires ',
    ' Chemicals ',
    ' Clothing and Fashion Accessories (Jewelry, etc) ',
    ' Computers and Accessories ',
    ' Drinks (Alcoholic and Non-Alcoholic) ',
    ' Electronics and Electrical Appliances ',
    ' Foams and Mattresses ',
    ' Food Items and Processed Food ',
    ' Footwear ',
    ' Forex Trading ',
    ' Furniture ',
    ' Oil (Edible Cooking) ',
    ' Aluminium, Metal, Iron & Steel ',
    ' Personal Care Products (Cream, Cosmetics, Soap, Sanitary Wear) ',
    ' Petroleum Products (Petrol, Diesel, Gas, Kerosine, Engine, Brake) ',
    ' Pharmaceuticals (Drugs, etc) ',
    ' Plastics & Packaging ',
    ' Shoes and Bags ',
    ' Stationery (Books, Paper, Pens, Writing Products) ',
    ' Supermarket ',
    ' Telco Services/Call Centre/Airtime ',
    ' Textiles ',
    ' Tiles & Marbles ',
    ' Tyres ',
    ' Wood ',
    ' Paint ',
    ' Automobile (sales, spare parts, scrap) '
  ];

  final manufacturing = [
    ' Aluminium, Metal, Iron & Steel ',
    ' Automobile ',
    ' Drinks ',
    ' Bakery and Confectioneries ',
    ' Building Materials ',
    ' Cables and Wires ',
    ' Chemicals ',
    ' Computers & Accessories ',
    ' Detergents and Cleaning Agents ',
    ' Domestic Gas ',
    ' Electronics and Electrical Appliances ',
    ' Clothing and Fashion Accessories ',
    ' Foams and Mattresses ',
    ' Food Manufacturing and Processing ',
    ' Footwear ',
    ' Furniture ',
    ' Leather and Related Materials ',
    ' Oil (Edible Cooking) ',
    ' Paint ',
    ' Personal Care Products ',
    ' Petroleum Products ',
    ' Pharmaceuticals',
    ' Plastics & Packaging ',
    ' Shoes and Bags ',
    ' Stationery ',
    ' Textiles ',
    ' Tiles and Marbles ',
    ' Tyres and Rubber ',
    ' Wood Planting & Processing '
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text('choose your kind of business'),
              ),
              style: TextStyle(color: Colors.black),
              value: selectedItem,
              items: items.map((itemy) {
                return DropdownMenuItem<String>(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(itemy),
                  ),
                  value: itemy,
                );
              }).toList(),
              onChanged: (item) {
                setState(() {
                  selectedItem = item!;
                });
                print(selectedItem);
                print('previous is $selectedItem , next is $item');
              },
            ),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              selectedItem != null
                  ? Text('WHAT KIND OF $selectedItem')
                  : Text('WHAT KIND OF -- --'),
              SizedBox(
                height: 5,
              ),
              dropDownCategory()
            ],
          ),
        )
      ],
    );
  }

  Widget dropDownCategory() {
    if (selectedItem == 'General services/Artisans') {
      return Container(
        height: 40,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('choose industry subtype'),
            ),
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            value: selectedItem2,
            items: general.map((itemmy) {
              return DropdownMenuItem<String>(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(itemmy),
                ),
                value: itemmy,
              );
            }).toList(),
            onChanged: (item2) {
              setState(() {
                selectedItem2 = item2!;
              });
              print(selectedItem);
              print('previous is $selectedItem , next is $item2');
            },
          ),
        ),
      );
    } else if (selectedItem == 'Specialised services') {
      return Container(
        height: 40,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('choose industry subtype'),
            ),
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            value: selectedItem2,
            items: specialised.map((itemmy) {
              return DropdownMenuItem<String>(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(itemmy),
                ),
                value: itemmy,
              );
            }).toList(),
            onChanged: (item2) {
              setState(() {
                selectedItem2 = item2!;
              });
              print(selectedItem);
              print('previous is $selectedItem , next is $item2');
            },
          ),
        ),
      );
    } else if (selectedItem == 'Agriculture (crop and livestock)') {
      return Container(
        height: 40,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('choose industry subtype'),
            ),
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            value: selectedItem2,
            items: agric.map((itemmy) {
              return DropdownMenuItem<String>(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(itemmy),
                ),
                value: itemmy,
              );
            }).toList(),
            onChanged: (item2) {
              setState(() {
                selectedItem2 = item2!;
              });
              print(selectedItem);
              print('previous is $selectedItem , next is $item2');
            },
          ),
        ),
      );
    } else if (selectedItem == 'Transportation/logistics') {
      return Container(
        height: 40,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('choose industry subtype'),
            ),
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            value: selectedItem2,
            items: transport.map((itemmy) {
              return DropdownMenuItem<String>(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(itemmy),
                ),
                value: itemmy,
              );
            }).toList(),
            onChanged: (item2) {
              setState(() {
                selectedItem2 = item2!;
              });
              print(selectedItem);
              print('previous is $selectedItem , next is $item2');
            },
          ),
        ),
      );
    } else if (selectedItem == 'Trading') {
      return Container(
        height: 40,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('choose industry subtype'),
            ),
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            value: selectedItem2,
            items: trade.map((itemmy) {
              return DropdownMenuItem<String>(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(itemmy),
                ),
                value: itemmy,
              );
            }).toList(),
            onChanged: (item2) {
              setState(() {
                selectedItem2 = item2!;
              });
              print(selectedItem);
              print('previous is $selectedItem , next is $item2');
            },
          ),
        ),
      );
    } else if (selectedItem == 'Manufacturing') {
      return Container(
        height: 40,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('choose industry subtype'),
            ),
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
            value: selectedItem2,
            items: manufacturing.map((itemmy) {
              return DropdownMenuItem<String>(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(itemmy),
                ),
                value: itemmy,
              );
            }).toList(),
            onChanged: (item2) {
              setState(() {
                selectedItem2 = item2!;
              });
              print(selectedItem);
              print('previous is $selectedItem , next is $item2');
            },
          ),
        ),
      );
    }
    return Container(
      height: 40,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
    );
  }
}

class GenderOfOwner extends StatefulWidget {
  const GenderOfOwner({Key? key}) : super(key: key);

  @override
  State<GenderOfOwner> createState() => _GenderOfOwnerState();
}

class _GenderOfOwnerState extends State<GenderOfOwner> {
  String? selectedGender;
  final gender = [
    'female',
    'male',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text('choose your status'),
          ),
          style: TextStyle(color: Colors.black),
          value: selectedGender,
          items: gender.map((itemy) {
            return DropdownMenuItem<String>(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(itemy),
              ),
              value: itemy,
            );
          }).toList(),
          onChanged: (item) {
            setState(() {
              selectedGender = item!;
            });
          },
        ),
      ),
    );
  }
}

class LocalGovernmentList extends StatefulWidget {
  const LocalGovernmentList({Key? key}) : super(key: key);

  @override
  State<LocalGovernmentList> createState() => _LocalGovernmentListState();
}

class _LocalGovernmentListState extends State<LocalGovernmentList> {
  String? selectedLocalGovernment;
  final localGovernment = [
    ' Akoko-Edo ',
    ' Egor ',
    ' Esan Central ',
    ' Esan North-East ',
    ' Esan South-East ',
    ' Esan West ',
    ' Etsako Central ',
    ' Etsako East ',
    ' Etsako West ',
    ' Igueben ',
    ' Ikpoba Okha ',
    ' Oredo ',
    ' Orhionmwon ',
    ' Ovia North-East ',
    ' Ovia South-West ',
    ' Owan East ',
    ' Owan West ',
    ' Uhunmwonde '
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: const Color.fromRGBO(196, 196, 196, 1), width: 1)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text('Choose LGA'),
          ),
          style: TextStyle(color: Colors.black),
          value: selectedLocalGovernment,
          items: localGovernment.map((itemy) {
            return DropdownMenuItem<String>(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(itemy),
              ),
              value: itemy,
            );
          }).toList(),
          onChanged: (item) {
            setState(() {
              selectedLocalGovernment = item!;
            });
          },
        ),
      ),
    );
  }
}
