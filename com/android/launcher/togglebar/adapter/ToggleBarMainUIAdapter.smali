.class public final Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;
.super Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;,
        Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter<",
        "Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;

.field private static final ICON_STYLE_INTENT_KEY:Ljava/lang/String; = "intent_from_launcher"

.field private static final TAG:Ljava/lang/String; = "ToggleBarMainUIAdapter"


# instance fields
.field private mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

.field private mCachedVH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;",
            ">;"
        }
    .end annotation
.end field

.field private mCardItemIndex:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShowingDialog:Landroid/app/Dialog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->Companion:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(launcher)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCardItemIndex:I

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-direct {p2, p1}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->enableRelateAppThenLaunch$lambda-3(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onBindViewHolder$lambda-1(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->enableRelateAppThenLaunch$lambda-4(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V

    return-void
.end method

.method private final changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    return-void
.end method

.method private final enableRelateAppThenLaunch(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oriIntent.`package`"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v2, Ly/b;

    invoke-direct {v2, v1, p1, p2, p3}, Ly/b;-><init>(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V

    invoke-static {v1, v0, v2, p1}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->getGrantDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    if-nez p1, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_22
    return-void
.end method

.method private static final enableRelateAppThenLaunch$lambda-3(Lcom/android/launcher/Launcher;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$oriIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static final enableRelateAppThenLaunch$lambda-4(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method private final getIconStyleActIntent()Landroid/content/Intent;
    .registers 3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oplus.uxdesign.icon.ACTION_UX_GUIDE_ACTIVITY"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "intent_from_launcher"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.oplus.uxdesign"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private final getWallpaperIntent()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oplus.wallpapers"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_from_tag"

    const-string v2, "extra_from_desktopwallpaper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "from"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private final judgmentResId(I)Z
    .registers 2

    const p0, 0x7f0a0552

    if-eq p0, p1, :cond_16

    const p0, 0x7f0a0553

    if-eq p0, p1, :cond_16

    const p0, 0x7f0a0550

    if-eq p0, p1, :cond_16

    const p0, 0x7f0a054f

    if-eq p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static final onBindViewHolder$lambda-1(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;ILandroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->itemClick(II)V

    return-void
.end method

.method private final startActivityForResultMBACompat(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.`package`"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->checkAppAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->enableRelateAppThenLaunch(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1a

    :cond_15
    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_1a
    return-void
.end method

.method private final tintViewByWallpaperBrightness(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;)V
    .registers 3

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0606f8

    goto :goto_f

    :cond_c
    const v0, 0x7f0606f9

    :goto_f
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMTitleTv()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->destroy()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public isPageViewHolder()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final itemClick(II)V
    .registers 6

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result v0

    if-eqz v0, :cond_148

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->getMHaveDoneDestroyAnim()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_148

    :cond_10
    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x7f0a0552

    if-eq v0, p1, :cond_25

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const-string v1, "ToggleBarMainUIAdapter"

    if-eqz v0, :cond_36

    const-string/jumbo p0, "onItemClick folder opened, no need handle click"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->resetGaussianAnimState()V

    const-string v0, "mLauncher.toggleBarManager.toggleBarContainer"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_14a

    goto/16 :goto_148

    :pswitch_47  #0x7f0a0554
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    if-nez p0, :cond_5e

    goto/16 :goto_148

    :cond_5e
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    goto/16 :goto_148

    :pswitch_64  #0x7f0a0553
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsClickWallpaperSetEntrance()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->getWallpaperIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x2713

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->startActivityForResultMBACompat(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_148

    :pswitch_94  #0x7f0a0552
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsClickSettingSetEntrance()V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const-class v1, Lcom/android/launcher/settings/LauncherSettingsActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 v1, 0x2711

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/launcher/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_148

    :pswitch_c9  #0x7f0a0551
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_db

    const-string p0, "layout return -> Workspace page is in transition"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_db
    new-instance p1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    goto :goto_148

    :pswitch_e6  #0x7f0a0550
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_101

    const-string p0, "Workspace page is in transition"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_101
    invoke-direct {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->getIconStyleActIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x2714

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mAppTransitionManager:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarContainer()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->startActivityForResultMBACompat(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_148

    :pswitch_11e  #0x7f0a054f
    new-instance p1, Lcom/android/launcher/togglebar/state/ToggleBarEffectState;

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarEffectState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsClickEffectSetEntrance()V

    goto :goto_148

    :pswitch_132  #0x7f0a054e
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->showOrDismissMainUIControllerToolTips(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->startWidgetSheetPanelOrCardStore(Landroid/view/View;)V

    :cond_148
    :goto_148
    return-void

    nop

    :pswitch_data_14a
    .packed-switch 0x7f0a054e
        :pswitch_132  #7f0a054e
        :pswitch_11e  #7f0a054f
        :pswitch_e6  #7f0a0550
        :pswitch_c9  #7f0a0551
        :pswitch_94  #7f0a0552
        :pswitch_64  #7f0a0553
        :pswitch_47  #7f0a0554
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;I)V
    .registers 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mItems[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/togglebar/item/ToggleBarItem;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMTitleTv()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const v3, 0x7f120548

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    iput p2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCardItemIndex:I

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v1

    if-nez v1, :cond_69

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;->getMTitleTv()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    const v3, 0x7f12054f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_69
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getViewId()I

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    :cond_81
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/launcher/guide/side/a;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/guide/side/a;-><init>(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;
    .registers 6

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p2

    if-eqz p2, :cond_10

    const p2, 0x7f0d0215

    goto :goto_13

    :cond_10
    const p2, 0x7f0d0214

    :goto_13
    new-instance v0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    iget-object v1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "mLayoutInflater.inflate(…rLayoutId, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->tintViewByWallpaperBrightness(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;)V

    return-object v0
.end method

.method public final onMainUIDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method public final onWallpaperBrightnessChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mCachedVH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->tintViewByWallpaperBrightness(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter$MainUiVH;)V

    goto :goto_6

    :cond_1b
    return-void
.end method

.method public final startWidgetSheetPanelOrCardStore(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1e

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_1e
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isFirstTimeClickCardEntry()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_3a
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-nez p1, :cond_4e

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_4e
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_60

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_60
    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager;->requestPullConfig()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_6e

    goto :goto_73

    :cond_6e
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    :goto_73
    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_7d

    goto :goto_88

    :cond_7d
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    if-nez p1, :cond_84

    goto :goto_88

    :cond_84
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    :goto_88
    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_8d

    goto :goto_9e

    :cond_8d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_94

    goto :goto_9e

    :cond_94
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_9b

    goto :goto_9e

    :cond_9b
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :goto_9e
    return-void
.end method
