.class public final synthetic Lcom/android/launcher/togglebar/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic b:F

.field public final synthetic c:Landroid/graphics/Matrix;

.field public final synthetic d:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Matrix;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/b;->a:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput p2, p0, Lcom/android/launcher/togglebar/b;->b:F

    iput-object p3, p0, Lcom/android/launcher/togglebar/b;->c:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/launcher/togglebar/b;->d:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/togglebar/b;->a:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget v1, p0, Lcom/android/launcher/togglebar/b;->b:F

    iget-object v2, p0, Lcom/android/launcher/togglebar/b;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/launcher/togglebar/b;->d:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->a([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FLandroid/graphics/Matrix;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
