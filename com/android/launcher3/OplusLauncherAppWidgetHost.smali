.class public Lcom/android/launcher3/OplusLauncherAppWidgetHost;
.super Lcom/android/launcher3/widget/LauncherAppWidgetHost;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusLauncherAppWidgetHost"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deleteAppWidgetId(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "deleteAppWidgetId, userUnlocked = "

    const-string v2, "OplusLauncherAppWidgetHost"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method

.method public deleteHost()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "deleteHost, userUnlocked = "

    const-string v2, "OplusLauncherAppWidgetHost"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    return-void
.end method

.method public doStartListening()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->doStartListening()V

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1f

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    instance-of v2, v1, Lcom/android/launcher/widget/OplusUserLockedAppWidgetHostView;

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public getAllLauncherAppWidgetHostView()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getAppWidgetIds()[I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "setListenIfResumed, userUnlocked = "

    const-string v2, "OplusLauncherAppWidgetHost"

    invoke-static {v1, v0, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez v0, :cond_14

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    :cond_14
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object p0

    return-object p0
.end method

.method public reInflateAllHostView()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method
