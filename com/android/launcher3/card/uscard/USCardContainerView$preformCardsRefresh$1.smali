.class final Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;
.super Ld3/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld3/e;
    c = "com.android.launcher3.card.uscard.USCardContainerView$preformCardsRefresh$1"
    f = "USCardContainerView.kt"
    l = {
        0x71d,
        0x576,
        0x580,
        0x587
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lq3/f0;",
        "Lb3/d<",
        "-",
        "Ly2/p;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/seed/SeedContentResult;Lcom/android/launcher3/card/uscard/USCardContainerView;Lb3/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            "Lcom/android/launcher3/card/uscard/USCardContainerView;",
            "Lb3/d<",
            "-",
            "Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    iput-object p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld3/i;-><init>(ILb3/d;)V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->invokeSuspend$lambda-4$lambda-0()V

    return-void
.end method

.method private static final invokeSuspend$lambda-4$lambda-0()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    sget-object v1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    invoke-virtual {v1}, Lcom/android/launcher3/card/uscard/USCardManager;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lb3/d;)Lb3/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lb3/d<",
            "*>;)",
            "Lb3/d<",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;

    iget-object v0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;-><init>(Lcom/android/launcher3/card/seed/SeedContentResult;Lcom/android/launcher3/card/uscard/USCardContainerView;Lb3/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lq3/f0;

    check-cast p2, Lb3/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lq3/f0;Lb3/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/f0;",
            "Lb3/d<",
            "-",
            "Ly2/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->create(Ljava/lang/Object;Lb3/d;)Lb3/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;

    sget-object p1, Ly2/p;->a:Ly2/p;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v7, "LauncherCardView-USCardContainerView"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_5f

    if-eq v2, v8, :cond_4a

    if-eq v2, v5, :cond_32

    if-eq v2, v4, :cond_25

    if-ne v2, v3, :cond_1d

    iget-object v0, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lx3/b;

    goto :goto_2a

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v0, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lx3/b;

    :goto_2a
    :try_start_2a
    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    goto/16 :goto_22d

    :catchall_2f
    move-exception v0

    goto/16 :goto_235

    :cond_32
    iget v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->I$0:I

    iget-object v5, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/card/uscard/USCardContainerView;

    iget-object v10, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lx3/b;

    :try_start_3c
    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_46

    move v6, v2

    move-object v11, v5

    move-object v2, v10

    move-object/from16 v5, p1

    goto/16 :goto_1bb

    :catchall_46
    move-exception v0

    move-object v1, v10

    goto/16 :goto_235

    :cond_4a
    iget-object v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/card/uscard/USCardContainerView;

    iget-object v10, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/card/seed/SeedContentResult;

    iget-object v11, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lx3/b;

    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    move-object/from16 v16, v11

    move-object v11, v2

    move-object/from16 v2, v16

    goto :goto_87

    :cond_5f
    invoke-static/range {p1 .. p1}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    const-string/jumbo v10, "preformCardsRefresh, launcher resumed, contentResult = "

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$getMRefreshMutex$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Lx3/b;

    move-result-object v2

    iget-object v10, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->$contentResult:Lcom/android/launcher3/card/seed/SeedContentResult;

    iget-object v11, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    iput-object v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$1:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$2:Ljava/lang/Object;

    iput v8, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->label:I

    invoke-interface {v2, v9, v0}, Lx3/b;->c(Ljava/lang/Object;Lb3/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_87

    return-object v1

    :cond_87
    :goto_87
    :try_start_87
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/card/CardPermissionManager;->getUSRelatedPermissionManager()Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;

    move-result-object v12

    if-nez v12, :cond_9d

    const-string/jumbo v0, "preformCardsRefresh, permissionManager is null"

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_233

    invoke-interface {v2, v9}, Lx3/b;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_9d
    :try_start_9d
    invoke-virtual {v10}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/util/IntSparseArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_ac

    sget-object v13, Lcom/android/launcher3/card/seed/StatisticsRecorder;->Companion:Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;

    invoke-virtual {v13}, Lcom/android/launcher3/card/seed/StatisticsRecorder$Companion;->reportRequestPushEvent()V

    :cond_ac
    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isShowingInVisiblePage()Z

    move-result v13

    if-nez v13, :cond_c1

    const-string/jumbo v0, "preformCardsRefresh, is forbid update now, for card is not showing in visiblepage"

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v10}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$setMStoreContentResult$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)V

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_bd
    .catchall {:try_start_9d .. :try_end_bd} :catchall_233

    invoke-interface {v2, v9}, Lx3/b;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_c1
    :try_start_c1
    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->isForbidUpdateRecommendCards()Z

    move-result v13

    if-eqz v13, :cond_da

    const-string/jumbo v0, "preformCardsRefresh, is forbid update now, try again after 500 ms"

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/uscard/d;->a:Lcom/android/launcher3/card/uscard/d;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v11, v0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_d6
    .catchall {:try_start_c1 .. :try_end_d6} :catchall_233

    invoke-interface {v2, v9}, Lx3/b;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_da
    :try_start_da
    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/card/utils/CardLoadChecker;->clearCardsOfRecord()V

    invoke-static {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$refreshOldChildrenDrawState(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->saveOldCardsToPendingList()V

    invoke-static {v11, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$showPrivacyPermissionCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result v13

    if-nez v13, :cond_1a1

    invoke-static {v11, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$showPermissionGuideCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result v13

    if-eqz v13, :cond_fc

    goto/16 :goto_1a1

    :cond_fc
    invoke-static {v11, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$showMasterKeyCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result v13

    if-eqz v13, :cond_108

    const/4 v13, -0x3

    invoke-virtual {v11, v13, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView(ILcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    goto/16 :goto_1a5

    :cond_108
    invoke-static {v11, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$showMissingKeyPermissionsCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;)Z

    move-result v13

    if-eqz v13, :cond_114

    const/4 v13, -0x4

    invoke-virtual {v11, v13, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView(ILcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    goto/16 :goto_1a5

    :cond_114
    invoke-static {v11, v10}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$showNoAdviceCard(Lcom/android/launcher3/card/uscard/USCardContainerView;Lcom/android/launcher3/card/seed/SeedContentResult;)Z

    move-result v13

    if-eqz v13, :cond_120

    const/4 v13, -0x5

    invoke-virtual {v11, v13, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView(ILcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    goto/16 :goto_1a5

    :cond_120
    invoke-virtual {v10}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-lez v12, :cond_197

    const/4 v13, 0x0

    :goto_12b
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v10}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v15

    if-eqz v15, :cond_192

    invoke-virtual {v10}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    const-string/jumbo v6, "servicesInfo[i]"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-static {v15}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleCardInfoBySelectedInfo(Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v6

    if-nez v6, :cond_14f

    move-object v6, v9

    goto :goto_161

    :cond_14f
    invoke-virtual {v10}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    invoke-virtual {v11, v6, v15, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddChildCard(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_161
    if-nez v6, :cond_18f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not inflate USCardView, for assembled cardInfo By "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/launcher3/card/seed/SeedContentResult;->getServicesInfo()Lcom/android/launcher3/util/IntSparseArrayMap;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->INSTANCE:Lcom/android/launcher3/card/seed/SeedEntranceHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedEntranceHelper;->assembleLocalTipCardList()Lcom/android/launcher3/card/seed/SeedContentResult;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->preformCardsRefresh(Lcom/android/launcher3/card/seed/SeedContentResult;)V

    goto/16 :goto_22c

    :cond_18f
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_192
    if-lt v14, v12, :cond_195

    goto :goto_197

    :cond_195
    move v13, v14

    goto :goto_12b

    :cond_197
    :goto_197
    invoke-static {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$getMCardRefreshAnimatorList$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v8

    goto :goto_1a6

    :cond_1a1
    :goto_1a1
    const/4 v6, -0x2

    invoke-virtual {v11, v6, v12}, Lcom/android/launcher3/card/uscard/USCardContainerView;->inflateAndAddXiaoBuAdviceView(ILcom/android/launcher3/card/uscard/USRelatedPermissionManager;)V

    :goto_1a5
    const/4 v6, 0x0

    :goto_1a6
    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardLoadChecker()Lcom/android/launcher3/card/utils/CardLoadChecker;

    move-result-object v12

    iput-object v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->I$0:I

    iput v5, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->label:I

    invoke-virtual {v12, v10, v0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->startTimingIfNeed(Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1bb

    return-object v1

    :cond_1bb
    :goto_1bb
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1c4

    goto :goto_22c

    :cond_1c4
    invoke-static {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$getMContentChanged$p(Lcom/android/launcher3/card/uscard/USCardContainerView;)Z

    move-result v5

    if-eqz v5, :cond_1cd

    invoke-static {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$statisticExposeDataWhenRefresh(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    :cond_1cd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "preformCardsRefresh, needDelay = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1dc

    move v10, v8

    goto :goto_1dd

    :cond_1dc
    const/4 v10, 0x0

    :goto_1dd
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mItemList.size = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v8

    const-wide/16 v7, 0x320

    if-eqz v5, :cond_21a

    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;

    move-result-object v5

    if-eqz v5, :cond_21a

    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->playLoadingToContentAnimator()V

    iput-object v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->label:I

    invoke-static {v7, v8, v0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_22c

    return-object v1

    :cond_21a
    invoke-virtual {v11}, Lcom/android/launcher3/card/uscard/USCardContainerView;->playCardsRefreshAnim()V

    if-eqz v6, :cond_22c

    iput-object v2, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/launcher3/card/uscard/USCardContainerView$preformCardsRefresh$1;->label:I

    invoke-static {v7, v8, v0}, Lp/d;->a(JLb3/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_229
    .catchall {:try_start_da .. :try_end_229} :catchall_233

    if-ne v0, v1, :cond_22c

    return-object v1

    :cond_22c
    :goto_22c
    move-object v1, v2

    :goto_22d
    :try_start_22d
    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_22f
    .catchall {:try_start_22d .. :try_end_22f} :catchall_2f

    invoke-interface {v1, v9}, Lx3/b;->b(Ljava/lang/Object;)V

    return-object v0

    :catchall_233
    move-exception v0

    move-object v1, v2

    :goto_235
    invoke-interface {v1, v9}, Lx3/b;->b(Ljava/lang/Object;)V

    throw v0
.end method
