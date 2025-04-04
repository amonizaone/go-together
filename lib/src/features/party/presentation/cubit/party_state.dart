part of 'party_cubit.dart';

abstract class PartyState extends Equatable {
  const PartyState();

  @override
  List<Object> get props => [];
}

class PartyInitial extends PartyState {}

// loaded data and failed


// loading
class PartyLoading extends PartyState {}

class PartyLoaded extends PartyState {
  final List<Activity> parties;

  const PartyLoaded(this.parties);

  @override
  List<Object> get props => [parties];
}

// loading data and failed
class PartyError extends PartyState {
  final String message;

  const PartyError(this.message);

  @override
  List<Object> get props => [message];
}
