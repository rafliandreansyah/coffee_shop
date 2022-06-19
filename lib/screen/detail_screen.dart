import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../model/product.dart' as P;

class DetailScreen extends StatefulWidget {
  final P.Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var _isSaved = false;
  var _isOrder = false;
  var size = P.Size.REGULAR;
  var sugar = 0;

  void _saveToFavorite() {
    setState(() {
      _isSaved = !_isSaved;
    });
  }

  void _order() {
    setState(() {
      _isOrder = !_isOrder;
    });
  }

  Widget SizeSelectionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelect) {
                  setState(() {
                    size = isSelect ? P.Size.REGULAR : size;
                  });
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                avatar: Icon(
                  Icons.coffee_rounded,
                  size: 18,
                  color: size == P.Size.REGULAR ? colorPrimary : null,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'Regular',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: size == P.Size.REGULAR ? true : false,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelect) {
                  setState(() {
                    size = isSelect ? P.Size.MEDIUM : size;
                  });
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                avatar: Icon(
                  Icons.coffee_rounded,
                  size: 18,
                  color: size == P.Size.MEDIUM ? colorPrimary : null,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'Medium',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: size == P.Size.MEDIUM ? true : false,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelect) {
                  setState(() {
                    size = isSelect ? P.Size.LARGE : size;
                  });
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                avatar: Icon(
                  Icons.coffee_rounded,
                  size: 18,
                  color: size == P.Size.LARGE ? colorPrimary : null,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'Large',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: size == P.Size.LARGE ? true : false,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget SugarSelectionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sugar',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelection) => {
                  setState(() {
                    sugar = isSelection ? -2 : sugar;
                  })
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    '-2',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: sugar == -2 ? true : false,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelection) => {
                  setState(() {
                    sugar = isSelection ? -1 : sugar;
                  })
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    '-1',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: sugar == -1 ? true : false,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelection) => {
                  setState(() {
                    sugar = isSelection ? 0 : sugar;
                  })
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: sugar == 0 ? true : false,
              ),
            ),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelection) => {
                  setState(() {
                    sugar = isSelection ? 1 : sugar;
                  })
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    '+1',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: sugar == 1 ? true : false,
              ),
            ),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelection) {
                  print('slection: $isSelection');
                },
                padding: EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    '+2',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: sugar == 2 ? true : false,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'images/espresso.jpg',
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: colorLightGrey,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 7.0,
                            ),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: colorGrey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: colorLightGrey,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: IconButton(
                              onPressed: _saveToFavorite,
                              icon: Icon(
                                _isSaved
                                    ? Icons.favorite
                                    : Icons.favorite_border_rounded,
                                color: _isSaved ? Colors.pink[200] : colorGrey,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 220,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      child: Card(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        elevation: 0,
                        margin: EdgeInsets.zero,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 26.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cappucino',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  if (_isSaved)
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 4.0,
                                        horizontal: 6.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.green[100],
                                      ),
                                      child: const Text(
                                        'Saved',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                'Rp 25000',
                                style: TextStyle(
                                  color: colorPrimary,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: colorGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    SizeSelectionWidget(),
                    const SizedBox(
                      height: 24.0,
                    ),
                    SugarSelectionWidget(),
                    const SizedBox(
                      height: 24.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: _isOrder ? Colors.green[200] : colorPrimary,
                        minimumSize: Size.fromHeight(40),
                      ),
                      onPressed: _order,
                      child: Text(_isOrder ? 'Ordered' : 'Order'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
