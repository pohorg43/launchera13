.class public final Lcom/android/launcher3/card/utils/CardLoadChecker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/utils/CardLoadChecker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/utils/CardLoadChecker$Companion;

.field private static final EVENT_LOAD_TIMEOUT:Ljava/lang/String; = "us_card_load_timeout"

.field private static final HAS_DATA:Ljava/lang/String; = "1"

.field private static final HAS_NOT_DATA:Ljava/lang/String; = "0"

.field private static final KEY_CARD_TYPE:Ljava/lang/String; = "cardType"

.field private static final KEY_HAS_DATA:Ljava/lang/String; = "hasData"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final LOAD_WAIT_TIMEOUT:J = 0xdacL

.field private static final STATE_COMPLETE:I = 0x2

.field private static final STATE_LOADING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CardLoadChecker"


# instance fields
.field private cancellableCtt:Lq3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/k<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final iUsCardLoadResult:Lcom/android/launcher3/card/utils/IUSCardLoadResult;

.field private loadCompleteCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/uscard/USCardView;",
            ">;"
        }
    .end annotation
.end field

.field private loadState:I

.field private preloadCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/uscard/USCardView;",
            ">;"
        }
    .end annotation
.end field

.field private final usCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/utils/CardLoadChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/utils/CardLoadChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/utils/CardLoadChecker;->Companion:Lcom/android/launcher3/card/utils/CardLoadChecker$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 3

    const-string/jumbo v0, "usCardContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->usCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadCompleteCards:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->preloadCards:Ljava/util/List;

    new-instance p1, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/utils/CardLoadChecker$iUsCardLoadResult$1;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;)V

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->iUsCardLoadResult:Lcom/android/launcher3/card/utils/IUSCardLoadResult;

    return-void
.end method

.method public static final synthetic access$getLoadCompleteCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadCompleteCards:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLoadState$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadState:I

    return p0
.end method

.method public static final synthetic access$getPreloadCards$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->preloadCards:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getUsCardContainer$p(Lcom/android/launcher3/card/utils/CardLoadChecker;)Lcom/android/launcher3/card/uscard/USCardContainerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->usCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    return-object p0
.end method

