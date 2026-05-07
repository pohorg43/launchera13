.class public Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/IBaseActivityInterfaceExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/IBaseActivityInterfaceExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/quickstep/IBaseActivityInterfaceExt;",
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
.method public createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/IBaseActivityInterfaceExt;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/IBaseActivityInterfaceExt;

    move-result-object p0

    return-object p0
.end method

.method public updateTaskSizeScale(FLcom/android/launcher3/DeviceProfile;)F
    .registers 3

    const-string p0, "dp"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return p1
.end method
