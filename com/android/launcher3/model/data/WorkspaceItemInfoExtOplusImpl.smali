.class public Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/model/data/IWorkspaceItemInfoExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/model/data/IWorkspaceItemInfoExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/model/data/IWorkspaceItemInfoExt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/model/data/IWorkspaceItemInfoExt;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfoExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/model/data/IWorkspaceItemInfoExt;

    move-result-object p0

    return-object p0
.end method

.method public getTargetComponent(Landroid/content/ComponentName;Lcom/android/launcher3/model/data/WorkspaceItemInfo;ILandroid/content/Intent;)Landroid/content/ComponentName;
    .registers 5

    const-string p0, "info"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_17

    const/4 p0, 0x6

    if-ne p3, p0, :cond_17

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_17
    return-object p1
.end method
