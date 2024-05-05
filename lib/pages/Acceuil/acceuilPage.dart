import 'package:flutter/material.dart';
import 'package:gestion_celluleeglise/pages/navigationPage/navigationPage.dart';
import 'package:introduction_slider/introduction_slider.dart';


class AcceuilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: IntroductionSlider(
          items: [
            IntroductionSliderItem(
              logo: Image(
                  image: NetworkImage(
                      "https://img.freepik.com/vecteurs-libre/reverie-personnages-au-lieu-travailler_23-2148498570.jpg?t=st=1713801713~exp=1713805313~hmac=2f0dbaa87c9e42cacf7c73d83ab21aa6acc1f299b1cccbfcb8ba2865fcad5920&w=900")),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Solutions for the & Beverage industry",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[700]),
                    ),
                    Text(
                      "Empowering food & beverage businesses with innovative operational and customer engagement solutions.",
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            IntroductionSliderItem(
              logo: Image(
                  image: NetworkImage(
                      "https://img.freepik.com/vecteurs-libre/dans-illustration-concept-bureau_114360-795.jpg?t=st=1713802235~exp=1713805835~hmac=16024c8eca9158b951eda4d3a9eefdaf031324f508e2ff6210a476980f50e34b&w=740")),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Unlock Potential with Our Tools",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue[700]),
                    ),
                    Text(
                      "Empower Your Business Through Customer Engagement and Operational Efficiency ",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            IntroductionSliderItem(
              logo: Image(
                  image: NetworkImage(
                      "https://img.freepik.com/vecteurs-libre/collection-scenes-jour-travail_52683-62035.jpg?t=st=1713801027~exp=1713804627~hmac=3d7de63b8ebe90261f633c483484f2bccd8aa3cf8aec56cefa0c1ae436f4b221&w=740")),
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Captivate  Elevate Efficiency",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue[700]),
                        ),
                        Text('Enhance communication and streamline processes with bulk SMS marketing, and next-level operational solutions.',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
          done: Done(
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ),
                
                child: Text('Bienvenue',style: TextStyle(color: Colors.white),)),
              home: NavigationPage()),
          next: Next(child: Icon(Icons.arrow_forward_ios_outlined)),
          dotIndicator: DotIndicator(),
          back: Back(child: Icon(Icons.arrow_back_ios)),

        ),
      ),
    );
  }
}
