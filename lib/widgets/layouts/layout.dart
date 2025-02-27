import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_wit_wallet/bloc/explorer/explorer_bloc.dart';
import 'package:my_wit_wallet/bloc/transactions/value_transfer/vtt_create/vtt_create_bloc.dart';
import 'package:my_wit_wallet/widgets/snack_bars.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:my_wit_wallet/shared/api_database.dart';
import 'package:my_wit_wallet/shared/locator.dart';
import 'package:my_wit_wallet/theme/colors.dart';
import 'package:my_wit_wallet/widgets/identicon.dart';
import 'package:my_wit_wallet/widgets/layouts/headerLayout.dart';
import 'package:my_wit_wallet/theme/extended_theme.dart';
import 'package:my_wit_wallet/theme/wallet_theme.dart';

final panelController = PanelController();

class Layout extends StatefulWidget {
  final ScrollController? scrollController;
  final List<Widget> widgetList;
  final AppBar? appBar;
  final List<Widget> actions;
  final List<Widget> navigationActions;
  final Widget? slidingPanel;
  final Widget? dashboardActions;

  const Layout({
    required this.widgetList,
    required this.actions,
    required this.navigationActions,
    this.dashboardActions,
    this.slidingPanel,
    this.appBar,
    this.scrollController,
  });

  @override
  LayoutState createState() => LayoutState();
}

class LayoutState extends State<Layout> with TickerProviderStateMixin {
  var isPanelClose;
  ScrollController defaultScrollController =
      ScrollController(keepScrollOffset: false);

  BlocListener<VTTCreateBloc, VTTCreateState> _vttListener(Widget child) {
    final theme = Theme.of(context);
    final extendedTheme = theme.extension<ExtendedTheme>()!;
    return BlocListener<VTTCreateBloc, VTTCreateState>(
      listenWhen: (previousState, currentState) {
        if (previousState.vttCreateStatus == VTTCreateStatus.exception &&
            currentState.vttCreateStatus != VTTCreateStatus.exception) {
          ScaffoldMessenger.of(context).clearSnackBars();
          if (currentState.vttCreateStatus != VTTCreateStatus.initial) {
            ScaffoldMessenger.of(context)
                .showSnackBar(buildExplorerConnectionSnackbar(
              theme,
              'Connection reestablished!',
              extendedTheme.txValuePositiveColor,
              () => {
                if (mounted)
                  {ScaffoldMessenger.of(context).hideCurrentMaterialBanner()}
              },
            ));
          }
        }
        return true;
      },
      listener: (context, state) {
        if (state.vttCreateStatus == VTTCreateStatus.exception) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
              buildExplorerConnectionSnackbar(
                  theme,
                  'myWitWallet is experiencing connection problems',
                  theme.colorScheme.error));
        }
      },
      child: child,
    );
  }

  BlocListener<ExplorerBloc, ExplorerState> _explorerListerner(Widget child) {
    final theme = Theme.of(context);
    final extendedTheme = theme.extension<ExtendedTheme>()!;
    return BlocListener<ExplorerBloc, ExplorerState>(
      listenWhen: (previousState, currentState) {
        if (previousState.status == ExplorerStatus.error &&
            currentState.status != ExplorerStatus.error &&
            currentState.status != ExplorerStatus.unknown) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context)
              .showSnackBar(buildExplorerConnectionSnackbar(
            theme,
            'Connection reestablished!',
            extendedTheme.txValuePositiveColor,
            () => {
              if (mounted)
                {ScaffoldMessenger.of(context).hideCurrentMaterialBanner()}
            },
          ));
        }
        return true;
      },
      listener: (context, state) {
        if (state.status == ExplorerStatus.error) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
              buildExplorerConnectionSnackbar(
                  theme,
                  'myWitWallet is experiencing connection problems',
                  theme.colorScheme.error));
        }
      },
      child: child,
    );
  }

  Widget showWalletList(BuildContext context) {
    String walletId =
        Locator.instance.get<ApiDatabase>().walletStorage.currentWallet.id;
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: Container(
            color: WitnetPallet.white,
            width: 30,
            height: 30,
            child: Identicon(seed: walletId, size: 8),
          ),
          onTap: () => {
            if (panelController.isPanelOpen)
              {
                panelController.close(),
                Timer(Duration(milliseconds: 300), () {
                  setState(() {
                    isPanelClose = true;
                  });
                }),
              }
            else
              {
                panelController.open(),
                setState(() {
                  isPanelClose = panelController.isPanelClosed;
                })
              }
          },
        ));
  }

  // Content displayed between header and bottom actions
  Widget buildMainContent(BuildContext context, theme) {
    final extendedTheme = Theme.of(context).extension<ExtendedTheme>()!;
    if (widget.slidingPanel == null) {
      return _buildMainLayout(context, theme, false);
    } else {
      return SlidingUpPanel(
          controller: panelController,
          color: extendedTheme.walletListBackgroundColor!,
          minHeight: 0,
          maxHeight: MediaQuery.of(context).size.height * 0.3,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          panel: widget.slidingPanel,
          body: GestureDetector(
              onTap: () {
                if (panelController.isPanelOpen) {
                  panelController.close();
                  Timer(Duration(milliseconds: 300), () {
                    setState(() {
                      isPanelClose = true;
                    });
                  });
                }
              },
              child: Padding(
                  child: _buildMainLayout(context, theme, true),
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom))));
    }
  }

  Widget _buildMainLayout(BuildContext context, theme, bool panel) {
    final theme = Theme.of(context);
    final extendedTheme = theme.extension<ExtendedTheme>()!;

    return CustomScrollView(
      controller: widget.scrollController != null
          ? widget.scrollController
          : defaultScrollController,
      slivers: [
        SliverAppBar(
            floating: true,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: extendedTheme.headerBackgroundColor,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
            ),
            snap: true,
            pinned: true,
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            expandedHeight: widget.dashboardActions != null ? 300 : 200,
            toolbarHeight: widget.dashboardActions != null ? 300 : 200,
            flexibleSpace: headerLayout(context, theme)),
        SliverPadding(
          padding: EdgeInsets.only(left: 16, right: 16),
          sliver: SliverToBoxAdapter(
              child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 100,
                maxWidth: 600,
              ),
              child: _vttListener(_explorerListerner(Column(
                  mainAxisSize: MainAxisSize.max,
                  children: widget.widgetList))),
            ),
          )),
        ),
      ],
    );
  }

  Widget headerLayout(context, theme) {
    final double iconHeight = 50;
    if (widget.slidingPanel == null) {
      return Container(
          child: HeaderLayout(
        navigationActions: widget.navigationActions,
        dashboardActions: widget.dashboardActions,
      ));
    } else {
      return HeaderLayout(
        navigationActions: [
          showWalletList(context),
          Flexible(
              child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: iconHeight,
            ),
            child: Column(
              children: [witnetEyeIcon(theme, height: iconHeight)],
            ),
          )),
          ...widget.navigationActions
        ],
        dashboardActions: widget.dashboardActions,
      );
    }
  }

  Widget bottomBar() {
    return BottomAppBar(
      notchMargin: 8,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.only(
            left: 16, right: 16, bottom: widget.actions.length > 0 ? 16 : 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 100,
                  maxWidth: 600,
                ),
                child: Column(
                    mainAxisSize: MainAxisSize.max, children: widget.actions),
              ),
            )
          ],
        ),
      ),
      color: Colors.transparent,
    );
  }

  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: theme.colorScheme.background,
            body: buildMainContent(context, theme),
            bottomNavigationBar:
                isPanelClose == null || isPanelClose ? bottomBar() : null));
  }
}
