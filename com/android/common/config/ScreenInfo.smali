.class public final Lcom/android/common/config/ScreenInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/config/ScreenInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/config/ScreenInfo$Companion;

.field private static final DISABLE_HIDE_GESTURE_BAR:I = 0x1

.field private static final HIDE_GESTURE_BAR_STRING:Ljava/lang/String; = "hide_gesture_bar_enable"

.field public static final HIDE_NAVIGATIONBAR_ENABLE:Ljava/lang/String; = "hide_navigationbar_enable"

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_1:I = 0x1

.field public static final ROTATION_2:I = 0x2

.field public static final ROTATION_3:I = 0x3

.field private static final SLID_SLIP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ScreenInfo"

.field private static final UP_SLIP:I = 0x2

.field public static densityDpi:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static hasNavigationBar:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static navHeightInGesture:I

.field private static navHeightInVirtualKey:I

.field public static realScreenHeight:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static realScreenWidth:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static rotation:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static sRealStatusBarHeight:I

.field public static screenHeight:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static screenWidth:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/config/ScreenInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/config/ScreenInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/android/common/config/ScreenInfo;->sRealStatusBarHeight:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNavHeightInGesture$cp()I
    .registers 1

    sget v0, Lcom/android/common/config/ScreenInfo;->navHeightInGesture:I

    return v0
.end method

.method public static final synthetic access$getNavHeightInVirtualKey$cp()I
    .registers 1

    sget v0, Lcom/android/common/config/ScreenInfo;->navHeightInVirtualKey:I

    return v0
.end method

.method public static final synthetic access$getSRealStatusBarHeight$cp()I
    .registers 1

    sget v0, Lcom/android/common/config/ScreenInfo;->sRealStatusBarHeight:I

    return v0
.end method

.method public static final synthetic access$setNavHeightInGesture$cp(I)V
    .registers 1

    sput p0, Lcom/android/common/config/ScreenInfo;->navHeightInGesture:I

    return-void
.end method

.method public static final synthetic access$setNavHeightInVirtualKey$cp(I)V
    .registers 1

    sput p0, Lcom/android/common/config/ScreenInfo;->navHeightInVirtualKey:I

    return-void
.end method

.method public static final synthetic access$setSRealStatusBarHeight$cp(I)V
    .registers 1

    sput p0, Lcom/android/common/config/ScreenInfo;->sRealStatusBarHeight:I

    return-void
.end method

.method public static final checkForNavMode(Lcom/android/launcher/Launcher;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->checkForNavMode(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static final getFoldingMode()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0}, Lcom/android/common/config/ScreenInfo$Companion;->getFoldingMode()I

    move-result v0

    return v0
.end method

.method public static final getNavBarHeightByWindowInsets(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getNavigationBarHeight(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static final getRealNavigationBarHeight(Landroid/content/Context;Z)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/config/ScreenInfo$Companion;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public static final getRealStatusBarHeight(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getStatusBarHeight(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getStatusBarHeightByWindowInsets(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getStatusBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final initScreenData(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->initScreenData(Landroid/content/Context;)V

    return-void
.end method

.method public static final isFoldScreenExpanded()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0}, Lcom/android/common/config/ScreenInfo$Companion;->isFoldScreenExpanded()Z

    move-result v0

    return v0
.end method

.method public static final isLandscape(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->isLandscape(I)Z

    move-result p0

    return p0
.end method

.method public static final isLandscape(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isNarBarShowingInNavMode(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->isNarBarShowingInNavMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isNavBarHidden(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->isNavBarHidden(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isSupportContentIndentation(Landroid/app/Activity;)Z
    .registers 2
    .annotation build Landroidx/window/core/ExperimentalWindowApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->isSupportContentIndentation(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static final isSupportHighRefreshRate(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->isSupportHighRefreshRate(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
