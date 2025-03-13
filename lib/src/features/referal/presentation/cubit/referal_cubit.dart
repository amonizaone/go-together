import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'referal_state.dart';

class ReferalCubit extends Cubit<ReferalState> {
  ReferalCubit() : super(ReferalInitial());
}
