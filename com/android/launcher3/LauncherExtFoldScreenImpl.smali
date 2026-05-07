.class public final Lcom/android/launcher3/LauncherExtFoldScreenImpl;
.super Lcom/android/launcher3/LauncherExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/LauncherExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAllOpenViewsOnStateSetStart(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/LauncherState;ZZ)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1b

    if-nez p4, :cond_1b

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result p2

    xor-int/2addr p0, p2

    const/high16 p2, 0x300000

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    goto :goto_1e

    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherExtOplusImpl;->closeAllOpenViewsOnStateSetStart(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/LauncherState;ZZ)V

    :goto_1e
    return-void
.end method

.method public closeOpenViewsInStartBinding(Lcom/android/launcher3/views/ActivityContext;ZZ)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    if-nez p3, :cond_11

    const/4 p0, 0x1

    const p2, 0x77a274

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void

    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherExtOplusImpl;->closeOpenViewsInStartBinding(Lcom/android/launcher3/views/ActivityContext;ZZ)V

    return-void
.end method

.method public closeOpenViewsInonSaveInstanceState(Lcom/android/launcher3/views/ActivityContext;ZZLandroid/os/Bundle;)V
    .registers 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "outState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher.all_apps.from_configurationchange"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz p2, :cond_22

    if-nez p3, :cond_22

    if-eqz v2, :cond_22

    const p0, 0x77a274

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherExtOplusImpl;->closeOpenViewsInonSaveInstanceState(Lcom/android/launcher3/views/ActivityContext;ZZLandroid/os/Bundle;)V

    return-void
.end method

.method public onIdpChangeBeforeOnSaveInstance(Landroid/os/Bundle;)V
    .registers 3

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher.all_apps.from_configurationchange"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
