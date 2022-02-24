import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/ui/series_bloc/series_bloc.dart';

class SeriesPage extends StatefulWidget {
  SeriesPage({Key? key}) : super(key: key);

  @override
  State<SeriesPage> createState() => _SeriesPageState();
}

class _SeriesPageState extends State<SeriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<SeriesBloc, SerieState>(builder: (_, state) {
        return state.existState ? listViewSeries() : Container();
      }),
    );
  }

  Widget listViewSeries() {
    return Container();
  }

  Widget loading() {
    return Container();
  }
}
