.class public final Lcom/android/quickstep/BaseActivityInterfaceExtTabletImpl;
.super Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public updateTaskSizeScale(FLcom/android/launcher3/DeviceProfile;)F
    .registers 3

    const-string p0, "dp"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p0, 0x3f000000  # 0.5f

    return p0
.end method
