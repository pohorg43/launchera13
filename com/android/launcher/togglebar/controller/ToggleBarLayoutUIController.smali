.class public final Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;
.super Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController$Companion;

.field private static final TAG:Ljava/lang/String; = "ToggleBarLayoutUIController"


# instance fields
.field private mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

.field private mContentView:Landroid/view/View;

.field private mCurrentCellLayout:Lcom/android/launcher3/CellLayout;

.field private mPreviousClipState:Ljava/lang/Boolean;

.field private mRecyclerView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->Companion:Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->destroy$lambda-2(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->resume$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->createView$lambda-0(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;Landroid/view/View;)V

    return-void
.end method

.method private static final createView$lambda-0(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;Landroid/view/View;)V
    .registers 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->getSelectInfo()Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    move-result-object p1

    :goto_10
    const/4 v0, 0x1

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->resetPendingActivityRequestCode()V

    return-void

    :cond_22
    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMColumn()I

    move-result v3

    if-ne v2, v3, :cond_4b

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMRow()I

    move-result v2

    if-ne v1, v2, :cond_4b

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->resetPendingActivityRequestCode()V

    return-void

    :cond_4b
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMColumn()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMRow()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->applyLayoutSettings(Lcom/android/launcher/Launcher;IIZ)V

    return-void
.end method

.method private static final destroy$lambda-2(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    const-string/jumbo v1, "onToggleBarLayoutDestroy  mLauncher.toggleBarManager.topState = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarLayoutUIController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->onToggleBarLayoutDestroy(Lcom/android/launcher/Launcher;Z)V

    return-void
.end method

.method private final requestLayoutCurrentPage()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    :goto_a
    if-nez p0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getCurrentDropLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_17
    return-void
.end method

.method private static final resume$lambda-1(Landroid/view/View;)V
    .registers 3

    const-string v0, "cl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/CellLayout;

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->BIG_FOLDER:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/card/IAreaWidget;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIcon"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    sget-object v1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->snapReset(Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    goto :goto_13

    :cond_2d
    return-void
.end method

.method private final setPageIndicatorAlpha(ZZ)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    :goto_a
    if-nez p0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez p0, :cond_16

    return-void

    :cond_16
    if-eqz p1, :cond_1b

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAlphaIfNeeded(FZ)V

    return-void
.end method

.method public static synthetic setPageIndicatorAlpha$default(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;ZZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->setPageIndicatorAlpha(ZZ)V

    return-void
.end method


# virtual methods
.method public canScrollVerticallyDown(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public createView(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->createView(I)V

    const p1, 0x7f0a0462

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mContentView:Landroid/view/View;

    const p1, 0x7f0a041a

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mRecyclerView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    new-instance p1, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v1, "mLauncher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->setIAdditionAnim(Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter$IAdditionalAnim;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mRecyclerView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_37

    goto :goto_3c

    :cond_37
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_3c
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cb6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mRecyclerView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_4f

    goto :goto_57

    :cond_4f
    new-instance v2, Lcom/android/launcher/togglebar/RvItemDecoration;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher/togglebar/RvItemDecoration;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_57
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mRecyclerView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const v0, 0x7f0a00b4

    if-nez p1, :cond_5f

    goto :goto_66

    :cond_5f
    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V

    :goto_66
    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/views/PressFeedbackButton;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v2}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v2

    if-eqz v2, :cond_7a

    const v2, 0x7f0606f5

    goto :goto_7d

    :cond_7a
    const v2, 0x7f0606f4

    :goto_7d
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    new-instance v0, Lcom/android/launcher/v;

    invoke-direct {v0, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_ab

    check-cast p1, Lcom/android/launcher3/CellLayout;

    goto :goto_ac

    :cond_ab
    move-object p1, v2

    :goto_ac
    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mCurrentCellLayout:Lcom/android/launcher3/CellLayout;

    if-nez p1, :cond_b1

    goto :goto_b9

    :cond_b1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_b9
    iput-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mPreviousClipState:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mCurrentCellLayout:Lcom/android/launcher3/CellLayout;

    if-nez p0, :cond_c0

    goto :goto_c3

    :cond_c0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_c3
    return-void
.end method

.method public destroy(Z)V
    .registers 7

    const-string v0, "Destroy, animate = "

    const-string v1, "ToggleBarLayoutUIController"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mCurrentCellLayout:Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_c

    goto :goto_17

    :cond_c
    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mPreviousClipState:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_17
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->animForDestroyUI()V

    goto :goto_20

    :cond_1d
    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->destroy(Z)V

    :goto_20
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->setPageIndicatorAlpha(ZZ)V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->requestLayoutCurrentPage()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

    if-nez v1, :cond_33

    const/4 v1, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;->getSelectInfo()Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;

    move-result-object v1

    :goto_37
    const/4 v2, 0x0

    if-nez v1, :cond_3b

    goto :goto_47

    :cond_3b
    invoke-virtual {v1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMColumn()I

    move-result v3

    iget-object v4, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ne v3, v4, :cond_47

    move v3, v0

    goto :goto_48

    :cond_47
    :goto_47
    move v3, v2

    :goto_48
    if-eqz v3, :cond_5b

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->getMRow()I

    move-result v1

    iget-object v3, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-eq v1, v3, :cond_55

    goto :goto_5b

    :cond_55
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->onToggleBarLayoutDestroy(Lcom/android/launcher/Launcher;Z)V

    goto :goto_72

    :cond_5b
    :goto_5b
    new-instance v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    new-instance v4, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;)V

    invoke-direct {v0, v1, v3, p1, v4}, Lcom/android/launcher/togglebar/LayoutSettingsHelper$PreviewGridChangedTask;-><init>(Landroid/content/Context;IILjava/lang/Runnable;)V

    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_72
    return-void
.end method

.method public getAdapter()Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarLayoutAdapter;

    return-object p0
.end method

.method public getContentLayoutId()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f0d021b

    goto :goto_d

    :cond_a
    const p0, 0x7f0d021a

    :goto_d
    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public getContentViewHeight()I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cbc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_23

    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cbb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_23
    return p0
.end method

.method public resume(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->resume(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p1, v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->setPageIndicatorAlpha$default(Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;ZZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    sget-object v0, Lz/a;->b:Lz/a;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->requestLayoutCurrentPage()V

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->onToggleBarLayoutResume(Lcom/android/launcher/Launcher;)V

    return-void
.end method
