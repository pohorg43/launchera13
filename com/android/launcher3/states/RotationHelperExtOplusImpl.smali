.class public Lcom/android/launcher3/states/RotationHelperExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/states/IRotationHelperExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/states/IRotationHelperExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/states/IRotationHelperExt;",
        ">;"
    }
.end annotation


# instance fields
.field private mHost:Lcom/android/launcher3/states/RotationHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/states/IRotationHelperExt;
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/states/RotationHelper;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/launcher3/states/RotationHelper;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->mHost:Lcom/android/launcher3/states/RotationHelper;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/states/IRotationHelperExt;

    move-result-object p0

    return-object p0
.end method

.method public final getMHost()Lcom/android/launcher3/states/RotationHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->mHost:Lcom/android/launcher3/states/RotationHelper;

    return-object p0
.end method

.method public onNotifyChange(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->mHost:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/states/RotationHelper;->getWrapper()Lcom/android/launcher3/states/IRotationHelperWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/states/IRotationHelperWrapper;->getLastActivityFlags()I

    move-result v0

    if-ne p1, v0, :cond_11

    if-eqz p2, :cond_62

    :cond_11
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "notifyChange(), activityFlags="

    const-string v2, ", lastActivityFlags="

    const-string v3, ",forceNotify="

    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", caller="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RotationHelper"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    iget-object p2, p0, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->mHost:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/states/RotationHelper;->getWrapper()Lcom/android/launcher3/states/IRotationHelperWrapper;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/launcher3/states/IRotationHelperWrapper;->setLastActivityFlags(I)V

    iget-object p0, p0, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->mHost:Lcom/android/launcher3/states/RotationHelper;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/states/RotationHelper;->getWrapper()Lcom/android/launcher3/states/IRotationHelperWrapper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/states/IRotationHelperWrapper;->getActivity()Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Landroid/app/Activity;

    if-eqz p2, :cond_5b

    check-cast p0, Landroid/app/Activity;

    goto :goto_5c

    :cond_5b
    const/4 p0, 0x0

    :goto_5c
    if-nez p0, :cond_5f

    goto :goto_62

    :cond_5f
    invoke-static {p0, p1}, Lcom/android/launcher3/util/UiThreadHelper;->setOrientationAsync(Landroid/app/Activity;I)V

    :cond_62
    :goto_62
    return-void
.end method

.method public final setMHost(Lcom/android/launcher3/states/RotationHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelperExtOplusImpl;->mHost:Lcom/android/launcher3/states/RotationHelper;

    return-void
.end method
