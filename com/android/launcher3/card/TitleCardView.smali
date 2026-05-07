.class public final Lcom/android/launcher3/card/TitleCardView;
.super Lcom/android/launcher3/card/CommonCardView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/TitleCardView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/TitleCardView$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-Title"


# instance fields
.field private cardName:Lcom/android/launcher3/OplusBubbleTextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/TitleCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/TitleCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/TitleCardView;->Companion:Lcom/android/launcher3/card/TitleCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/CommonCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final initCardName()V
    .registers 8

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_10

    :cond_e
    :goto_e
    move v0, v2

    goto :goto_24

    :cond_10
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_e

    :cond_17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_e

    :cond_1e
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    move v0, v1

    :goto_24
    if-eqz v0, :cond_27

    return-void

    :cond_27
    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    iput-object v0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v3, "mLauncher.deviceProfile"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v3, :cond_48

    goto :goto_4d

    :cond_48
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    :cond_4d
    :goto_4d
    iget-object v3, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v3, :cond_52

    goto :goto_7d

    :cond_52
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f070600

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p0, p0

    invoke-virtual {v3, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean p0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/2addr p0, v1

    invoke-virtual {v3, p0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    :goto_7d
    return-void
.end method

.method private final refreshCardName(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 4

    if-nez p1, :cond_a

    const-string p0, "LauncherCardView-Title"

    const-string p1, "mCardConfig is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "mLauncher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardNameFromConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/TitleCardView;->setCardNameAndUpdateDb(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/android/launcher3/card/LauncherCardUtil;->clipCardView(Landroid/view/View;F)V

    return-void
.end method

.method public getCardName()Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    return-object p0
.end method

.method public getRadiusArr()[F
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_5
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    int-to-float v3, v3

    aput v3, v0, v1

    const/4 v1, 0x7

    if-le v2, v1, :cond_10

    return-object v0

    :cond_10
    move v1, v2

    goto :goto_5
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->handleGetViewCallback(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->bringToFront()V

    :cond_e
    :goto_e
    return p1
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public initCardAfterInflate()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/card/EngineCardView;->initCardAfterInflate()V

    invoke-direct {p0}, Lcom/android/launcher3/card/TitleCardView;->initCardName()V

    return-void
.end method

.method public isAContainer()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isShowCardName()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isShowingInVisiblePage()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_16
    instance-of v1, v1, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.OplusCellLayout"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    goto :goto_51

    :cond_39
    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    goto :goto_51

    :cond_50
    move v1, v0

    :goto_51
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result p0

    if-nez p0, :cond_6d

    const-string/jumbo p0, "resumeCard but card is NOT at this page, atPage = "

    const-string v2, ", currentPage = "

    const-string v3, "LauncherCardView-Title"

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_6d
    const/4 p0, 0x1

    return p0
.end method

.method public onCardCategoryGet(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "onCardCategoryGet category = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherCardView-Title"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_25

    :cond_17
    iput p1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCategory:I

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :goto_25
    return-void
.end method

.method public onMeasure(II)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    add-int/2addr v3, v4

    sub-int v3, v2, v3

    int-to-float v3, v3

    const v4, 0x3eaaaaab

    mul-float/2addr v3, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-static {v3}, Li1/j;->o(F)I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070600

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v7, v0

    sub-int/2addr v7, v5

    iget-object v0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v5, 0x0

    if-nez v0, :cond_56

    move-object v0, v5

    goto :goto_5a

    :cond_56
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_5a
    instance-of v8, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v8, :cond_61

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    :cond_61
    if-nez v5, :cond_64

    goto :goto_9e

    :cond_64
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v0

    if-eqz v0, :cond_6d

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    goto :goto_78

    :cond_6d
    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v2, v0

    :goto_78
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v0

    neg-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v1, :cond_8f

    goto :goto_9e

    :cond_8f
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_9e
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->onMeasure(II)V

    return-void
.end method

.method public playSmartCardAnimator(Landroid/view/View;)V
    .registers 7

    const-string/jumbo v0, "newView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-lez v0, :cond_23

    const/4 v2, 0x0

    :goto_10
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_1e

    :cond_19
    instance-of v4, v2, Lcom/android/launcher3/BubbleTextView;

    if-nez v4, :cond_1e

    move-object v1, v2

    :cond_1e
    :goto_1e
    if-lt v3, v0, :cond_21

    goto :goto_23

    :cond_21
    move v2, v3

    goto :goto_10

    :cond_23
    :goto_23
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    const-string v3, "itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->checkPictureAble(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result v0

    if-eqz v0, :cond_4c

    instance-of p1, v1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p1, :cond_4b

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_4b
    return-void

    :cond_4c
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/CommonCardView;->getCardConfig()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    if-eq v0, p1, :cond_e

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/TitleCardView;->refreshCardName(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    :cond_e
    invoke-super {p0, p1}, Lcom/android/launcher3/card/CommonCardView;->refreshCardContentByConfig(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    return-void
.end method

.method public resumeCard(ZZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/card/TitleCardView;->isShowingInVisiblePage()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView;->resumeCard(ZZ)V

    :cond_9
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method

.method public setCardNameAndUpdateDb(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "LauncherCardView-Title"

    if-nez v0, :cond_e

    const-string p0, "cardInfo is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCardNameAndUpdateDb oldTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",newTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    iput-object p1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/OplusModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_4f

    goto :goto_52

    :cond_4f
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public setTextVisible(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez v0, :cond_5

    goto :goto_2c

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    sget-object p1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    iget p0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1e

    move p0, v1

    goto :goto_1f

    :cond_1e
    move p0, v2

    :goto_1f
    if-nez p0, :cond_28

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    :goto_2c
    return-void
.end method

.method public updateTextSize(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string v0, "launcher.deviceProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/TitleCardView;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_13

    goto :goto_1a

    :cond_13
    const/4 v0, 0x0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1a
    return-void
.end method
