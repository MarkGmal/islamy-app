class OnBoardingModel {
  final String title;
  final String body;
  final String image;

  OnBoardingModel({
    required this.title,
    required this.body,
    required this.image,
  });

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      title: 'Welcome To Islmi App',
      body: '',
      image: 'assets/onBoarding_imges/1.png',
    ),
    OnBoardingModel(
      title: 'Welcome To Islami',
      body: 'We Are Very Excited To Have You In Our Community',
      image: 'assets/onBoarding_imges/2.png',
    ),
    OnBoardingModel(
      title: 'Reading the Quran',
      body: 'We Are Very Excited To Have You In Our Community',
      image: 'assets/onBoarding_imges/3.png',
    ),
    OnBoardingModel(
      title: 'Bearish',
      body: 'Praise the name of your Lord, the Most High',
      image: 'assets/onBoarding_imges/4.png',
    ),
    OnBoardingModel(
      title: 'Holy Quran Radio',
      body:
          'You can listen to the Holy Quran Radio through the application for free and easily',
      image: 'assets/onBoarding_imges/5.png',
    ),
  ];
}
