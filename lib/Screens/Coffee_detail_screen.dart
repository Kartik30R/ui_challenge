import 'package:coffee_app/data/coffee_details.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:readmore/readmore.dart';

class CoffeeDetails extends StatefulWidget {
  const CoffeeDetails({super.key, required this.index, required this.category});
  final int index;
  final  category;

  @override
  State<CoffeeDetails> createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  late CoffeeSize selectedSize;
  @override
  void initState() {
    selectedSize = CoffeeSize.M;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        title: const Text(
          'Detail',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            IconlyBroken.heart,
            size: 20,
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: GoogleFonts.sora(
                          fontSize: 14,
                          color: const Color.fromRGBO(155, 155, 155, 1)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '\$${coffeeMenu[widget.index].price}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(198, 124, 78, 1),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 42,
                ),
                Expanded(
                    child: Container(
                  height: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(198, 124, 78, 1)),
                  child: const Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 226,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(coffeeMenu[widget.index].image)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                coffeeMenu[widget.index].category.name,
                style:
                    GoogleFonts.sora(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'with ${coffeeMenu[widget.index].ingredient}',
                style: GoogleFonts.sora(
                  color: const Color.fromRGBO(155, 155, 155, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Icon(
                    IconlyBold.star,
                    size: 24,
                    color: Color.fromRGBO(251, 190, 33, 1),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    coffeeMenu[widget.index].rating,
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text('(${coffeeMenu[widget.index].customer.toString()})'),
                ],
              ),
              const Divider(
                height: 40,
              ),
              Text(
                'Description',
                style:
                    GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              ReadMoreText(
                getDescription(widget.category),
                colorClickableText: const Color.fromRGBO(198, 124, 78, 1),
                lessStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(198, 124, 78, 1),
                    fontSize: 14),
                moreStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(198, 124, 78, 1),
                    fontSize: 14),
                trimLines: 3,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read More ',
                trimExpandedText: 'Show Less',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    color: const Color.fromRGBO(155, 155, 155, 1)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Sized',
                style:
                    GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: CoffeeSize.values
                    .map((e) => Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSize = e;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: selectedSize == e
                                  ? const Color.fromARGB(64, 198, 124, 78)
                                  :null,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: selectedSize == e
                                    ? const Color.fromRGBO(198, 124, 78, 1)
                                    : const Color.fromRGBO(222, 222, 222, 1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                e.name,
                                style: TextStyle(
                                  color: selectedSize == e
                                      ? const Color.fromRGBO(198, 124, 78, 1)
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        )))
                    .toList(),
              ),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
