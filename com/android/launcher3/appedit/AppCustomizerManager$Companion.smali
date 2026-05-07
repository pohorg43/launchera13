.class public final Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppCustomizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;-><init>()V

    return-void
.end method

.method private final getSInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/appedit/AppCustomizerManager;->access$getSInstance$delegate$cp()Ly2/e;

    move-result-object p0

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/appedit/AppCustomizerManager;

    return-object p0
.end method


# virtual methods
.method public final getInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/appedit/AppCustomizerManager$Companion;->getSInstance()Lcom/android/launcher3/appedit/AppCustomizerManager;

    move-result-object p0

    return-object p0
.end method

.method public final showPanelFragment(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;
    .registers 7

    const-string/jumbo p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "act"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsClickAppEdit()V

    if-nez p4, :cond_17

    const-string p0, ""

    goto :goto_18

    :cond_17
    move-object p0, p4

    :goto_18
    invoke-static {p0}, Lcom/android/launcher3/appedit/AppCustomizerManager;->access$setOldTitle$cp(Ljava/lang/String;)V

    new-instance p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p4, p2, p3, v0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setMainPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setIsShowInMaxHeight(Z)V

    invoke-virtual {p5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "bottom sheet"

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string/jumbo p1, "show "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppEdit"

    const-string p3, "AppCustomizerManager"

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
