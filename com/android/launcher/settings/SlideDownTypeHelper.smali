.class public final Lcom/android/launcher/settings/SlideDownTypeHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field private static final FIRST_SLIDE_DOWN_DIALOG_SHOW:Ljava/lang/String; = "first_slide_down_dialog_show"

.field public static final INSTANCE:Lcom/android/launcher/settings/SlideDownTypeHelper;

.field public static final KEY_SLIDE_DOWN_TYPE:Ljava/lang/String; = "launcher_slide_down_type"

.field public static final KEY_SLIDE_DOWN_TYPE_SIMPLE:Ljava/lang/String; = "launcher_slide_down_type_simple"

.field public static final SLIDE_DOWN_TO_GLOBAL_SEARCH:I = 0x5

.field public static final SLIDE_DOWN_TO_HIASSISTANT:I = 0x7

.field public static final SLIDE_DOWN_TO_NOTIFICATION_CENTER:I = 0x6

.field public static final SLIDE_DOWN_TO_SHELF:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SlideDownTypeHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/settings/SlideDownTypeHelper;

    invoke-direct {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/settings/SlideDownTypeHelper;->INSTANCE:Lcom/android/launcher/settings/SlideDownTypeHelper;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/settings/SlideDownTypeHelper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final convertToNewValue(I)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "convertToNewValue, oldValue = "

    const-string v1, "SlideDownTypeHelper"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    goto :goto_18

    :cond_d
    const/4 p0, 0x6

    goto :goto_18

    :cond_f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x4

    goto :goto_18

    :cond_17
    const/4 p0, 0x5

    :goto_18
    return p0
.end method

.method public static final getOldSlideDownTypeForBreeno(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_d

    return p0

    :cond_d
    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method private static final getSlideDownType(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_e

    const-string v0, "launcher_slide_down_type_simple"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    goto :goto_28

    :cond_e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSlideStatusBarAsDefault()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_22

    :cond_15
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez v0, :cond_21

    const/4 v1, 0x4

    goto :goto_22

    :cond_21
    const/4 v1, 0x5

    :goto_22
    const-string v0, "launcher_slide_down_type"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    :goto_28
    return p0
.end method

.method public static final getSlideDownTypeWithCheck(Landroid/content/Context;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/settings/SlideDownTypeHelper;->INSTANCE:Lcom/android/launcher/settings/SlideDownTypeHelper;

    invoke-static {p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownType(Landroid/content/Context;)I

    move-result p0

    sget-boolean v1, Lcom/android/launcher/settings/SlideDownTypeHelper;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "getSlideDownTypeWithCheck, value = "

    const-string v2, "SlideDownTypeHelper"

    invoke-static {p0, v1, v2}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-direct {v0, p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isNewVersionValue(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return p0

    :cond_1d
    invoke-static {p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->convertToNewValue(I)I

    move-result p0

    return p0
.end method

.method private final isNewVersionValue(I)Z
    .registers 2

    const/4 p0, 0x1

    if-le p1, p0, :cond_4

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static final isSimpleModeFor131()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static final setSlideDownDialogHasShowed(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "first_slide_down_dialog_show"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setSlideDownTypeWithCheck(Landroid/content/Context;I)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/settings/SlideDownTypeHelper;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "setSlideDownTypeWithCheck, value = "

    const-string v1, "SlideDownTypeHelper"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_11
    sget-object v0, Lcom/android/launcher/settings/SlideDownTypeHelper;->INSTANCE:Lcom/android/launcher/settings/SlideDownTypeHelper;

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "launcher_slide_down_type_simple"

    goto :goto_1e

    :cond_1c
    const-string v1, "launcher_slide_down_type"

    :goto_1e
    invoke-direct {v0, p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isNewVersionValue(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_28
    invoke-static {p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->convertToNewValue(I)I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static final slideDownDialogHasShownForShelf(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "first_slide_down_dialog_show"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
