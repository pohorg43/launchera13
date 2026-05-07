.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler$Companion;
    }
.end annotation


# static fields
.field private static final CARD_STORE_SHOW_DELAY_TIME:J = 0x104L

.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler$Companion;

.field private static final INTERVAL_BETWEEN_CLICK_EVENT:I = 0x320

.field private static final PENDING_CARD_ADD_DELAY_TIME:J = 0xc8L

.field private static final START_DRAG_DELAY:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "PendingCardTouchHandler"

.field private static final TYPE_KEY:Ljava/lang/String; = "type_key"


# instance fields
.field private final container:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

.field private mDragView:Lcom/android/launcher3/dragndrop/DragView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/dragndrop/DragView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconLastTouchPos:Landroid/graphics/Point;

.field private final mIconShift:Landroid/graphics/Point;

.field private mIsDragCanceled:Z

.field private mLastRespondView:Landroid/view/View;

.field private mLastUpEventTime:J

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mPendingCardClickEffectHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;

.field private mResponseForClickCard:Ljava/lang/Runnable;

.field private final mTouchSlop:D


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->container:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconShift:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mTouchSlop:D

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;

    invoke-direct {v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mPendingCardClickEffectHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->onClickCardView$lambda-1(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->onClickCardView$lambda-0(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->onTouch$lambda-7$lambda-6(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->onLongClick$lambda-3(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V

    return-void
.end method

.method private final isCanResponseClick(II)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    mul-int/2addr v1, v1

    mul-int/2addr p1, p1

    add-int/2addr p1, v1

    int-to-double p1, p1

    iget-wide v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mTouchSlop:D

    mul-double/2addr v0, v0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private final isTouchInVisibleRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 3

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private final onClickCardView(Landroid/view/View;)V
    .registers 4

    const-string v0, "open assistant screen card add panel by click card "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingCardTouchHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statPendingCardClickCard()V

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/popup/pendingcard/j;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mResponseForClickCard:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/j;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/popup/pendingcard/j;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;I)V

    const-wide/16 p0, 0x104

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final onClickCardView$lambda-0(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->openAssistantScreenCardAddPanel(Landroid/view/View;)V

    return-void
.end method

.method private static final onClickCardView$lambda-1(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->openAssistantScreenCardAddPanel(Landroid/view/View;)V

    return-void
.end method

.method private static final onLongClick$lambda-3(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIsDragCanceled:Z

    if-nez v0, :cond_3d

    const-string/jumbo v0, "start drag by long press card "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingCardTouchHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statPendingCardLongClickCard()V

    check-cast p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->addPendingCardByDrag(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)V

    sget-object p1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getFirstCardPreviewAfterEnterSimpleMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->resetFirstCardPreviewAfterEnterSimpleMode()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->addFirstCardPreviewAfterEnterSimpleMode(I)V

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->getContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_3d
    return-void
.end method

.method private static final onTouch$lambda-7$lambda-6(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->getVisualCard()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->addCardToCurPageByPin(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)V

    :goto_10
    return-void
.end method

.method private final openAssistantScreenCardAddPanel(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.oplus.card.config.domain.model.CardConfigInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.cardStore.ACTION_CARD_STORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f1203d7

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "host_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getGroupId()I

    move-result v2

    const-string v3, "group_id_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result p1

    const-string/jumbo v2, "type_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const p1, 0x10008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_4c
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 p1, 0x2716

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_53
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_5e

    :catch_54
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PendingCardTouchHandler"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    return-void
.end method


# virtual methods
.method public final addCardToCurPageByPin(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)V
    .registers 4

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->isAllowAddToScreen(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const-string v0, "click pin to add card "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingCardTouchHandler"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz v1, :cond_22

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-nez v0, :cond_26

    goto :goto_55

    :cond_26
    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.card.PendingAddCardInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    const/16 v0, 0x64

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher/Launcher;->findCellToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;I)Z

    move-result v0

    if-nez v0, :cond_55

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/card/PendingAddCardInfo;->mFromDrop:Z

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    :cond_55
    :goto_55
    return-void
.end method

.method public final addPendingCardByDrag(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)V
    .registers 12

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    goto :goto_84

    :cond_14
    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.card.PendingAddCardInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/PendingAddCardInfo;

    const/16 v3, 0x64

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->getContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    move-result-object v6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/card/PendingAddCardInfo;

    new-instance v8, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v8, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.dragndrop.DragView<com.android.launcher3.Launcher>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconShift:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardCenter()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconShift:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardCenter()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconShift:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    :goto_84
    return-void
.end method

.method public final getContainer()Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->container:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    return-object p0
.end method

.method public final getVisualCard()Lcom/android/launcher3/popup/pendingcard/PendingCardView;
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->container:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_32

    const/4 v2, 0x0

    :goto_a
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->container:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v4, :cond_2d

    check-cast v2, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object p0

    if-nez p0, :cond_20

    move-object p0, v1

    goto :goto_24

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getCurCard()Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;

    move-result-object p0

    :goto_24
    if-nez p0, :cond_27

    goto :goto_32

    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object p0

    move-object v1, p0

    goto :goto_32

    :cond_2d
    if-lt v3, v0, :cond_30

    goto :goto_32

    :cond_30
    move v2, v3

    goto :goto_a

    :cond_32
    :goto_32
    return-object v1
.end method

.method public final interruptPressAnim()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mPendingCardClickEffectHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->cancelAnim()Landroid/view/View;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public final isAllowAddToScreen(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)Z
    .registers 4

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.card.PendingAddCardInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/card/PendingAddCardInfo;

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    return v1

    :cond_21
    invoke-static {}, Lcom/android/launcher3/card/LauncherCardHost;->getInstance()Lcom/android/launcher3/card/LauncherCardHost;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    iget p1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/card/LauncherCardHost;->checkCardAddAble(Lcom/android/launcher3/Launcher;I)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    return v1
.end method

.method public final isPressAnimStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mPendingCardClickEffectHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->isPressAnimStarted()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public final isSqueezeAndAddCurCellLayout()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->getVisualCard()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_48

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getCardView()Lcom/coui/appcompat/imageview/COUIRoundImageView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.card.PendingAddCardInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.OplusCellLayout"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const-string v1, "cl.mOccupied"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->vacantCellsCount(Lcom/android/launcher3/util/GridOccupancy;)I

    move-result p0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr v1, v0

    if-lt p0, v1, :cond_48

    const/4 p0, 0x1

    return p0

    :cond_48
    :goto_48
    const/4 p0, 0x0

    return p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->isAllowAddToScreen(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    iput-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIsDragCanceled:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/popup/pendingcard/j;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/popup/pendingcard/j;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;Landroid/view/View;I)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x1

    if-nez p2, :cond_5

    goto/16 :goto_d7

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLastRespondView:Landroid/view/View;

    if-eqz v1, :cond_18

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    :cond_18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLastRespondView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mPendingCardClickEffectHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;

    if-nez v1, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {v1, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->initTarget(Landroid/view/View;)V

    :goto_25
    new-instance v1, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    :cond_2c
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mPendingCardClickEffectHandler:Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;

    if-nez v1, :cond_31

    goto :goto_34

    :cond_31
    invoke-virtual {v1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchEffect;->onTouchEvent(Landroid/view/MotionEvent;)V

    :goto_34
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    if-nez v1, :cond_39

    goto :goto_3c

    :cond_39
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    :goto_3c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_ac

    if-eq v1, v0, :cond_55

    const/4 p1, 0x3

    if-eq v1, p1, :cond_49

    goto/16 :goto_d7

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    if-nez p1, :cond_4e

    goto :goto_51

    :cond_4e
    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    :goto_51
    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIsDragCanceled:Z

    goto/16 :goto_d7

    :cond_55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLastUpEventTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x320

    cmp-long v3, v3, v5

    if-lez v3, :cond_a1

    iput-wide v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLastUpEventTime:J

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->isTouchInVisibleRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, v1, p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->isCanResponseClick(II)Z

    move-result p2

    if-eqz p2, :cond_a1

    instance-of p1, p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statPendingCardClickPin()V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/card/seed/a;

    invoke-direct {p2, p0}, Lcom/android/launcher3/card/seed/a;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a1
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    if-nez p1, :cond_a6

    goto :goto_a9

    :cond_a6
    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    :goto_a9
    iput-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIsDragCanceled:Z

    goto :goto_d7

    :cond_ac
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mResponseForClickCard:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->removeCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v1, p2}, Landroid/graphics/Point;->set(II)V

    if-nez p1, :cond_c3

    goto :goto_d7

    :cond_c3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    :goto_d7
    return v0
.end method
