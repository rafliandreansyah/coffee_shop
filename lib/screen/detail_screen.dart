import 'package:flutter/material.dart';

import '../colors/colors.dart';
import '../model/product.dart' as p;

class DetailScreen extends StatefulWidget {
  final p.Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var _isSaved = false;
  var _isOrder = false;
  var size = p.Size.REGULAR;
  var sugar = 0;

  @override
  void initState() {
    size = widget.product.size;
    super.initState();
  }

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

  Widget sizeSelectionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
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
                    size = isSelect ? p.Size.REGULAR : size;
                  });
                },
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                avatar: Icon(
                  Icons.coffee_rounded,
                  size: 18,
                  color: size == p.Size.REGULAR ? colorPrimary : null,
                ),
                label: const FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'Regular',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: size == p.Size.REGULAR ? true : false,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelect) {
                  setState(() {
                    size = isSelect ? p.Size.MEDIUM : size;
                  });
                },
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                avatar: Icon(
                  Icons.coffee_rounded,
                  size: 18,
                  color: size == p.Size.MEDIUM ? colorPrimary : null,
                ),
                label: const FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'Medium',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: size == p.Size.MEDIUM ? true : false,
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: ChoiceChip(
                onSelected: (isSelect) {
                  setState(() {
                    size = isSelect ? p.Size.LARGE : size;
                  });
                },
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                avatar: Icon(
                  Icons.coffee_rounded,
                  size: 18,
                  color: size == p.Size.LARGE ? colorPrimary : null,
                ),
                label: const FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    'Large',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                selected: size == p.Size.LARGE ? true : false,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget sugarSelectionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
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
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: const FittedBox(
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
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: const FittedBox(
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
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: const FittedBox(
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
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: const FittedBox(
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
                  setState(() {
                    sugar = isSelection ? 2 : sugar;
                  });
                },
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 6.0,
                ),
                label: const FittedBox(
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
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        widget.product.productImg,
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
                                    color:
                                        _isSaved ? Colors.pink[200] : colorGrey,
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
                                        widget.product.productName,
                                        style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      if (_isSaved)
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4.0,
                                            horizontal: 6.0,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                    'Rp ${widget.product.price.toStringAsFixed(0)}',
                                    style: const TextStyle(
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
                          widget.product.productDescription,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: colorGrey,
                          ),
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        sizeSelectionWidget(),
                        const SizedBox(
                          height: 24.0,
                        ),
                        sugarSelectionWidget(),
                        const SizedBox(
                          height: 24.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                _isOrder ? Colors.green[200] : colorPrimary,
                            minimumSize: const Size.fromHeight(40),
                          ),
                          onPressed: !_isOrder ? _order : () {},
                          child: Text(_isOrder ? 'Ordered' : 'Order'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
