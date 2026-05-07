.class public interface abstract Lcom/android/launcher/shimmer/IShimmerView;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract clearShimmerData()V
.end method

.method public abstract getIdentity()I
.end method

.method public abstract getShimmerRect()Landroid/graphics/Rect;
.end method

.method public abstract isShimmerViewShowingNow()Z
.end method

.method public abstract postInvalidate()V
.end method

.method public abstract setIdentity(I)V
.end method

.method public abstract startShimmer(Ljava/util/function/Function;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher/shimmer/IShimmerView;",
            "Lcom/android/launcher/shimmer/ShimmerDrawable;",
            ">;)V"
        }
    .end annotation
.end method
