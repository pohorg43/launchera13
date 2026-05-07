.class public final synthetic Lcom/android/launcher/togglebar/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;


# instance fields
.field public final synthetic a:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic b:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

.field public final synthetic c:Landroid/graphics/Matrix;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:Landroid/graphics/RectF;

.field public final synthetic f:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/a;->a:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/android/launcher/togglebar/a;->b:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iput-object p3, p0, Lcom/android/launcher/togglebar/a;->c:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/launcher/togglebar/a;->d:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/launcher/togglebar/a;->e:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/android/launcher/togglebar/a;->f:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher/togglebar/a;->a:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v1, p0, Lcom/android/launcher/togglebar/a;->b:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;

    iget-object v2, p0, Lcom/android/launcher/togglebar/a;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/launcher/togglebar/a;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher/togglebar/a;->e:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/launcher/togglebar/a;->f:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->a([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method
