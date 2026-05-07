.class public abstract Lcom/android/launcher3/touch/OplusBaseSwipeDetector;
.super Lcom/android/launcher3/touch/BaseSwipeDetector;
.source ""


# static fields
.field private static final MAX_VELOCITY:I = 0x1770


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/touch/BaseSwipeDetector;-><init>(Landroid/content/Context;Landroid/view/ViewConfiguration;Z)V

    const p1, 0x45bb8000  # 6000.0f

    iput p1, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mMaxVelocity:F

    return-void
.end method
