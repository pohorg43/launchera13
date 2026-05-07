.class public final Lcom/android/launcher/guide/side/LearningGesturesActivity;
.super Lcom/android/launcher/OplusBaseAppCompatActivity;
.source ""

# interfaces
.implements Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/side/LearningGesturesActivity$Companion;
    }
.end annotation


# static fields
.field private static final CLICK_SLOP_TIME:J = 0x3e8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/android/launcher/guide/side/LearningGesturesActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "LearningGesturesActivity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private hasConfigurationChangeInvoked:Z

.field private mAdapter:Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

.field private final mAppBarLayout$delegate:Ly2/e;

.field private mOverlayChangedListener:Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;

.field private final mRecyclerView$delegate:Ly2/e;

.field private final mToolbar$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/side/LearningGesturesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/side/LearningGesturesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->Companion:Lcom/android/launcher/guide/side/LearningGesturesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/OplusBaseAppCompatActivity;-><init>()V

    const v0, 0x7f0a041a

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->bindView(I)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mRecyclerView$delegate:Ly2/e;

    const v0, 0x7f0a0558

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->bindView(I)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mToolbar$delegate:Ly2/e;

    const v0, 0x7f0a00a9

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->bindView(I)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mAppBarLayout$delegate:Ly2/e;

    new-instance v0, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;-><init>(Lcom/android/launcher/guide/side/LearningGesturesActivity;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mOverlayChangedListener:Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;

    return-void
.end method

.method public static final synthetic access$getHasConfigurationChangeInvoked$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->hasConfigurationChangeInvoked:Z

    return p0
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/android/launcher/guide/side/LearningGesturesActivity;)Lcom/android/launcher/guide/side/GuideLearningViewAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mAdapter:Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/guide/side/LearningGesturesActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->initToolBar$lambda-0(Lcom/android/launcher/guide/side/LearningGesturesActivity;Landroid/view/View;)V

    return-void
.end method

.method private final bindView(I)Ly2/e;
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Ly2/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/side/LearningGesturesActivity$bindView$1;-><init>(Lcom/android/launcher/guide/side/LearningGesturesActivity;I)V

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p0

    return-object p0
.end method

.method private final getMAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mAppBarLayout$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method private final getMRecyclerView()Landroidx/recyclerview/widget/COUIRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mRecyclerView$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method private final getMToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mToolbar$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method private final initRecyclerView()V
    .registers 4

    new-instance v0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mAdapter:Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->setOnItemClickListener(Lcom/android/launcher/guide/side/GuideLearningViewAdapter$OnRecycleItemClickListener;)V

    new-instance v0, Lcom/android/launcher/guide/side/LearningGesuresGridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/guide/side/LearningGesuresGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/side/LearningGesuresGridLayoutManager;->setScrollEnabled(Z)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->getMRecyclerView()Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->getMRecyclerView()Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mAdapter:Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

    if-nez p0, :cond_30

    const-string p0, "mAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_30
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private final initToolBar()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->getMToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v0

    const v1, 0x7f12038d

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->getMToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->getMToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/v;

    invoke-direct {v1, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/guide/side/LearningGesturesActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_24

    goto :goto_28

    :cond_24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_28
    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->getMAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    sget-object v1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v1, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private static final initToolBar$lambda-0(Lcom/android/launcher/guide/side/LearningGesturesActivity;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    const-string p0, "LearningGesturesActivity"

    const-string p1, "attachBaseContext"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(I)V
    .registers 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "onClick item position:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "LearningGesturesActivity"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isQuickClick(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    if-nez p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_21

    :cond_1f
    add-int/lit8 p1, p1, 0x2

    :goto_21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->startGuidePage(Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->initToolBar()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->initRecyclerView()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->hasConfigurationChangeInvoked:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "GesturesGuide"

    const-string v0, "LearningGesturesActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0d00fc

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/android/common/util/ToolbarUtils;->setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->initToolbarWindow(Landroid/app/Activity;ZZ)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->initNavigationBar(Landroid/content/Context;Landroid/view/Window;)V

    sget-object p1, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/learning/NotificationHelper;->cancelNotification()V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_36

    sget-object p1, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mOverlayChangedListener:Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;

    invoke-virtual {p1, p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->registerChangedListener(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;)V

    :cond_36
    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "GesturesGuide"

    const-string v1, "LearningGesturesActivity"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    iget-object p0, p0, Lcom/android/launcher/guide/side/LearningGesturesActivity;->mOverlayChangedListener:Lcom/android/launcher/guide/side/LearningGesturesActivity$mOverlayChangedListener$1;

    invoke-virtual {v0, p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->unregisterChangedListener(Lcom/oplus/launcher/overlay/RROverlayManager$OnOverlayChangedListener;)V

    :cond_1c
    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->initToolBar()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/LearningGesturesActivity;->initRecyclerView()V

    return-void
.end method
