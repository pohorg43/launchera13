.class public final Lcom/android/launcher3/model/data/WorkspaceItemInfoExtFoldScreenImpl;
.super Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetComponent(Landroid/content/ComponentName;Lcom/android/launcher3/model/data/WorkspaceItemInfo;ILandroid/content/Intent;)Landroid/content/ComponentName;
    .registers 6

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_17

    invoke-static {p2}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    if-ne p3, v0, :cond_17

    if-eqz p4, :cond_17

    invoke-static {p4}, Lcom/android/launcher3/model/OplusWorkspaceItemInfoInjector;->injectGetTargetComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;->getTargetComponent(Landroid/content/ComponentName;Lcom/android/launcher3/model/data/WorkspaceItemInfo;ILandroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
