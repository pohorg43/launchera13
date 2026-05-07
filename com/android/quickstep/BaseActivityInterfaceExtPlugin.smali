.class public final Lcom/android/quickstep/BaseActivityInterfaceExtPlugin;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/BaseActivityInterfaceExtPlugin;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/BaseActivityInterfaceExtPlugin;

    invoke-direct {v0}, Lcom/android/quickstep/BaseActivityInterfaceExtPlugin;-><init>()V

    sput-object v0, Lcom/android/quickstep/BaseActivityInterfaceExtPlugin;->INSTANCE:Lcom/android/quickstep/BaseActivityInterfaceExtPlugin;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final updateTaskDimension(Landroid/graphics/PointF;Lcom/android/launcher3/DeviceProfile;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "out"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_26

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_26

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/PointF;->y:F

    sub-float p1, v0, v1

    iput p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/PointF;->y:F

    :cond_26
    return-void
.end method
