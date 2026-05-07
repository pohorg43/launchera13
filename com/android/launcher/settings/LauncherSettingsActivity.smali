.class public final Lcom/android/launcher/settings/LauncherSettingsActivity;
.super Lcom/android/launcher/OplusBaseAppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherSettingsActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/settings/LauncherSettingsActivity$Companion;

.field public static final EXTRA_OPLUS_FROM_MAIN_PAGE:Ljava/lang/String; = ":settings:oplus_from_main_page"

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "SETTINGS_FRAGMENT"

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsActivity"


# instance fields
.field private mFragment:Lcom/android/launcher/settings/LauncherSettingsFragment;

.field private mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

.field private mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/settings/LauncherSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsActivity;->Companion:Lcom/android/launcher/settings/LauncherSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/OplusBaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public onBackPressed()V
    .registers 5

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ":settings:oplus_from_main_page"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/util/IntentUtils$Companion;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "onBackPressed(), fromMainPage="

    const-string v2, "LauncherSettingsActivity"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_29
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Lcom/android/launcher/OplusBaseAppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "SETTINGS_FRAGMENT"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/settings/LauncherSettingsFragment;

    goto :goto_2b

    :cond_26
    new-instance p1, Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-direct {p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;-><init>()V

    :goto_2b
    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;->mFragment:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {p0}, Lcom/android/common/util/ToolbarUtils;->setStatusBarTransparentAndBlackFont(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->initNavigationBar(Landroid/content/Context;Landroid/view/Window;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->initToolbarWindow(Landroid/app/Activity;ZZ)V

    const p1, 0x7f0a024e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->adjustNavigationBar(Landroid/app/Activity;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;->mSupportFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;->mFragment:Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    new-instance p1, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-direct {p1, p0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;->mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;->mPresenter:Lcom/android/launcher/settings/SimpleModeSettingsPresenter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/settings/SimpleModeSettingsPresenter;->onDestroy()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
