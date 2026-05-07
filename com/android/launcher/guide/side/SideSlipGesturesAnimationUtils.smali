.class public Lcom/android/launcher/guide/side/SideSlipGesturesAnimationUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SCALE_0:F = 0.0f

.field private static final SCALE_1:F = 1.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlphaZoomInAnimation()Landroid/view/animation/Animation;
    .registers 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method

.method public static createAlphaZoomOutAnimation()Landroid/view/animation/Animation;
    .registers 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method