.method public static final synthetic access$loadComplete(Lcom/android/launcher3/card/utils/CardLoadChecker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadComplete()V

    return-void
.end method

.method public static final synthetic access$loadTimeout(Lcom/android/launcher3/card/utils/CardLoadChecker;Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadTimeout(Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeAllLoadingCards(Lcom/android/launcher3/card/utils/CardLoadChecker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/utils/CardLoadChecker;->removeAllLoadingCards()V

    return-void
.end method

.method public static final synthetic access$setCancellableCtt$p(Lcom/android/launcher3/card/utils/CardLoadChecker;Lq3/k;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->cancellableCtt:Lq3/k;

    return-void
.end method

.method private final loadComplete()V
    .registers 4

    const-string v0, "CardLoadChecker"

    const-string v1, "loadComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->cancellableCtt:Lq3/k;

    if-nez v1, :cond_c

    goto :goto_14

    :cond_c
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->cancellableCtt:Lq3/k;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadState:I

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_22
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2d

    const-string p0, "catching IllegalStateException"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method private final loadTimeout(Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;

    iget v1, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lb3/d;)V

    :goto_18
    iget-object p2, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;->result:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    if-ne v2, v3, :cond_2c

    iget-object p0, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    goto/16 :goto_c9

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    const-string p2, "CardLoadChecker"

    const-string v2, "loadTimeout"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_3f
    iget-object v4, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->cancellableCtt:Lq3/k;

    if-nez v4, :cond_45

    move-object v4, v2

    goto :goto_5c

    :cond_45
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v6, "us-load-timeOut"

    invoke-direct {v5, v6}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lb3/d;->resumeWith(Ljava/lang/Object;)V

    sget-object v4, Ly2/p;->a:Ly2/p;
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_57

    goto :goto_5c

    :catchall_57
    move-exception v4

    invoke-static {v4}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    :goto_5c
    invoke-static {v4}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "e:"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    iput-object v2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->cancellableCtt:Lq3/k;

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadState:I

    iget-object p2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->preloadCards:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7a
    :goto_7a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/card/uscard/USCardView;

    iget-object v5, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadCompleteCards:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    invoke-virtual {p1}, Lcom/android/launcher3/card/seed/SeedContentResult;->getGuaranteeRefreshed()Z

    move-result v5

    if-nez v5, :cond_9d

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {p1, v5}, Lcom/android/launcher3/card/seed/SeedContentResult;->replaceWithRank(I)V

    :cond_9d
    invoke-direct {p0, v4}, Lcom/android/launcher3/card/utils/CardLoadChecker;->statisticLoadFailCard(Lcom/android/launcher3/card/uscard/USCardView;)V

    goto :goto_7a

    :cond_a1
    invoke-virtual {p1, v3}, Lcom/android/launcher3/card/seed/SeedContentResult;->setGuaranteeRefreshed(Z)V

    iget-object p2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->usCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_af

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_af
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-object v4, Lq3/q0;->a:Lq3/b0;

    sget-object v4, Lv3/q;->a:Lq3/r1;

    new-instance v5, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;

    invoke-direct {v5, p0, p1, p2, v2}, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$5;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lcom/android/launcher3/card/seed/SeedContentResult;Lkotlin/jvm/internal/Ref$BooleanRef;Lb3/d;)V

    iput-object p2, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$loadTimeout$1;->label:I

    invoke-static {v4, v5, v0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c8

    return-object v1

    :cond_c8
    move-object p0, p2

    :goto_c9
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final removeAllLoadingCards()V
    .registers 4

    const-string v0, "CardLoadChecker"

    const-string/jumbo v1, "removeAllLoadingCards"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->preloadCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/uscard/USCardView;

    iget-object v2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->usCardContainer:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method private final statisticLoadFailCard(Lcom/android/launcher3/card/uscard/USCardView;)V
    .registers 5

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_54

    :cond_c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "statisticLoadFailCard, type = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", serviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardLoadChecker"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    iget v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardType"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    const-string/jumbo v1, "mServiceId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "serviceId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_54
    invoke-virtual {p1}, Lcom/android/launcher3/card/CommonCardView;->getUiDataForDrag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "0"

    goto :goto_63

    :cond_61
    const-string v0, "1"

    :goto_63
    const-string v1, "hasData"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timeStamp"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    const-string/jumbo v0, "us_card_load_timeout"

    invoke-virtual {p1, p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsUSLoadFailCard(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addPreLoadCard(Lcom/android/launcher3/card/uscard/USCardView;)V
    .registers 3

    const-string v0, "loadCard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->preloadCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearCardsOfRecord()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadCompleteCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->preloadCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final getIUsCardLoadResult()Lcom/android/launcher3/card/utils/IUSCardLoadResult;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->iUsCardLoadResult:Lcom/android/launcher3/card/utils/IUSCardLoadResult;

    return-object p0
.end method

.method public final isLoadingState()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final startTimingIfNeed(Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/seed/SeedContentResult;",
            "Lb3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;

    iget v1, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lb3/d;)V

    :goto_18
    iget-object p2, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;->result:Ljava/lang/Object;

    sget-object v1, Lc3/a;->a:Lc3/a;

    iget v2, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p2}, Lq/d;->p(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->preloadCards:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_41

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_41
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/launcher3/card/utils/CardLoadChecker;->loadState:I

    sget-object v2, Lq3/q0;->c:Lq3/b0;

    new-instance v4, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p2, p1, v5}, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$2;-><init>(Lcom/android/launcher3/card/utils/CardLoadChecker;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/launcher3/card/seed/SeedContentResult;Lb3/d;)V

    iput-object p2, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/launcher3/card/utils/CardLoadChecker$startTimingIfNeed$1;->label:I

    invoke-static {v2, v4, v0}, Lq3/g;->g(Lb3/f;Lkotlin/jvm/functions/Function2;Lb3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5e

    return-object v1

    :cond_5e
    move-object p0, p2

    :goto_5f
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
