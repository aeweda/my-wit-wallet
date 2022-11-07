import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:witnet_wallet/screens/dashboard/api_dashboard.dart';
import 'package:witnet_wallet/shared/api_database.dart';
import 'package:witnet_wallet/shared/locator.dart';
import 'package:witnet_wallet/util/storage/database/wallet.dart';

import 'package:witnet_wallet/util/storage/database/wallet_storage.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

final defaultWallet = Wallet(
    id: '',
    name: '',
    description: '',
    xprv: '',
    externalXpub: '',
    internalXpub: '',
    externalAccounts: {},
    internalAccounts: {},
    lastSynced: -1);

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  // dbWallet: DbWallet(
  //               externalXpub: null,
  //               internalXpub: null,
  //               xprv: null,
  //               walletName: null,
  //               lastSynced: -1,
  //               walletDescription: '',
  //               externalAccounts: {},
  //               internalAccounts: {}),
  DashboardBloc()
      : super(
          DashboardState(
              currentWallet: defaultWallet, status: DashboardStatus.Loading),
        ) {
    on<DashboardLoadEvent>(_dashboardLoadEvent);
    on<DashboardUpdateWalletEvent>(_dashboardUpdateWallet);
    on<DashboardInitEvent>(_dashboardInitEvent);
    on<DashboardUpdateEvent>(_dashboardUpdateStatusEvent);
    on<DashboardResetEvent>(_dashboardResetEvent);
  }
  get initialState => DashboardState(
      currentWallet: defaultWallet, status: DashboardStatus.Ready);

  Future<void> _dashboardLoadEvent(
    DashboardLoadEvent event,
    Emitter<DashboardState> emit,
  ) async {
    ApiDashboard apiDashboard = Locator.instance<ApiDashboard>();
    emit(DashboardState(
        currentWallet: apiDashboard.currentWallet!,
        status: DashboardStatus.Ready));
  }

  Future<void> _dashboardInitEvent(
      DashboardInitEvent event, Emitter<DashboardState> emit) async {
    await Future.delayed(Duration(seconds: 4));
    ApiDashboard apiDashboard = Locator.instance<ApiDashboard>();
    emit(DashboardState(
        currentWallet: apiDashboard.currentWallet!,
        status: DashboardStatus.Loading));
  }

  void _dashboardUpdateWallet(
      DashboardUpdateWalletEvent event, Emitter<DashboardState> emit) {
    emit(DashboardState(
        currentWallet: event.currentWallet!, status: DashboardStatus.Loading));
  }

  Future<void> _dashboardUpdateStatusEvent(
      DashboardUpdateEvent event, Emitter<DashboardState> emit) async {
    ApiDashboard apiDashboard = Locator.instance<ApiDashboard>();
    emit(DashboardState(
        currentWallet: apiDashboard.currentWallet!,
        status: DashboardStatus.Loading));
  }

  void _dashboardResetEvent(
      DashboardResetEvent event, Emitter<DashboardState> emit) {}
}
