.class public Lcom/android/wm/shell/splitscreen/DividerOrientation;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_SET_FORCE_DIVIDER_ORIENTATION:Ljava/lang/String; = "set_force_divider_orientation"

.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final sEnableForceHorizontalDivision:Z

.field private static final sEnableForceOrientation:Z

.field private static sForceOrientation:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "persist.sys.force_horizontal_division_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sEnableForceHorizontalDivision:Z

    const-string v0, "persist.sys.force_split_orientation_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sEnableForceOrientation:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sForceOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isForceDivision()Z
    .registers 1

    sget v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sForceOrientation:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isForceHorizontalDivisionMode()Z
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isForceVerticalDivision()Z
    .registers 2

    sget v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sForceOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isHorizontalDivision(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1c

    move p0, v1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    xor-int/2addr p0, v1

    return p0
.end method

.method public static reset()V
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sEnableForceOrientation:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1e

    :cond_f
    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayFoldObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/observer/DisplayFoldObserver;->isInnerScreen()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    sput v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sForceOrientation:I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static toggleDividerOrientation()V
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceDivision()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceVerticalDivision()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    sput v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sForceOrientation:I

    goto :goto_14

    :cond_11
    const/4 v0, 0x2

    sput v0, Lcom/android/wm/shell/splitscreen/DividerOrientation;->sForceOrientation:I

    :goto_14
    return-void
.end method
