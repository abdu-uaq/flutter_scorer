import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Scorecard extends StatefulWidget {
	Scorecard({Key key, this.teamName, this.nameColour, this.cardColour}) : super(key: key);

	final String teamName;
	final Color nameColour;
	final Color cardColour;

	@override
	_ScorecardState createState() => _ScorecardState();
}

class _ScorecardState extends State<Scorecard> {
	int _counter = 0;

	void _incrementCounter() {
		setState(() {
			_counter++;
		});
	}

	void _resetCounter() {
		setState(() {
			_counter = 0;
		});
	}

	@override
	Widget build(BuildContext context) {
		return Expanded(
			child: InkWell(
				onTap: () {
					_incrementCounter();
				},
				onLongPress: () {
					_resetCounter();
				},
				child: Card(
					clipBehavior: Clip.antiAlias,
					margin: EdgeInsets.all(32.0),
					color: widget.cardColour,
					shape: RoundedRectangleBorder(
						borderRadius: BorderRadius.circular(15)
					),
					child: Row(
						children: <Widget>[
							Expanded(
								child: Column(
									children: <Widget>[
										Container(
											color: widget.nameColour,
											height: 50,
											child: SizedBox.expand(
												child: Center(
													child: Text(
														widget.teamName
													)
												),
											),
										),
										Expanded(
											child: Center(
												child: Text(
													_counter.toString()
												),
											),
										)
									],
								)
							)
						],
					),
				),
			)
		);
	}
}