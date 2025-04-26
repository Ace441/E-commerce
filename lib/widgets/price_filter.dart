import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({super.key});

  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return PriceRangeFilter();
  }
}


class PriceRangeFilter extends StatefulWidget {
  const PriceRangeFilter({super.key});

  @override
  _PriceRangeFilterState createState() => _PriceRangeFilterState();
}

class _PriceRangeFilterState extends State<PriceRangeFilter> {
  final double _minPrice = 0;
  final double _maxPrice = 200; // Example max price, adjust as needed

  double _currentMinPrice = 0;
  double _currentMaxPrice = 200;

  @override
  void initState() {
    super.initState();
    _currentMinPrice = _minPrice;
    _currentMaxPrice = _maxPrice;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:size.height*0.03),
      height:size.height*0.13,
      width: size.width*0.95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width*0.03),
          boxShadow: [
            BoxShadow(
                offset: Offset(-4, -4),
                blurRadius: 12,
                color: Color.fromRGBO(181, 181, 181, 1.0)),
            BoxShadow(
                offset: Offset(4, 4),
                blurRadius: 12,
                color: Color.fromRGBO(232, 232, 232, 1.0)),
          ],
          color:Color.fromRGBO(255, 255, 255, 1.0)
      ),
      child: Column(
        children: [
          Expanded(child: Container()),
          Text(
            'Price Range:\$${_currentMinPrice.toStringAsFixed(0)} - \$${_currentMaxPrice.toStringAsFixed(0)}',
            style: TextStyle(fontSize:size.height*0.0171, fontWeight: FontWeight.bold,color:Color.fromRGBO(
                168, 168, 168, 1.0)),
          ),
          SizedBox(
            height:size.height*0.04,
            child: RangeSlider(
              activeColor: Colors.redAccent,
              values: RangeValues(
                _currentMinPrice,
                _currentMaxPrice,
              ),
              min: _minPrice,
              max: _maxPrice,
              divisions: 500, // Adjust this number for more or less granularity
              labels: RangeLabels(
                '\$${_currentMinPrice.toStringAsFixed(0)}',
                '\$${_currentMaxPrice.toStringAsFixed(0)}',
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentMinPrice = values.start;
                  _currentMaxPrice = values.end;
                });
              },
            ),
          ),
          SizedBox(
            height:size.height*0.035,
            child: ElevatedButton(
              onPressed: () {
                // Handle the filter action, e.g. filter items based on _currentMinPrice and _currentMaxPrice
                print('Filtering items from \$${_currentMinPrice.toStringAsFixed(0)} to \$${_currentMaxPrice.toStringAsFixed(0)}');
                // Implement your filtering logic here
              },
              child: Text('Apply Filter',style:TextStyle(color:Colors.redAccent),),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}

