.class public final Lcom/android/launcher3/states/RotationHelperExtFoldScreenImpl;
.super Lcom/android/launcher3/states/RotationHelperExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyChange(IZ)V
    .registers 4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->onNotifyChange(IZ)V

    goto :goto_e

    :cond_a
    const/4 p1, 0x2

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->onNotifyChange(IZ)V

    :goto_e
    return-void
.end method
