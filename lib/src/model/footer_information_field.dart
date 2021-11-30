class InformationField {
  String title;
  List<String> value;

  InformationField({required this.title, required this.value});
}

InformationField addressInformationField = InformationField(
  title: 'Address',
  value: [
    'HMU Library, Estavromenos, 71410, Heraklion Crete',
  ],
);

InformationField emailInformationField = InformationField(
  title: 'Email',
  value: [
    'libher@hmu.gr',
  ],
);

InformationField telephoneInformationField = InformationField(
  title: 'Telephone',
  value: [
    '+30 2810 379330',
    '+30 2810 379332',
  ],
);

InformationField workingHoursInformationField = InformationField(
  title: 'Working Hours',
  value: [
    'Monday - Tuesday: 08:00 - 15:30',
    'Wednesday - Friday: 08:00 - 19:00',
  ],
);
