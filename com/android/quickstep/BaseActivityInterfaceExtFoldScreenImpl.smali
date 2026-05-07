.class public final Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl;
.super Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl$Companion;

.field private static final TASK_SIZE_SCALE:F = 0.5f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl;->Companion:Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl$Companion;

    return-void
.end method

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

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_11

    iget-boolean p0, p2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_11

    const/high16 p1, 0x3f000000  # 0.5f

    :cond_11
    return p1
.end method
